all:
	nasm -f elf32 main.asm
	gcc main.o -o main
clear:
	rm main
	rm main.o
	
