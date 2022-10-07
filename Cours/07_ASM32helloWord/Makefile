

all: nasm ld run

nasm: 
	nasm -f elf main.asm -o main.o

ld:
	ld -m elf_i386 main.o -o a.out

run:
	./a.out

clean:
	rm *.o*
