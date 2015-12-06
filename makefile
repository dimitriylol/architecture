CC=g++
CFLAGS=-c -std=c++11 -O3 
PROFILER=-pg

all: main

main: main.o LZW.o OpenFile.o
	$(CC) $(PROFILER) -Wall LZW.o OpenFile.o main.o -o result

main.o:
	$(CC) $(CFLAGS) $(PROFILER) main.cpp

LZW.o:
	$(CC) $(CFLAGS) $(PROFILER) LZW.hpp LZW.cpp

OpenFile.o:
	$(CC) $(CFLAGS) $(PROFILER) OpenFile.hpp OpenFile.cpp

run: 
	./result

clean:
	rm *.o *.gch encode.txt decode.txt
