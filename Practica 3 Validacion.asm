INCLUDE Irvine32.inc

.data
	msgInvalida BYTE "Entrada invalida",0

.code
main PROC
	mov ecx, 0
	mov eax, 0

	test eax, eax
	jz entradaInvalida

	test ecx, eax
	jz entradaInvalida

	exit

entradaInvalida:
	mov edx, OFFSET msgInvalida
	call WriteString
	call Crlf
	exit
main ENDP
END main