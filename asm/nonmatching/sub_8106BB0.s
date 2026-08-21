	.syntax unified
	.text

	thumb_func_start sub_8106BB0
sub_8106BB0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08106BD8
	ldr r0, _08106BE0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x4C
	ldr r1, _08106BE4 @ =0x081071F1
	bl sub_807FFD8
	movs r2, #0x12
	ldsh r1, [r4, r2]
	strh r1, [r0, #0x12]
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x0C]
	ldr r0, _08106BE8 @ =0x08102F55
	str r0, [r4, #0x04]
_08106BD8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106BE0: .4byte 0x03000FD8
_08106BE4: .4byte sub_81071F0
_08106BE8: .4byte sub_8102F54
