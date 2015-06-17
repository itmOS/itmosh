global read
read:
    push ebx
    push esi
    push edi
	mov eax, 3
	mov edi, [esp + 16]
	mov esi, [esp + 20]
	mov ebx, [esp + 24]
	int 0x80
    pop edi
    pop esi
    pop ebx
	ret

global write
write:
    push ebx
    push esi
    push edi
	mov eax, 4
	mov edi, [esp + 16]
	mov esi, [esp + 20]
	mov ebx, [esp + 24]
	int 0x80
    pop edi
    pop esi
    pop ebx
	ret

global close
close:
    push ebx
    push esi
    push edi
	mov eax, 7
	mov edi, [esp + 16]
	mov esi, [esp + 20]
	mov ebx, [esp + 24]
	int 0x80
    pop edi
    pop esi
    pop ebx
	ret

global pipe
pipe:
    push ebx
    push esi
    push edi
	mov eax, 42
	mov edi, [esp + 16]
	int 0x80
    pop edi
    pop esi
    pop ebx
	ret

;;; TODO: Remove this as soon as posible
global write_err
write_err:
    push ebx
    push esi
    push edi
	mov eax, 2
	mov edi, 2
	mov esi, [esp + 16]
	int 0x80
    pop edi
    pop esi
    pop ebx
	ret

global fork
fork:
    push ebx
    push esi
    push edi
	mov eax, 6
	int 0x80
    pop edi
    pop esi
    pop ebx
	ret

global _exit
_exit:
	mov eax, 0
	mov edi, [esp + 4]
	int 0x80

global sbrk
sbrk:
    push ebx
    push esi
    push edi
	mov eax, 12
	mov edi, [esp + 16]
	int 0x80
    pop edi
    pop esi
    pop ebx
	ret

global waitpid
waitpid:
    push ebx
    push esi
    push edi
	mov eax, 9
	mov edi, [esp + 16]
	mov esi, [esp + 20]
	mov ebx, [esp + 24]
	int 0x80
    pop edi
    pop esi
    pop ebx
	ret
