CC=gcc
# Use the following (instead of gcc) for arm compiler on ES Lab Server
# CC=/opt/bbToolChain/usr/local/share/codesourcery/bin/arm-none-linux-gnueabi-gcc
CFLAGS= -O3 -Wall
LIBS= -lm
LDFLAGS=
EXEC = matMult
CSRCS = matrixmult.c Timer.c
OBJS = $(CSRCS:.c=.o)
CMD=./$(EXEC)

PIN_DIR=$(PIN_ROOT)
MCPROF_DIR=$(MCPROF_ROOT)




# make sure following dir exists on beagleboard
BEAGLE_DIR=/home/root/esLAB/matMULT

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(CFLAGS)  -o $@ $? $(LIBS) $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

run: $(EXEC)
	./$(EXEC)

MCPROF_OPT:=-RecordStack 0  -TrackObjects 1 -Engine 1
compile4mcprof: CFLAGS= -O2 -g -fomit-frame-pointer
compile4mcprof: clean $(EXEC)

mcprof: compile4mcprof
	$(PIN_DIR)/pin -t $(MCPROF_DIR)/obj-intel64/mcprof.so $(MCPROF_OPT) -- $(CMD)
	$(MCPROF_DIR)/scripts/dot2pdf.sh communication.dot
	$(MCPROF_DIR)/scripts/plotScript.sh
	$(MCPROF_DIR)/scripts/callgraph2pdf.sh

compile4gprof: CFLAGS= -O2 -g -pg
compile4gprof: LDFLAGS= -pg
compile4gprof: clean $(EXEC)
gprof: compile4gprof
	$(CMD)
	gprof -b $(EXEC) > gprof.txt


clean:
	@-rm -rf $(EXEC) $(OBJS) *~

send: $(EXEC)
	echo "Sending $(EXEC) to beagleboard ... "
	scp $(EXEC) root@192.168.0.202:$(BEAGLE_DIR)/.

.PHONY: all run clean send
