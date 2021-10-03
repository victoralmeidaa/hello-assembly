# Hello-Assembly
## Compile in linux ubuntu-20.04 / nasm-2.14.02 / gcc-9.3.0
# Comçile
nasm -f elf64 hello.asm -o hello.o
# Link
gcc hello.o -o hello -no-pie
# Run
./hello