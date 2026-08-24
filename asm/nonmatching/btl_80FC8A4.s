	push {r4, lr}
	add sp, #-0x004
	mov r0, sp
	bl sub_8199470
	ldr r4, _080FC8E8 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x20
	ldr r1, [r1, #0x24]
	bl _call_via_r1
	ldr r0, [r4, #0x00]
	adds r0, #0x4C
	bl sub_807FFFC
	mov r0, sp
	ldrb r0, [r0, #0x00]
	bl sub_8082584
	ldr r0, [r4, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC8E0
	ldr r1, _080FC8EC @ =0x03000FE0
	ldr r0, _080FC8F0 @ =0x080FC5C1
	str r0, [r1, #0x00]
_080FC8E0:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080FC8E8: .4byte 0x03000FD8
_080FC8EC: .4byte 0x03000FE0
_080FC8F0: .4byte btl_80FC5C0
