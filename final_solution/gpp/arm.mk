BASE_TOOLCHAIN=/opt/bbToolChain/usr/local/share/codesourcery

CC=$(BASE_TOOLCHAIN)/bin/arm-none-linux-gnueabi-g++

C_CC=$(BASE_TOOLCHAIN)/bin/arm-none-linux-gnueabi-gcc

DSPLINK=/opt/bbToolChain/usr/local/share/bbframework/platform/beagle-linux/tools/dsplink_linux_1_65_00_03

C_SRCS=dspInter.c
C_OBJDIR=./ofiles
C_OBJS=$(SRCS:%.c=%.o)
C_CFLAGS= -DDSP -DDEBUG
C_DEBUG= -g -DDDSP_DEBUG -D__DEBUG

C_LIBS= $(DSPLINK)/gpp/BUILD/EXPORT/DEBUG/dsplink.lib

C_INCLUDES= -I$(DSPLINK)/gpp/inc                   \
            -I$(DSPLINK)/gpp/inc/usr               \
            -I$(DSPLINK)/gpp/inc/sys/Linux         \
            -I$(DSPLINK)/gpp/inc/sys/Linux/2.6.18  \
            #-I$(BASE_TOOLCHAIN)/arm-none-linux-gnueabi/libc/usr/include \
            -I$(BASE_TOOLCHAIN)/include            \
            -I./

C_ALL_CFLAGS=  $(C_INCLUDES)                \
              -mlittle-endian               \
              -march=armv5t                 \
              -mtune=arm9tdmi               \
              -msoft-float                  \
              -Uarm                         \
              -Wdeclaration-after-statement \
              -marm -Wall                   \
              -Wstrict-prototypes           \
              -Wno-trigraphs                \
              -fno-strict-aliasing          \
              -fno-common                   \
              -fno-omit-frame-pointer       \
              -mapcs                        \
              -c                            \
              -mabi=aapcs-linux             \
              -O                            \
              $(C_CFLAGS)

C_DEFS=        -DOS_LINUX            \
               -DMAX_DSPS=1          \
               -DMAX_PROCESSORS=2    \
               -DID_GPP=1            \
               -DOMAPL1XX            \
               -DPROC_COMPONENT      \
               -DPOOL_COMPONENT      \
               -DNOTIFY_COMPONENT    \
               -DMPCS_COMPONENT      \
               -DRINGIO_COMPONENT    \
               -DMPLIST_COMPONENT    \
               -DMSGQ_COMPONENT      \
               -DMSGQ_ZCPY_LINK      \
               -DCHNL_COMPONENT      \
               -DCHNL_ZCPY_LINK      \
               -DZCPY_LINK           \
               -DKFILE_DEFAULT       \
			   -DDET_TIMING          \
               -DDA8XXGEM            \
               -DDA8XXGEM_PHYINTERFACE=SHMEM_INTERFACE

SRCS=meanshift.cpp main.cpp
OBJS=$(SRCS:%.cpp=%.o)
EXEC=armMeanshiftExec

LDFLAGS=-lpthread -lm --sysroot=/opt/rootfs
LIBS=-lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_ml -lopencv_video \
	-lopencv_features2d -lopencv_calib3d -lopencv_objdetect -lopencv_contrib -lopencv_legacy -lopencv_flann

DEFS=    	   -DARMCC \
         	   -DOS_LINUX            \
               -DMAX_DSPS=1          \
               -DMAX_PROCESSORS=2    \
               -DID_GPP=1            \
               -DOMAPL1XX            \
               -DPROC_COMPONENT      \
               -DPOOL_COMPONENT      \
               -DNOTIFY_COMPONENT    \
               -DMPCS_COMPONENT      \
               -DRINGIO_COMPONENT    \
               -DMPLIST_COMPONENT    \
               -DMSGQ_COMPONENT      \
               -DMSGQ_ZCPY_LINK      \
               -DCHNL_COMPONENT      \
               -DCHNL_ZCPY_LINK      \
               -DZCPY_LINK           \
               -DKFILE_DEFAULT       \
			   -DDET_TIMING          \
               -DDA8XXGEM            \
               -DDA8XXGEM_PHYINTERFACE=SHMEM_INTERFACE


INCLUDES=-I. -I$(BASE_TOOLCHAIN)/include        \
         -I$(DSPLINK)/gpp/inc                   \
         -I$(DSPLINK)/gpp/inc/usr               \
         -I$(DSPLINK)/gpp/inc/sys/Linux         \
         -I$(DSPLINK)/gpp/inc/sys/Linux/2.6.18

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
      -mabi=aapcs-linux \
      -mfloat-abi=softfp -mfpu=neon
all: clean dspInter.o $(EXEC)


$(EXEC): $(OBJS) $(C_OBJS)
	$(CC) -o $@ $(OBJS) dspInter.o $(LIBS) $(C_LIBS) $(LDFLAGS)

%.o : %.c
	$(C_CC) $(C_DEBUG) $(C_DEFS) $(C_ALL_CFLAGS) -o$@ $<

%.o : %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean all
clean:
	rm -f $(OBJS) $(EXEC) tracking_result.avi *~
