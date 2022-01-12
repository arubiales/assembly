
;dec eax ;es decrementar una variable es como hacer a--
;inc eax ;es sumar 1 a una variable a++
;add eax, abx ;suma dos variables y la almacena en la primera es decir eax+=abx
;sub eas, ebx ;para restar y almacena en la primera vairable

;mul ; ax= al * fuente
;imul ; no considera el signo

;div ; 
;idiv ;  divide sin considerar el signo

section .data

msg1 db 0xA, 0xD, "la multiplicación de 2*2 es: ", 0xA, 0xD
len1 equ $ - msg1
msg2 db 0xA, 0xD, "La multipilcación de -2*2: ", 0xA, 0xD
len2 equ $ - msg2
msg3 db 0xA, 0xD, "La división de 4/2 es: ", 0xA, 0xD
len3 equ $ - msg3
msg4 db 0xA, 0xD, "La división de -4/-2 es: ", 0xA, 0xD
len4 equ $ - msg4

section .bss ;Variables no declaras inicialmente
res resb 1 ;reservamos un espacio en memoria


section .text
    global _start

_start:

    ;-----------------imprime los mensajes-------------------------------
    mov eax, 4       ;llama al sistema sys.write

    mov ebx, 1      ;stdout
    mov ecx, msg1   ;msg pantalla
    mov edx, len1    ;longitud del mensaje
    int 0x80        ; llamada al sistema de interrupciones

    mov eax, 2
    mov ebx, 2

    ; así es la multiplicacion eax*ebx
    mul ebx
    add eax, '0' ; Añadimos este caracter al final que es el intro
    mov [res], eax ;Entre corchetes accedemos al puntero de memoria

    mov eax, 4       ;llama al sistema sys.write
    mov ebx, 1      ;stdout
    mov ecx, res   ;msg pantalla
    mov edx, 1    ;longitud del mensaje
    int 0x80        ; llamada al sistema de interrupciones

    ;-----------------imprime los mensajes-------------------------------
    mov eax, 4

    mov ebx, 1
    mov ecx, msg2
    mov edx, len2
    int 0x80

    mov eax, -2
    mov ebx, 2

    imul ebx
    add eax, '0'
    mov [res], eax ;Entre corchetes accedemos al puntero de memoria

    mov eax, 4       ;llama al sistema sys.write
    mov ebx, 1      ;stdout
    mov ecx, res   ;msg pantalla
    mov edx, 1    ;longitud del mensaje
    int 0x80        ; llamada al sistema de interrupciones

    ;-----------------imprime los mensajes-------------------------------
    mov eax, 4

    mov ebx, 1
    mov ecx, msg3
    mov edx, len3
    int 0x80


    mov eax, 4
    mov ebs, 2
    mov edx, 0

    div ebx
    add eax, '0'
    mov [res], eax

    mov eax, 4       ;llama al sistema sys.write
    mov ebx, 1      ;stdout
    mov ecx, res   ;msg pantalla
    mov edx, 1    ;longitud del mensaje
    int 0x80        ; llamada al sistema de interrupciones

    ;-----------------imprime los mensajes-------------------------------
    mov eax, 4

    mov ebx, 1
    mov ecx, msg4
    mov edx, len4
    int 0x80

    mov eax, 4
    mov ebs, 2
    mov edx, 0
    
    idiv eax
    add eax, '0'
    mov [res], eax

    mov eax, 4       ;llama al sistema sys.write
    mov ebx, 1      ;stdout
    mov ecx, res   ;msg pantalla
    mov edx, 1,
    int 0x80


    mov edx, 1    ;longitud del mensaje
    int 0x80        ; llamada al sistema de interrupciones
