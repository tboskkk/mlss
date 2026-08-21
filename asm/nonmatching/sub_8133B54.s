	.syntax unified
	.text

	thumb_func_start sub_8133B54
sub_8133B54:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08133BB4
	adds r2, r4, #0x0
	adds r2, #0xAC
	movs r1, #0x00
	ldsh r0, [r2, r1]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bge _08133BA0
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	ldr r0, _08133B9C @ =0x08133BC1
	b _08133BB2
	.byte 0x00, 0x00
_08133B9C: .4byte sub_8133BC0
_08133BA0:
	movs r0, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08133BBC @ =0x081334F5
_08133BB2:
	str r0, [r4, #0x4C]
_08133BB4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08133BBC: .4byte sub_81334F4
