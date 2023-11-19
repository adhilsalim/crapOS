section .text
    global _start

_start:
    ; Set up the segment registers
    xor ax, ax
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

    ; Call the function to print "Hello, World!"
    call print_hello

    ; Infinite loop to halt the system
    hlt

print_hello:
    ; Function to print "Hello, World!"
    ; Output: Displays "Hello, World!" on the screen

    ; Set video mode
    mov ah, 0x00
    mov al, 0x03
    int 0x10

    ; Set cursor position
    mov ah, 0x02
    mov bh, 0x00
    mov dh, 0x0A ; Row
    mov dl, 0x0E ; Column
    int 0x10

    ; Print "Hello, World!" to the screen
    mov ah, 0x0E
    mov al, 'H'
    int 0x10
    mov al, 'e'
    int 0x10
    mov al, 'l'
    int 0x10
    int 0x10
    mov al, 'o'
    int 0x10
    int 0x10
    mov al, ','
    int 0x10
    int 0x10
    mov al, ' '
    int 0x10
    int 0x10
    mov al, 'W'
    int 0x10
    mov al, 'o'
    int 0x10
    mov al, 'r'
    int 0x10
    mov al, 'l'
    int 0x10
    mov al, 'd'
    int 0x10
    mov al, '!'
    int 0x10

    ret

