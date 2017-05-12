BEAGLE_DIR=/home/root/esLAB/danilo/neonTest
#CC=gcc
CC=/opt/bbToolChain/usr/local/share/codesourcery/bin/arm-none-linux-gnueabi-gcc


CFLAGS=-O3 -mcpu=cortex-a8 -mfloat-abi=softfp -mfpu=neon
LDFLAGS=-lm 
CSRCS := matrixmult.c Timer.c
#OBJS=main.o
EXEC=exec

# CFLAGS= -O3 -Wall -DPROFILE -mfloat-abi=softfp -mfpu=neon
# LIBS= -lm
# LDFLAGS=
# EXEC = matMultNeon
OBJS = $(CSRCS:.c=.o)

# Remote directories

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $?

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

send: 
	echo "Sending $(EXEC) to Beagleboard ... "
	scp ./$(EXEC) root@88.202.161.61:$(BEAGLE_DIR)/.

run:
	./$(EXEC)

clean:
	@-rm -rf $(EXEC) $(OBJS) gmon.out *~ 

