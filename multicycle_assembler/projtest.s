; Week 1, Test Program 2
; Andrew House, TA, ECE352
;
; This program loads a positive value from memory, then enters a loop where
; it decrements until it becomes negative. Then it writes that value
; to memory, reads it back into k2, and then tries to calculate its twos
; complement, which it stores in k3.
;
; Final result should be:
; k0: FF   k1: 01    k2: FF    k3: 01
;
	sub	k1,k1	; clear k1
	sub	k2,k2	; clear k1
	sub k3,k3	; clear k3
	ori 1		; k1 = 1
	add k3, k1	; k3 = 1
	sub k1,k1
	ori 25        ; k1 = 0x19
	add k1,k1		; k1 = 0x32
	add k1,k1		; k1 = 0x64
	add k2,k1		; k2 = 0x64
	sub	k1,k1	; clear k1
	ori 5			; k1 = 0x5
	store k1,(k2)
	
	sub	k1,k1	; clear k1
	sub	k2,k2	; clear k2
	ori 25        ; k1 = 0x19
	add k1,k1		; k1 = 0x32
	add k1,k1		; k1 = 0x64
	add k1,k3		; k1++
	add k2,k1		; k2 = 0x65
	sub	k1,k1	; clear k1
	ori 6			; k1 = 0x6
	store k1,(k2)
	
	sub	k1,k1	; clear k1
	sub	k2,k2	; clear k2
	ori 25        ; k1 = 0x19
	add k1,k1		; k1 = 0x32
	add k1,k1		; k1 = 0x64
	add k1,k3		; k1++
	add k1,k3		; k1++
	add k2,k1		; k2 = 0x66
	sub	k1,k1	; clear k1
	ori 7			; k1 = 0x7
	store k1,(k2)
	
	sub	k1,k1	; clear k1
	sub	k2,k2	; clear k2
	ori 25        ; k1 = 0x19
	add k1,k1		; k1 = 0x32
	add k1,k1		; k1 = 0x64
	add k1,k3		; k1++
	add k1,k3		; k1++
	add k1,k3		; k1++
	add k2,k1		; k2 = 0x67
	sub	k1,k1	; clear k1
	ori 8			; k1 = 0x8
	store k1,(k2)
	
	sub	k1,k1	; clear k1
	sub	k2,k2	; clear k2
	ori 25        ; k1 = 0x19
	add k1,k1		; k1 = 0x32
	add k1,k1		; k1 = 0x64
	add k1,k3		; k1++
	add k1,k3		; k1++
	add k1,k3		; k1++
	add k1,k3		; k1++
	add k2,k1		; k2 = 0x68
	sub	k1,k1	; clear k1
	ori 9			; k1 = 0x9
	store k1,(k2)
	
	sub	k1,k1	; clear k1
	sub	k2,k2	; clear k2
	ori 25        ; k1 = 0x19
	add k1,k1		; k1 = 0x32
	add k1,k1		; k1 = 0x64
	add k1,k3		; k1++
	add k1,k3		; k1++
	add k1,k3		; k1++
	add k1,k3		; k1++
	add k1,k3		; k1++
	add k2,k1		; k2 = 0x69
	sub	k1,k1	; clear k1
	ori 10			; k1 = 0xA
	store k1,(k2)
	
	sub k1,k1
	ori 25        ; k1 = 0x19
	add k1,k1		; k1 = 0x32
	add k1,k1		; k1 = 0x64
	vload v0,(k1)   ; vector load starting from address 0x64 into V0
					;00 01 1010 = 1A
	add k1,k3		; k1++
	add k1,k3		; k1++
	add k1,k3		; k1++
	add k1,k3		; k1++
	vload v1,(k1)  ;vector load starting from address 0x68 into V1
					;01 01 1010 = 5A

	vadd v1,v0     ; vector add V0 and V1 result into V1
					;01 00 1110 = 4E
	vadd v1,v0     ; vector add V0 and V1 result into V1
					;01 00 1110 = 4E
	
	sub	k1,k1	; clear k1
	ori 24	; k1 = 0x18
	vstore v1,(k1) ; write V1 starting at address 0x50
					; 01 01 1100 = 5C
	vload v2,(k1)  ; vector load starting from addr 0x50 into v2
					;10 01 1010 = 9A
	
	stop