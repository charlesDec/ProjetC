

global putChar
putChar:
	mov rax, 1 ;; sys_write
	syscall
	ret
