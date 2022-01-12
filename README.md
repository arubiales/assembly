
# Sintaxis
`0x` indica que estamos en el sistema hexadecimal
`;` para comentar la linea
`global` crea una variable global
`section .data` es donde definimos las funciones
`mov` sirve para mover los datos de un sitio a otro
`db` byte
`dw` palabra
`dd` palabra doble
`dq` palabra cuadruple
`dt` diez byte
`int 0x80` es interrupciones para llamar al sistema operativo de nuevo
`mov eax, 1` Salimos del programa
`int 0x80` devolvemos el control al sistema operativo


# Ejecutar un programa

Para ejecutar un programa debemos compilarlo y enlazarlo para ello hacemos

1. Compilación `nasm -f elf <nombre_fichero>.asm`. Esto nos generará un `<fichero>.o`
2. Enlazado `ld -m elf_i386 -s -o <nombre_fichero> <nombre_fichero>.o`. Esto nos generará un ejecutable sin 
