	.syntax unified
	.text

	thumb_func_start sub_8148D40
sub_8148D40:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _08148D98
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	adds r1, r0, r1
	adds r1, #0x2A
	ldrb r1, [r1, #0x00]
	movs r3, #0xE9
	lsls r3, r3, #0x01
	adds r2, r4, r3
	strh r1, [r2, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	adds r3, #0x42
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08148DA0 @ =0x081471A1
	str r0, [r5, #0x00]
_08148D98:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08148DA0: .4byte sub_81471A0
