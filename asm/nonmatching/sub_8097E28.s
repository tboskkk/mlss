	.syntax unified
	.text

	thumb_func_start sub_8097E28
sub_8097E28:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, _08097E78 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r1, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r7, #0x20
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08097EAA
	ldr r0, [r6, #0x08]
	bl sub_807FB64
	cmp r6, r5
	bne _08097E82
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08097E82
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08097E7C
	adds r0, r4, #0x0
	bl sub_8097DB4
	b _08097E82
	.byte 0x00, 0x00
_08097E78: .4byte 0x03000FD8
_08097E7C:
	adds r0, r4, #0x0
	bl sub_80974F8
_08097E82:
	cmp r6, r4
	bne _08097EA6
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08097EA6
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _08097EA0
	adds r0, r5, #0x0
	bl sub_8097DB4
	b _08097EA6
_08097EA0:
	adds r0, r5, #0x0
	bl sub_80974F8
_08097EA6:
	ldr r0, _08097EB0 @ =0x08097F11
	str r0, [r6, #0x4C]
_08097EAA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08097EB0: .4byte sub_8097F10
