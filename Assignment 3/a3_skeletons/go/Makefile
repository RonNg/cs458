.PHONY: default all clean

default: all

all:
	go install p1_attack
	go install p2_attack
	cp bin/p1_attack .
	cp bin/p2_attack .

clean:
	-rm -f p1_attack
	-rm -f p2_attack
