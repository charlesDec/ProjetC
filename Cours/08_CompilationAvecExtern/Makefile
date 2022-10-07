

all: libo compile

libo: 
	gcc -c ./lib/hello/hello.c -o ./hello.o
	gcc -c ./lib/mat/mat.c -o ./mat.o
	

compile:
	gcc main.c hello.o mat.o -o a.out

clean:
	rm *.o*



