	.syntax unified
	.text

	thumb_func_start sub_810C398
sub_810C398:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	ldr r6, _0810C3D8 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0810C3DC
	ldrh r0, [r3, #0x16]
	movs r1, #0x01
	ands r1, r0
	lsls r5, r1, #0x02
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r2, r1
	adds r0, r0, r5
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0810C40A
	ldr r0, [r4, #0x08]
	bl sub_807FB34
	ldr r0, [r6, #0x00]
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	adds r0, r0, r5
	movs r1, #0x00
	str r1, [r0, #0x00]
	str r1, [r4, #0x04]
	b _0810C40A
_0810C3D8: .4byte 0x03000FD8
_0810C3DC:
	ldr r2, [r3, #0x08]
	ldrh r0, [r2, #0x06]
	subs r0, #0x40
	strh r0, [r2, #0x06]
	strh r0, [r2, #0x04]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bgt _0810C404
	strh r1, [r2, #0x06]
	strh r1, [r2, #0x04]
	ldrb r0, [r2, #0x12]
	movs r1, #0x11
	negs r1, r1
	ands r1, r0
	strb r1, [r2, #0x12]
	ldr r0, _0810C410 @ =0x0810C2B5
	str r0, [r3, #0x04]
_0810C404:
	adds r0, r2, #0x0
	bl sub_807BC90
_0810C40A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0810C410: .4byte sub_810C2B4
