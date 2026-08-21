	.syntax unified
	.text

	thumb_func_start sub_81219C4
sub_81219C4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x20]
	bl sub_8116620
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x00
	beq _081219DA
	movs r0, #0x01
	b _081219E4
_081219DA:
	movs r2, #0xAB
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strb r0, [r1, #0x00]
	movs r0, #0x00
_081219E4:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
