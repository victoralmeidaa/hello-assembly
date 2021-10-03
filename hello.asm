section .data		;Define as variáveis na seção de Dados
	msg: db "Ola mundo", 10 
	len: equ $-msg
section .text		;O codigo inicia na seção de Texto
	global main
main:				;ssize_t write(int 'fd.' const void '*buf.' size_t 'count')
	mov	eax, 4		;'write' sistema de chamada = 4 
	mov	ebx, 1		; (fd) file descriptor
	mov	ecx, msg	; string para escrita (*buf)
	mov	edx, len	; comprimento da string para ecrita (count)
	int	0x80		; chama o kernel

	; Termina o Programa	
	mov	eax, 1		;'exit' system call
	mov	ebx, 0		;exit com erro codigo 0
	int 0x80		;chama o kernel
;--------------------
; # Compile in linux ubuntu-20.04 / nasm-2.14.02 / gcc-9.3.0
; nasm -f elf64 hello.asm -o hello.o
; # Link
; gcc hello.o -o hello -no-pie
; # Run
; ./hello
; -------------------


