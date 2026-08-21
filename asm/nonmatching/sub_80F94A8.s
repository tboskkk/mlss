	.syntax unified
	.text

	thumb_func_start sub_80F94A8
sub_80F94A8:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, [r6, #0x24]
	ldr r1, _080F952C @ =0x000009A3
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F94F8
	movs r7, #0x0C
	ldr r0, [r6, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x3A
_080F94CC:
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _080F94E8
	bl sub_8021308
	movs r0, #0x00
	str r0, [r5, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r4, #0x00]
	ldrb r0, [r4, #0x02]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r4, #0x02]
_080F94E8:
	adds r4, #0x40
	adds r5, #0x40
	lsls r0, r7, #0x10
	ldr r1, _080F9530 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	cmp r0, #0x00
	bgt _080F94CC
_080F94F8:
	ldr r4, _080F9534 @ =0x03001034
	ldr r1, [r6, #0x24]
	ldr r0, _080F9538 @ =0x0000099C
	adds r1, r1, r0
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	movs r2, #0x04
	bl _call_via_r3
	ldr r1, [r6, #0x24]
	ldr r0, _080F953C @ =0x00000908
	adds r1, r1, r0
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	movs r2, #0x94
	bl _call_via_r3
	ldr r0, [r6, #0x24]
	ldr r1, _080F9540 @ =0x000009A1
	adds r0, r0, r1
	movs r1, #0x00
	strb r1, [r0, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F952C: .4byte 0x000009A3
_080F9530: .4byte 0xFFFF0000
_080F9534: .4byte 0x03001034
_080F9538: .4byte 0x0000099C
_080F953C: .4byte 0x00000908
_080F9540: .4byte 0x000009A1
