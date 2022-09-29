
all: gcc run

gcc:
	#compile le code source en fichier elf 64bit
	#le -g signifie qu'on peut débugger le fichier obtenu
	gcc -g main.c -o a.out

run:
	./a.out


debug:
	ddd a.out


clean:
	rm *.['o','s']*
