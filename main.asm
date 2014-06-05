extern printf
extern scanf

section .data
	num1:	db "Introduzca el primer numero: ", 0
	num2:	db "Introduzca el segundo numero: ", 0
	result:	db "Resultado: %d ", 10, 0
	input:	db "%d"
section .bss
	num_a: 	resb 1
	num_b:	resb 1
section .text
	global main
main:
	push num1
	call printf
	add esp, 4
	
	push num_a
	push input
	call scanf
	add esp, 8
	
	push num2
	call printf
	add esp, 4

	push num_b
	push input
	call scanf
	add esp, 4

	movzx eax, byte[num_a]
	movzx ebx, byte[num_b]

	add eax, ebx

	push eax
	push result
	call printf
	add esp, 8

	mov eax, 1
	mov ebx, 0
	int 0x80
