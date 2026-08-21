	.syntax unified
	.text

	thumb_func_start sub_80EFB18
sub_80EFB18:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080EFBDC @ =0x03000FD0
	ldr r5, [r0, #0x00]
	movs r1, #0x00
_080EFB22:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x03
	beq _080EFB38
	ldr r0, _080EFBE0 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r2, #0xA8
	bl _call_via_r3
_080EFB38:
	adds r5, #0xA8
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080EFB22
	mov r0, sp
	movs r6, #0x00
	strh r6, [r0, #0x00]
	ldr r5, _080EFBDC @ =0x03000FD0
	ldr r1, [r5, #0x00]
	ldr r0, _080EFBE4 @ =0x00000544
	adds r1, r1, r0
	ldr r2, _080EFBE8 @ =0x01000001
	mov r0, sp
	bl CpuSet
	ldr r0, _080EFBE0 @ =0x03001034
	ldr r4, _080EFBEC @ =0x03000FC0
	ldr r1, [r4, #0x00]
	movs r2, #0xE3
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	movs r2, #0x08
	bl _call_via_r3
	mov r0, sp
	strh r6, [r0, #0x00]
	ldr r1, [r4, #0x00]
	ldr r3, _080EFBF0 @ =0x0000053C
	adds r1, r1, r3
	ldr r2, _080EFBF4 @ =0x01000010
	bl CpuSet
	ldr r1, [r5, #0x00]
	ldr r3, _080EFBF8 @ =0x0000055A
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x3F
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	movs r2, #0xAA
	lsls r2, r2, #0x03
	adds r0, r1, r2
	movs r2, #0x00
	str r2, [r0, #0x00]
	subs r3, #0x10
	adds r0, r1, r3
	strh r2, [r0, #0x00]
	ldr r0, _080EFBFC @ =0x00000549
	adds r1, r1, r0
	strb r6, [r1, #0x00]
	ldr r1, [r5, #0x00]
	ldr r2, _080EFC00 @ =0x0000055B
	adds r1, r1, r2
	ldrb r3, [r1, #0x00]
	movs r2, #0x61
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r3
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r3, _080EFC04 @ =0x0000055F
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	ands r2, r1
	strb r2, [r0, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080EFBDC: .4byte 0x03000FD0
_080EFBE0: .4byte 0x03001034
_080EFBE4: .4byte 0x00000544
_080EFBE8: .4byte 0x01000001
_080EFBEC: .4byte 0x03000FC0
_080EFBF0: .4byte 0x0000053C
_080EFBF4: .4byte 0x01000010
_080EFBF8: .4byte 0x0000055A
_080EFBFC: .4byte 0x00000549
_080EFC00: .4byte 0x0000055B
_080EFC04: .4byte 0x0000055F
