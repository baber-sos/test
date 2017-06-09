SRCS = $(wildcard src/*.c)
PROGS = $(patsubst src/%.c,bin/%,$(SRCS))
CC=gcc
#CFLAGS = -g -lpthread #add when needed in case of thread cases

all: $(PROGS)

bin/%: src/%.c 
	$(CC) -o $@ $< $(CFLAGS) 

clean:
	rm $(PROGS)
