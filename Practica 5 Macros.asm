INCLUDE Irvine32.inc
MostrarMensaje MACRO texto 
	mov edx, OFFSET texto
	call WriteString
	call Crlf
ENDM

Multiplicar MACRO op1, op2
    mov eax, op1        
    imul eax, op2       
    call WriteInt
    call Crlf
ENDM

.data
	mensajeBienvenida BYTE "Bienvenido al sistema", 0
	mensajeFin BYTE "Hasta luego, vuelva pronto", 0

.code
main PROC
	MostrarMensaje mensajeBienvenida
	MostrarMensaje mensajeFin
	
	Multiplicar 5, 6

	exit
main ENDP

END main