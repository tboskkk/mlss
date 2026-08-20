	.syntax unified
	.text

	thumb_func_start sub_80A1154
sub_80A1154:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _080A11A4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x70]
	ldr r0, [r3, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A119E
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A117C
	cmp r1, #0x04
	bne _080A119A
_080A117C:
	adds r2, r3, #0x0
	adds r2, #0x82
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x07
	strh r0, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A119A:
	ldr r0, _080A11A8 @ =0x080A11AD
	str r0, [r4, #0x4C]
_080A119E:
	pop {r4}
	pop {r0}
	bx r0
_080A11A4: .4byte 0x03000FD8
_080A11A8: .4byte sub_80A11AC
