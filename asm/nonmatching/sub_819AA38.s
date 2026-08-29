	.syntax unified
	.text

	thumb_func_start sub_819AA38
sub_819AA38:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldrb r0, [r5, #0x0B]
	lsls r4, r0, #0x08
	movs r1, #0x10
	ldsb r1, [r5, r1]
	ldrb r0, [r5, #0x0F]
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
	beq _0819AA70
	adds r0, r5, #0x0
	bl sub_819A770
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0819AA70:
	adds r0, r4, #0x0
	bl sub_819A96C
	ldr r1, _0819AA98 @ =0x03007FF0
	ldr r3, [r1, #0x00]
	ldrb r1, [r5, #0x12]
	movs r2, #0x03
	ands r2, r1
	lsls r1, r2, #0x01
	adds r1, r1, r2
	lsls r1, r1, #0x02
	adds r3, r3, r1
	movs r1, #0x9A
	lsls r1, r1, #0x03
	adds r3, r3, r1
	strh r0, [r3, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0819AA98: .4byte 0x03007FF0
