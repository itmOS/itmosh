global read
read:
	mov eax, 3
	mov edi, [esp + 4]
	mov esi, [esp + 8]
	mov ebx, [esp + 12]
	int 0x80
	ret

global write
write:
	mov eax, 4
	mov edi, [esp + 4]
	mov esi, [esp + 8]
	mov ebx, [esp + 12]
	int 0x80
	ret

global close
close:
	mov eax, 7
	mov edi, [esp + 4]
	mov esi, [esp + 8]
	mov ebx, [esp + 12]
	int 0x80
	ret

global pipe
pipe:
	mov eax, 42
	mov edi, [esp + 4]
	int 0x80
	ret

;;; TODO: pipe2 is not really supported, just calls pipe
global pipe2
pipe2:
	mov eax, 52
	mov edi, [esp + 4]
	int 0x80
	ret

;;; TODO: Remove this as soon as posible
global write_err
write_err:
	mov eax, 2
	mov edi, 2
	mov esi, [esp + 4]
	int 0x80
	ret

global fork
fork:
	mov eax, 6
	int 0x80
	ret

global _exit
_exit:
	mov eax, 0
	mov edi, [esp + 4]
	int 0x80
	ret

global sbrk
sbrk:
	mov eax, 12
	mov edi, [esp + 4]
	int 0x80
	ret

global waitpid
waitpid:
	mov eax, 9
	mov edi, [esp + 4]
	mov esi, [esp + 8]
	mov ebx, [esp + 12]
	int 0x80
	ret
