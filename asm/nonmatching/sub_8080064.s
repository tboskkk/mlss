	.syntax unified
	.text

	thumb_func_start sub_8080064
sub_8080064:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080800CC
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	ldr r2, _080800D4 @ =0x00002068
	cmp r1, r0
	bne _08080088
	subs r2, #0x2F
_08080088:
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080800AA
	adds r1, #0xFF
_080800AA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080800B4
	adds r2, #0xFF
_080800B4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080800BE
	adds r3, #0xFF
_080800BE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x33
	bl sub_80DF024
	ldr r0, _080800D8 @ =0x08080221
	str r0, [r4, #0x4C]
_080800CC:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080800D4: .4byte 0x00002068
_080800D8: .4byte sub_8080220
