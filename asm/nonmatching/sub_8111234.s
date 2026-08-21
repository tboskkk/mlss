	.syntax unified
	.text

	thumb_func_start sub_8111234
sub_8111234:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081112B4
	adds r2, r4, #0x0
	adds r2, #0xAE
	movs r1, #0x00
	movs r0, #0x17
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	movs r1, #0x60
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r2, #0x6C
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08111292
	adds r1, #0xFF
_08111292:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0811129C
	adds r2, #0xFF
_0811129C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _081112A6
	adds r3, #0xFF
_081112A6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _081112BC @ =0x00002669
	bl sub_80DF024
	ldr r0, _081112C0 @ =0x081112C5
	str r0, [r4, #0x4C]
_081112B4:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_081112BC: .4byte 0x00002669
_081112C0: .4byte sub_81112C4
