

all: nasm ld run

nasm: 
	nasm -f elf64 main.asm -o main.o

ld:
	ld -m elf_x86_64 main.o -o a.out

run:
	./a.out

clean:
	rm *.o*
