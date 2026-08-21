	.syntax unified
	.text

	thumb_func_start sub_8097648
sub_8097648:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, _080976C4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080976BC
	ldr r0, [r2, #0x28]
	ldr r1, _080976C8 @ =0x00002089
	movs r3, #0x40
	negs r3, r3
	movs r2, #0x01
	negs r2, r2
	str r2, [sp, #0x000]
	movs r2, #0x00
	str r2, [sp, #0x004]
	movs r2, #0x01
	str r2, [sp, #0x008]
	movs r2, #0x00
	bl sub_807BF34
	adds r4, r0, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	strb r0, [r2, #0x00]
	str r4, [r5, #0x30]
	adds r0, r4, #0x0
	bl sub_807FA14
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080976B2
	cmp r1, #0x04
	bne _080976B6
_080976B2:
	ldr r0, _080976CC @ =0x08097C39
	str r0, [r4, #0x4C]
_080976B6:
	adds r0, r5, #0x0
	bl sub_8097DB4
_080976BC:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_080976C4: .4byte 0x03000FD8
_080976C8: .4byte 0x00002089
_080976CC: .4byte sub_8097C38
