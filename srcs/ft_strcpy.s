section   .text
	global _ft_strcpy
_ft_strcpy:
	mov rax, -1
loop:
	inc rax
	mov cl, byte [rsi + rax]
	mov byte [rdi + rax], cl
	cmp cl, 0
	jne loop
exit:
	mov rax, rdi
	ret
