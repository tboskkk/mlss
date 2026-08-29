	.syntax unified
	.text

	thumb_func_start sub_819A79C
sub_819A79C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldrb r0, [r5, #0x0B]
	lsls r4, r0, #0x08
	movs r1, #0x10
	ldsb r1, [r5, r1]
	ldrb r0, [r5, #0x0F]
	lsls r0, r0, #0x01
	muls r0, r1
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x11
	ldsb r0, [r5, r0]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r1, [r5, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0819A7D6
	adds r0, r5, #0x0
	bl sub_819A770
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0819A7D6:
	ldrb r0, [r5, #0x12]
	lsls r0, r0, #0x04
	ldr r1, _0819A7E8 @ =0x03001B5A
	adds r0, r0, r1
	strh r4, [r0, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0819A7E8: .4byte 0x03001B5A
