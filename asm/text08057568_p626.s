	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8109DC4
sub_8109DC4:
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0x0
	ldr r4, [r2, #0x08]
	adds r0, r4, #0x0
	adds r0, #0x7C
	ldrh r0, [r0, #0x00]
	ldrh r1, [r2, #0x10]
	adds r0, r0, r1
	movs r3, #0x00
	strh r0, [r2, #0x10]
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x17
	cmp r0, r1
	ble _08109E0C
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x08]
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x04]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x06]
	str r3, [r2, #0x04]
	str r3, [r4, #0x4C]
	b _08109E84
_08109E0C:
	movs r0, #0x10
	ldsh r5, [r2, r0]
	movs r1, #0x12
	ldsh r0, [r2, r1]
	lsls r3, r0, #0x08
	movs r1, #0x14
	ldsh r0, [r2, r1]
	lsls r7, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [r0, #0x00]
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _08109E2E
	adds r0, #0x3F
_08109E2E:
	asrs r6, r0, #0x06
	subs r0, r1, r3
	muls r0, r6
	cmp r0, #0x00
	bge _08109E3A
	adds r0, #0xFF
_08109E3A:
	asrs r0, r0, #0x08
	adds r0, r3, r0
	str r0, [r4, #0x10]
	subs r0, r2, r7
	muls r0, r6
	cmp r0, #0x00
	bge _08109E4A
	adds r0, #0xFF
_08109E4A:
	asrs r0, r0, #0x08
	adds r0, r7, r0
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [r0, #0x00]
	subs r0, #0x10
	ldr r3, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_80877FC
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldr r2, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x01
	subs r0, r0, r1
	muls r0, r6
	cmp r0, #0x00
	bge _08109E7C
	adds r0, #0xFF
_08109E7C:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	strh r0, [r2, #0x04]
	strh r0, [r2, #0x06]
_08109E84:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
