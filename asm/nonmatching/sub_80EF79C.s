	.syntax unified
	.text

	thumb_func_start sub_80EF79C
sub_80EF79C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r7, r1, #0x0
	ldr r3, _080EF85C @ =0x03000FD0
	ldr r1, [r3, #0x00]
	ldr r4, _080EF860 @ =0x0000055A
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r2, [r3, #0x00]
	movs r1, #0xAB
	lsls r1, r1, #0x03
	adds r0, r2, r1
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r3, _080EF864 @ =0x00000556
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	subs r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldr r0, _080EF868 @ =0x00000549
	adds r2, r2, r0
	movs r0, #0x10
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x14]
	bl sub_8028D6C
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x14]
	ldr r2, _080EF86C @ =0x0000010B
	adds r1, r0, r2
	ldrb r4, [r1, #0x00]
	adds r6, r0, #0x0
	adds r6, #0x28
	cmp r4, #0x00
	beq _080EF82A
_080EF7FE:
	ldr r0, [r5, #0x00]
	adds r0, #0x1C
	ldm r6!, {r2}
	adds r1, r2, #0x0
	adds r1, #0x58
	movs r3, #0x8A
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldr r2, [r2, #0x00]
	movs r3, #0x01
	str r3, [sp, #0x000]
	movs r3, #0xFF
	str r3, [sp, #0x004]
	movs r3, #0x00
	bl sub_80EA5C8
	lsls r0, r4, #0x10
	ldr r1, _080EF870 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	cmp r0, #0x00
	bgt _080EF7FE
_080EF82A:
	ldr r0, [r5, #0x00]
	ldr r2, [r0, #0x18]
	movs r3, #0x08
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x0C]
	bl _call_via_r1
	ldr r0, [r5, #0x00]
	adds r0, #0x1C
	ldr r1, _080EF85C @ =0x03000FD0
	ldr r1, [r1, #0x00]
	movs r2, #0x01
	str r2, [sp, #0x000]
	movs r2, #0xFF
	str r2, [sp, #0x004]
	adds r2, r7, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080EF85C: .4byte 0x03000FD0
_080EF860: .4byte 0x0000055A
_080EF864: .4byte 0x00000556
_080EF868: .4byte 0x00000549
_080EF86C: .4byte 0x0000010B
_080EF870: .4byte 0xFFFF0000
