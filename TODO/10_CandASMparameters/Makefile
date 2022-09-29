#TODO ecrire le Makefile

all: libo compile

libo: 
	gcc -c ./lib/hello/hello.c -o ./hello.o
	gcc -c ./lib/mat/mat.c -o ./mat.o
	nasm -f elf64 ./lib/helloasm/helloasm.asm -o helloasm.o

compile:
	gcc main.c hello.o mat.o helloasm.o -o a.out

clean:
	rm *.o*



