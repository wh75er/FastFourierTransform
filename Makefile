CC := mpicc

CFLAGS := -lm

parallel_src := $(wildcard *Parallel.c)
serial_src := $(wildcard *Serial.c)
time_src := TimeSource.c

all: parallel.out serial.out tsrc.out

parallel.out:
	$(CC) -o $@ $(parallel_src) $(CFLAGS)
	
serial.out:
	$(CC) -o $@ $(serial_src) $(CFLAGS)

tsrc.out:
	$(CC) -o $@ $(time_src) $(CFLAGS)

clean:
	rm *.out *.txt
	
