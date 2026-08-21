	.syntax unified
	.text

	thumb_func_start sub_8106D54
sub_8106D54:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08106D94 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x05]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x05]
	bl sub_810CAD0
	bl sub_810C950
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x01
	movs r1, #0x0B
	bl sub_8019308
	ldr r0, _08106D98 @ =0x081015E5
	str r0, [r4, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x0F
	bl sub_80F7538
	pop {r4}
	pop {r0}
	bx r0
_08106D94: .4byte 0x03000FD8
_08106D98: .4byte sub_81015E4
