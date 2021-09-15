nasm -f elf64 -o getchar.o getchar.asm
ld getchar.o -o GETCHAR 
./GETCHAR