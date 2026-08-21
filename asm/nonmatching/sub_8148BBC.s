	.syntax unified
	.text

	thumb_func_start sub_8148BBC
sub_8148BBC:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _08148C14 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r1, #0xBB
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r3, #0xBD
	lsls r3, r3, #0x02
	adds r0, r4, r3
	movs r2, #0x00
	str r2, [r0, #0x00]
	movs r1, #0x10
	adds r3, #0x04
	adds r0, r4, r3
	strh r1, [r0, #0x00]
	movs r1, #0xEA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	strh r2, [r0, #0x00]
	movs r3, #0xCC
	lsls r3, r3, #0x01
	adds r1, r4, r3
	ldr r0, _08148C18 @ =0x08147591
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08148C1C @ =0x0814765D
	str r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08148C14: .4byte 0x0000033E
_08148C18: .4byte sub_8147590
_08148C1C: .4byte sub_814765C
