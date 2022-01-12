section .data

msg db "Hola Mundo!!!",0xA,0xD ;db es un operator de asignación, como el igual 0xA significa movernos una linea y 0xd hacia abajo es exadecimal
len equ $ - msg ; tenemos que poner la longitud de nuestra palabra hola mundo, El dola es para la longitud de la cadena

; la diferencia entre db y equ, es que e db es una variable y equ es una constante, las estructuras que existen son las siguietne
;db byte
;dw palabra
;dd palabra doble
;dq palabra cuadruple
;dt diez byte
;0x quiere decir que la instrucción va en hexadesimal


section .data
    global _start ;Creamos las variable _start que es global, esto hace que empiece el programa
_start:

    ;mov destino, origen ; esto asigna (mueve) los datos de un lado a otro, lo que pongamos en "origen" será asignado a "destino"
    ;destino = origen
    ;= destino origen
    ;interrucciones: nos permiten manejar las entradas y las salidas. Regresa el control al sistema operativo

    mov eax, 4 ;LLamamos al sistema (sys_write) es decirle que escriba
    mov ebx, 1 ;El uno quiere escribir en pantalla stdout
    mov ecx, msg ;el mensaje que queremos escribir
    mov edx, len ;la longitud del mensaje

    int 0x80 ; llamada al sistema de interrupciones
    
    mov eax, 1 ;Salimos del programa
    int 0x80 ; llamamos a la interrupción para darle el control al sistema operativa 



