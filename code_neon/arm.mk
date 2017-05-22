BASE_TOOLCHAIN=/data/bbToolChain/usr/local/share/codesourcery
CC=$(BASE_TOOLCHAIN)/bin/arm-none-linux-gnueabi-g++

SRCS=meanshift.cpp main.cpp
OBJS=$(SRCS:%.cpp=%.o)
EXEC=armMeanshiftExec

LDFLAGS=-lpthread -lm --sysroot=/data/rootfs
LIBS=-lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_ml -lopencv_video \
	-lopencv_features2d -lopencv_calib3d -lopencv_objdetect -lopencv_contrib -lopencv_legacy -lopencv_flann

DEFS=-DARMCC
INCLUDES=-I. -I$(BASE_TOOLCHAIN)/include
CFLAGS=$(DEFS) $(INCLUDES)          \
	  -Wall -O3 -Wfatal-errors 		\
	  --sysroot=/data/rootfs		\
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
      -mabi=aapcs-linux				\
      -mfloat-abi=softfp 			\
      -mfpu=neon					

all: clean $(EXEC)

$(EXEC): $(OBJS)
	$(CC) -o $@ $(OBJS) $(LIBS) $(LDFLAGS)

%.o : %.cpp
	$(CC) $(CFLAGS) -c $< -o $@ 

send:
	scp $(EXEC) root@88.202.161.61:/home/root/esLAB/danielle/helloDSP/.



.PHONY: clean all
clean:
	rm -f $(OBJS) $(EXEC) tracking_result.avi *~
