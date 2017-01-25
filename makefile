CC = gcc
CFLAGS = -O3 -Wall 
CFLAGS += -D_LARGEFILE_SOURCE
CFLAGS += -fno-exceptions
CFLAGS += -finline-functions
CFLAGS += -funroll-loops
CFLAGS += -D_FILE_OFFSET_BITS=64
 
# Source files
WRITE_BLOCKS_SRC=write_blocks_seq.c
READ_BLOCKS_SRC=read_blocks_seq.c 
 
# Binaries
all: write_blocks_seq read_blocks_seq
 
# Sequential writing in blocks
write_blocks_seq: $(WRITE_BLOCKS_SRC)
	$(CC) $(CFLAGS) $^ -o $@ 
 
# Sequential reading in blocks
read_blocks_seq: $(READ_BLOCKS_SRC)
	$(CC) $(CFLAGS) $^ -o $@ 
 
clean:  
	rm write_blocks_seq read_blocks_seq records.dat
