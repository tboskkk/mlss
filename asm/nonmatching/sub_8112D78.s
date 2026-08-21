	.syntax unified
	.text

	thumb_func_start sub_8112D78
sub_8112D78:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08112E20
	adds r0, r5, #0x0
	movs r1, #0x18
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08112E28 @ =0x0000403E
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	ldr r0, [r4, #0x38]
	ldr r1, _08112E2C @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r4, #0x38]
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x3C]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r0, [r4, #0x3C]
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x40]
	movs r1, #0xC0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r4, #0x40]
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _08112E30 @ =0x08112E41
	str r0, [r4, #0x4C]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08112E34 @ =0x0811313D
	str r0, [r4, #0x5C]
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08112DF4
	adds r1, #0xFF
_08112DF4:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08112DFE
	adds r2, #0xFF
_08112DFE:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08112E08
	adds r3, #0xFF
_08112E08:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08112E38 @ =0x000028F8
	bl sub_80DF024
	ldr r0, _08112E3C @ =0x081132AD
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA0
	bl play_sfx_80195B4
_08112E20:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08112E28: .4byte 0x0000403E
_08112E2C: .4byte 0xFFFFF400
_08112E30: .4byte sub_8112E40
_08112E34: .4byte sub_811313C
_08112E38: .4byte 0x000028F8
_08112E3C: .4byte sub_81132AC
