section .data
	mensagem db 'Hello World'
section .text
	global _start

_start:
	mov rax, 1	;identificador sys_write
	mov rdi, 1	;saida padrao
	mov rsi, mensagem ; apontagento para o endereço da mensagem que  queremos imprimir
	mov rdx, 13	; tamanho da mensagem
	syscall

	mov rax, 60	;identificador sys_exit
	mov rdi, 0	;tudo certo
	syscall
