.PHONY: run clean

all: test.so

test.o: test.c
	g++ -fPIC -c -I/usr/include/python2.7/ test.c
test.so: test.o
	g++ -shared test.o -o test.so
test.c: test.pyx test.cpp
	cython test.pyx

run: test.so
	python test.py

clean:
	$(RM) test.so test.o test.c
