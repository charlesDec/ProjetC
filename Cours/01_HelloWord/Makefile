
all: gcc run

gcc:
	#compile le code source en fichier elf 64bit
	gcc main.c -o a.out

gccD:
	#rajoute le flag TEST, éuivalent à placer un "#define TEST" dans le code
	gcc -D TEST main.c -o a.out

run:
	./a.out

clean:
	rm *.['o','s']*
