	.syntax unified
	.text

	thumb_func_start sub_814DCC4
sub_814DCC4:
	push {r4, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	mov r0, sp
	adds r1, r4, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814DCF8 @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	adds r1, r0, #0x0
	lsls r0, r1, #0x18
	cmp r0, #0x00
	beq _0814DCEC
	movs r1, #0x01
_0814DCEC:
	adds r0, r1, #0x0
	add sp, #0x010
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0814DCF8: .4byte 0x00007FFF
