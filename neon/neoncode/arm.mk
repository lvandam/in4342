BASE_TOOLCHAIN=/opt/bbToolChain/usr/local/share/codesourcery
CC=$(BASE_TOOLCHAIN)/bin/arm-none-linux-gnueabi-g++
BEAGLE_DIR=/home/root/esLAB/zdanilo/neon

SRCS=meanshift.cpp main.cpp
OBJS=$(SRCS:%.cpp=%.o)
EXEC=armMeanshiftExec

LDFLAGS=-lpthread -lm --sysroot=/opt/rootfs
LIBS=-lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_ml -lopencv_video \
	-lopencv_features2d -lopencv_calib3d -lopencv_objdetect -lopencv_contrib -lopencv_legacy -lopencv_flann

DEFS=-DARMCC
INCLUDES=-I. -I$(BASE_TOOLCHAIN)/include
CFLAGS=$(DEFS) $(INCLUDES)          \
	  -Wall -O3 -Wfatal-errors 		\
	  --sysroot=/opt/rootfs			\
      -mlittle-endian               \
      -march=armv5t                 \
      -mtune=arm9tdmi               \
      -msoft-float                  \
      -Uarm                         \
      -marm                         \
      -Wno-trigraphs                \
      -fno-strict-aliasing          \
      -fno-common                   \
      -fno-omit-frame-pointer       \
      -mapcs                        \
      -mabi=aapcs-linux							\
			-mfloat-abi=softfp 						\
			-mfpu=neon

all: clean $(EXEC)


$(EXEC): $(OBJS)
	$(CC) -o $@ $(OBJS) $(LIBS) $(LDFLAGS)

%.o : %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean all
clean:
	rm -f $(OBJS) $(EXEC) tracking_result.avi *~

send:
		echo "Sending $(EXEC) to Beagleboard ... "
		scp ./$(EXEC) root@88.202.161.61:$(BEAGLE_DIR)/.
