	.syntax unified
	.text

	thumb_func_start sub_81392CC
sub_81392CC:
	push {r4, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _081392E8
	adds r0, r3, #0x0
	bl sub_80473DC
_081392E8:
	ldr r0, [r4, #0x04]
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
