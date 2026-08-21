	.syntax unified
	.text

	thumb_func_start strcmp
strcmp:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	orrs r0, r3
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _081DCE66
	ldr r1, [r2, #0x00]
	ldr r0, [r3, #0x00]
	cmp r1, r0
	bne _081DCE66
	ldr r5, _081DCE4C @ =0xFEFEFEFF
	ldr r4, _081DCE50 @ =0x80808080
_081DCE3C:
	ldr r1, [r2, #0x00]
	adds r0, r1, r5
	bics r0, r1
	ands r0, r4
	cmp r0, #0x00
	beq _081DCE54
	movs r0, #0x00
	b _081DCE78
_081DCE4C: .4byte 0xFEFEFEFF
_081DCE50: .4byte 0x80808080
_081DCE54:
	adds r2, #0x04
	adds r3, #0x04
	ldr r1, [r2, #0x00]
	ldr r0, [r3, #0x00]
	cmp r1, r0
	beq _081DCE3C
	b _081DCE66
_081DCE62:
	adds r2, #0x01
	adds r3, #0x01
_081DCE66:
	ldrb r0, [r2, #0x00]
	cmp r0, #0x00
	beq _081DCE72
	ldrb r1, [r3, #0x00]
	cmp r0, r1
	beq _081DCE62
_081DCE72:
	ldrb r2, [r2, #0x00]
	ldrb r3, [r3, #0x00]
	subs r0, r2, r3
_081DCE78:
	pop {r4, r5, pc}
	.byte 0x00, 0x00
