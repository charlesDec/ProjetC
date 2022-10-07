
all: nasm gcc

nasm:
	nasm -f elf64 io.asm -o io.o

gcc:
	gcc main.c io.o -o a.out

clean:
	rm *.o*
