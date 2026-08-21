	.syntax unified
	.text

	thumb_func_start sub_80EE624
sub_80EE624:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	adds r6, r3, #0x0
	ldr r1, _080EE6B8 @ =0x03000FD0
	ldm r6!, {r3}
	lsls r0, r3, #0x05
	movs r2, #0xA8
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r2, [r1, #0x00]
	adds r7, r2, r0
	ldr r0, _080EE6BC @ =0x0000055B
	adds r2, r2, r0
	ldrb r4, [r2, #0x00]
	lsls r1, r4, #0x1B
	lsrs r1, r1, #0x1C
	movs r5, #0x01
	adds r0, r5, #0x0
	lsls r0, r3
	orrs r1, r0
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x01
	movs r0, #0x1F
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x04]
	negs r2, r0
	str r2, [r6, #0x04]
	ldr r0, [r6, #0x08]
	negs r1, r0
	str r1, [r6, #0x08]
	ldr r0, [r6, #0x00]
	ands r0, r5
	cmp r0, #0x00
	beq _080EE67C
	lsls r0, r2, #0x04
	str r0, [r6, #0x04]
	lsls r0, r1, #0x04
	str r0, [r6, #0x08]
_080EE67C:
	ldr r0, [r6, #0x00]
	asrs r0, r0, #0x01
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x01
	bne _080EE6E4
	ldr r2, _080EE6C0 @ =0x03001038
	ldr r0, [r6, #0x04]
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	ldr r1, [r6, #0x08]
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	lsls r0, r0, #0x04
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r4, r0, #0x0
	ldr r1, [r6, #0x0C]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080EE6C4
	movs r0, #0x0F
	ands r1, r0
	lsls r0, r1, #0x02
	b _080EE6C6
_080EE6B8: .4byte 0x03000FD0
_080EE6BC: .4byte 0x0000055B
_080EE6C0: .4byte 0x03001038
_080EE6C4:
	lsls r0, r1, #0x06
_080EE6C6:
	str r0, [r6, #0x0C]
	ldr r1, [r6, #0x0C]
	ldr r0, [r6, #0x04]
	muls r0, r1
	lsls r0, r0, #0x04
	adds r1, r4, #0x0
	bl __divsi3
	str r0, [r7, #0x14]
	ldr r1, [r6, #0x0C]
	ldr r0, [r6, #0x08]
	muls r0, r1
	lsls r0, r0, #0x04
	adds r1, r4, #0x0
	b _080EE6F6
_080EE6E4:
	ldr r0, [r6, #0x04]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x0C]
	bl __divsi3
	str r0, [r7, #0x14]
	ldr r0, [r6, #0x08]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x0C]
_080EE6F6:
	bl __divsi3
	str r0, [r7, #0x18]
	movs r0, #0x00
	str r0, [r7, #0x0C]
	str r0, [r7, #0x08]
	str r0, [r7, #0x04]
	str r0, [r7, #0x00]
	mov r0, r8
	cmp r0, #0x00
	beq _080EE714
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	adds r0, #0x04
	b _080EE720
_080EE714:
	ldr r0, _080EE738 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r1, #0xA9
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
_080EE720:
	strb r0, [r7, #0x1C]
	ldr r0, [r6, #0x04]
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x08]
	strh r0, [r7, #0x12]
	movs r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EE738: .4byte 0x03000FD0
