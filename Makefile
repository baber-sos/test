SRCS = $(wildcard src/*.c)
PROGS = $(patsubst src/%.c,bin/%,$(SRCS))
CC=gcc
#CFLAGS = -g -lpthread #add when needed in case of thread cases

all: create_bin | $(PROGS)

create_bin:
	mkdir -p bin

bin/%: src/%.c 
	$(CC) -o $@ $< $(CFLAGS) 

clean:
	rm $(PROGS)
