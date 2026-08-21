	.syntax unified
	.text

	thumb_func_start sub_8097CB4
sub_8097CB4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08097D4C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x88
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08097D44
	subs r0, #0x01
	strh r0, [r1, #0x00]
	bl sub_807FB04
	adds r4, r0, #0x0
	ldr r0, [r5, #0x38]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r0, [r5, #0x3C]
	str r0, [r4, #0x08]
	adds r0, r5, #0x0
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	subs r1, #0x16
	lsls r1, r1, #0x08
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0xC0
	lsls r0, r0, #0x01
	bl sub_81DD77C
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x99
	bl sub_81DD77C
	movs r1, #0x4C
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0xC0
	lsls r0, r0, #0x01
	bl sub_81DD77C
	movs r1, #0xA0
	lsls r1, r1, #0x02
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x04]
	ldr r1, [r0, #0x08]
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x00]
	str r4, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2C
	bl play_sfx_80195B4
_08097D44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08097D4C: .4byte 0x03000FF4
