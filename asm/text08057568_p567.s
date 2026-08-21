	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8112FFC
sub_8112FFC:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r4, r5, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r0, [r4, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	adds r6, r5, #0x0
	adds r6, #0xB2
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl __divsi3
	movs r2, #0x1C
	ldsh r1, [r5, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl __divsi3
	movs r2, #0x1E
	ldsh r1, [r5, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x08]
	ldr r2, _08113084 @ =0xFFFFF4B4
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _0811307C
	adds r0, r5, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x14]
	ldr r0, _08113088 @ =0x0811308D
	str r0, [r5, #0x4C]
_0811307C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08113084: .4byte 0xFFFFF4B4
_08113088: .4byte sub_811308C
