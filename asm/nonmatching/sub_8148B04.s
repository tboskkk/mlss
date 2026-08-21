	.syntax unified
	.text

	thumb_func_start sub_8148B04
sub_8148B04:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _08148B52
	movs r0, #0xBB
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r5
	adds r0, #0x52
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _08148B58 @ =0x0813B1E9
	str r0, [r6, #0x00]
	ldr r0, _08148B5C @ =0x0814765D
	str r0, [r6, #0x0C]
_08148B52:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08148B58: .4byte sub_813B1E8
_08148B5C: .4byte sub_814765C
