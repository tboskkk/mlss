	.syntax unified
	.text

	thumb_func_start sub_81334F4
sub_81334F4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0x8C
	ldr r0, [r5, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0x94
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	ble _0813351A
	b _08133644
_0813351A:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08133522
	adds r1, #0xFF
_08133522:
	asrs r1, r1, #0x08
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0813352C
	adds r0, #0xFF
_0813352C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08133538
	adds r3, #0xFF
_08133538:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0813364C @ =0x0000273D
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8B
	bl play_sfx_80195B4
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08133556
	adds r0, #0xFF
_08133556:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x14
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08133564
	adds r0, #0xFF
_08133564:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08133572
	adds r0, #0xFF
_08133572:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x00
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	adds r0, r4, #0x0
	adds r0, #0xA4
	movs r2, #0x00
	str r2, [r0, #0x00]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r2, [r0, #0x00]
	adds r7, r5, #0x0
	adds r7, #0xAC
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	movs r6, #0x0F
_081335E6:
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	subs r6, #0x04
	cmp r6, #0x00
	bge _081335E6
	ldr r0, _08133650 @ =0x081338CD
	str r0, [r4, #0x4C]
	adds r0, r5, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x01
	strh r0, [r7, #0x00]
	ldr r0, _08133654 @ =0x08133AE9
	str r0, [r5, #0x4C]
_08133644:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0813364C: .4byte 0x0000273D
_08133650: .4byte sub_81338CC
_08133654: .4byte sub_8133AE8
