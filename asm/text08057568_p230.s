	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80790CC
sub_80790CC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r0, #0xA8
	ldr r2, [r0, #0x00]
	ldr r0, _080791BC @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080790E2
	movs r0, #0x05
	subs r2, r0, r2
_080790E2:
	ldr r0, _080791C0 @ =0xFFFFFB34
	ldr r1, _080791C4 @ =0x00000B33
	muls r0, r2
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r6, r0, r3
	adds r0, r2, #0x0
	muls r0, r1
	movs r1, #0xA0
	lsls r1, r1, #0x07
	adds r7, r0, r1
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08079102
	adds r0, #0xFF
_08079102:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08079110
	adds r0, #0xFF
_08079110:
	asrs r0, r0, #0x08
	adds r3, r0, #0x4
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0807911C
	adds r0, #0xFF
_0807911C:
	asrs r0, r0, #0x08
	adds r0, #0x38
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080791C8 @ =0x00004059
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r3, #0x20
	orrs r0, r3
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	ldr r0, _080791CC @ =0x080793C5
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x84
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r1, #0x03
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080791D0 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080791BC: .4byte 0x03000F6C
_080791C0: .4byte 0xFFFFFB34
_080791C4: .4byte 0x00000B33
_080791C8: .4byte 0x00004059
_080791CC: .4byte sub_80793C4
_080791D0: .4byte sub_8087540
	thumb_func_start sub_80791D4
sub_80791D4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079278
	adds r0, r5, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079208 @ =0x08079395
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	movs r6, #0x00
	str r6, [r0, #0x00]
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	bne _0807920C
	str r0, [r5, #0x4C]
	b _08079278
	.byte 0x00, 0x00
_08079208: .4byte sub_8079394
_0807920C:
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r6, [r0, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807926C
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r6, [r0, #0x00]
	b _08079274
_0807926C:
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x01
	strh r0, [r1, #0x00]
_08079274:
	ldr r0, _08079280 @ =0x08079349
	str r0, [r4, #0x4C]
_08079278:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079280: .4byte sub_8079348
	thumb_func_start sub_8079284
sub_8079284:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079316
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08079316
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080792D0 @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080792D4
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _080792E4
_080792D0: .4byte 0x03000F6C
_080792D4:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x07
_080792E4:
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0807931C @ =0x08079321
	str r0, [r4, #0x4C]
_08079316:
	pop {r4}
	pop {r0}
	bx r0
_0807931C: .4byte sub_8079320
