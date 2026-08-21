	.syntax unified
	.text

	thumb_func_start sub_806AA18
sub_806AA18:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1E
	bne _0806AA3A
	ldr r0, _0806AB38 @ =0x00000125
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0806AA3A:
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806AB30
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806AA5A
	adds r1, #0xFF
_0806AA5A:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806AA64
	adds r2, #0xFF
_0806AA64:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0806AA6E
	adds r3, #0xFF
_0806AA6E:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806AB3C @ =0x00000D7A
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0806AA82
	adds r0, #0xFF
_0806AA82:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x11
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0806AA90
	adds r0, #0xFF
_0806AA90:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806AA9C
	adds r0, #0xFF
_0806AA9C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806AB40 @ =0x0000408A
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x77
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	subs r2, #0x01
	ands r4, r0
	lsls r4, r4, #0x06
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0806AB44 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0806AB48 @ =0x0806B391
	str r0, [r5, #0x58]
	ldr r0, _0806AB4C @ =0x0806B341
	str r0, [r5, #0x60]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _0806AB50 @ =0x0806B3D1
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x58
	bl play_sfx_80195B4
	ldr r0, _0806AB54 @ =0x0806AB59
	str r0, [r6, #0x4C]
_0806AB30:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806AB38: .4byte 0x00000125
_0806AB3C: .4byte 0x00000D7A
_0806AB40: .4byte 0x0000408A
_0806AB44: .4byte sub_8087540
_0806AB48: .4byte sub_806B390
_0806AB4C: .4byte sub_806B340
_0806AB50: .4byte sub_806B3D0
_0806AB54: .4byte sub_806AB58
