	.syntax unified
	.text

	thumb_func_start sub_8106D20
sub_8106D20:
	push {lr}
	ldr r1, _08106D4C @ =0x03000FD8
	ldr r1, [r1, #0x00]
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r3, [r1, #0x00]
	ldrb r2, [r3, #0x05]
	movs r1, #0x04
	negs r1, r1
	ands r1, r2
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r3, #0x05]
	ldr r1, _08106D50 @ =0x081054D5
	str r1, [r0, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x0E
	bl sub_80F7538
	pop {r0}
	bx r0
_08106D4C: .4byte 0x03000FD8
_08106D50: .4byte sub_81054D4
