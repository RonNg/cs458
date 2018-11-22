# Originally written by Joey Adams
HEADERS = $(wildcard *.h)
SOURCE_P1 = $(wildcard p1*.c)
SOURCE_P2 = $(wildcard p2*.c)
OBJECTS_P1 = $(patsubst p1%.c, p1%.o, $(wildcard p1*.c))
OBJECTS_P2 = $(patsubst p2%.c, p2%.o, $(wildcard p2*.c))

.PHONY: default all clean
.PRECIOUS: p1_attack p2_attack $(OBJECTS_P1) $(OBJECTS_P2)

default: all

%.o: %.c $(HEADERS)
	gcc -std=gnu99 -c $< -o $@

all: $(OBJECTS_P1) $(OBJECTS_P2)
	gcc $(OBJECTS_P1) -o p1_attack
	gcc $(OBJECTS_P2) -o p2_attack

clean:
	-rm -f *.o
	-rm -f p1_attack
	-rm -f p2_attack
