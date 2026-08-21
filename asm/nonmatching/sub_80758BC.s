	.syntax unified
	.text

	thumb_func_start sub_80758BC
sub_80758BC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075956
	ldr r0, [r5, #0x18]
	movs r4, #0xC0
	lsls r4, r4, #0x04
	adds r0, r0, r4
	str r0, [r5, #0x18]
	adds r0, r5, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	adds r0, r0, r4
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r4, #0x00
	movs r0, #0xE0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0807595C @ =0x08075BB9
	str r0, [r5, #0x58]
	ldr r0, _08075960 @ =0x08075B75
	str r0, [r5, #0x5C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	str r4, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, _08075964 @ =0x08075969
	str r0, [r5, #0x4C]
_08075956:
	pop {r4, r5}
	pop {r0}
	bx r0
_0807595C: .4byte sub_8075BB8
_08075960: .4byte sub_8075B74
_08075964: .4byte sub_8075968
