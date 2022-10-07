
all: nasm qemu

nasm:
	nasm -f bin boot.asm -o bootsector.bin

qemu:
	qemu-system-i386 -drive format=raw,file=bootsector.bin

clean:
	rm *.['o','bin']*
