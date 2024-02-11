.model small
.data
    message db "SOS$"
    morse db 0
    delay_count dw 500 ; Adjust this value for timing

.code
    mov ax, @data
    mov ds, ax

start:
    ; Read input from PC
    mov ah, 1h   ; Function to read from standard input
    int 21h      ; Call DOS interrupt
    mov ah, 0    ; Set AH to 0 to indicate successful operation

    ; Check if input is 'S', 'O', or space
    cmp al, 'S'
    je  generate_S
    cmp al, 'O'
    je  generate_O
    cmp al, ' '  ; Treat space as separator
    je  space_separator

    ; If input is not 'S', 'O', or space, ignore
    jmp start

generate_S:
    ; Morse code for 'S': ... (3 dots)
    mov morse, 3
    call output_morse
    jmp start

generate_O:
    ; Morse code for 'O': --- (3 dashes)
    mov morse, 3
    call output_morse
    jmp start

space_separator:
    ; Separator between letters in Morse code: space equal to three dots (one dash)
    mov morse, 7
    call delay
    jmp start

output_morse:
    mov cx, morse  ; Initialize counter with Morse code length
morse_loop:
    ; Output LED signal
    mov ah, 0Bh     ; Function to set/reset bits in the port
    mov al, 00000001b ; Set P1.0 (LED on)
    out 01h, al     ; Output to port 1
    call delay      ; Delay for dot/dash duration

    mov al, 00000000b ; Reset P1.0 (LED off)
    out 01h, al     ; Output to port 1
    call delay      ; Delay for dot/dash duration

    loop morse_loop

    ret

delay:
    ; Delay function
    mov cx, delay_count
delay_loop:
    dec cx
    jnz delay_loop
    ret

end start
