# Dependencies:

$ `sudo apt install nasm`

nasm -f elf main.asm && ld -m elf_i386 main.o -o main && rm main.o