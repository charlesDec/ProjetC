

all: libo compile

libo: 
	gcc -c ./lib/helloC/hello.c -o ./hello.o
	nasm -f elf64 ./lib/helloASM/helloASM.asm -o ./helloASM.o
	

compile:
	gcc main.c hello.o helloASM.o -o a.out

clean:
	rm *.o*



