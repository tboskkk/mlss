	.syntax unified
	.text

	thumb_func_start sub_806C848
sub_806C848:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _0806C8B6
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C870
	ldr r0, _0806C86C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x60]
	b _0806C876
	.byte 0x00, 0x00
_0806C86C: .4byte 0x03000FD8
_0806C870:
	ldr r0, _0806C8A4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x5C]
_0806C876:
	adds r4, r1, #0x0
	adds r4, #0x08
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _0806C882
	adds r2, #0xFF
_0806C882:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0806C88C
	adds r3, #0xFF
_0806C88C:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0806C8A8
	movs r0, #0x11
	b _0806C8AA
	.byte 0x00, 0x00
_0806C8A4: .4byte 0x03000FD8
_0806C8A8:
	movs r0, #0x10
_0806C8AA:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	movs r0, #0x00
_0806C8B6:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
