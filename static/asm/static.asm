.equ PORTA, 0x1B           ; alias port A
.equ DDRA,  0x1A           ; alias the data direction register for port A

.org 0x0000                ; places the following code at address 0x0000
    rjmp RESET

RESET:
    ldi  R16,   0b00000001 ; load 1 into register 16
    out  DDRA,  R16        ; set the data direction of pin 1 of port A to 1
                           ; (output)
MAIN:
    ldi  R16,   0b00000000 ; load 0 into register 16
    out  PORTA, R16        ; write 0 to port A  to turn on the led (active-low
                           ; configuration)
    rjmp MAIN              ; loop endlessly
