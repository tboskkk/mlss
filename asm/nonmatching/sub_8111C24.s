	.syntax unified
	.text

	thumb_func_start sub_8111C24
sub_8111C24:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x0E
	ands r0, r1
	cmp r0, #0x0A
	bne _08111C4A
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08111C9C @ =0x0810DD7D
	str r0, [r4, #0x5C]
_08111C4A:
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	movs r2, #0x00
	ldsb r2, [r0, r2]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	adds r1, r2, #0x2
	cmp r0, #0x00
	beq _08111C60
	subs r1, r2, #0x2
_08111C60:
	adds r0, r4, #0x0
	adds r0, #0x75
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8111F3C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08111C94
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r0, [r4, #0x28]
	ldr r2, _08111CA0 @ =0x00000113
	adds r1, r0, r2
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r0, _08111CA4 @ =0x08112065
	str r0, [r4, #0x4C]
_08111C94:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08111C9C: .4byte sub_810DD7C
_08111CA0: .4byte 0x00000113
_08111CA4: .4byte sub_8112064
