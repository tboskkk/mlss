	.syntax unified
	.text

	thumb_func_start sub_8127AB0
sub_8127AB0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0xAE
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	beq _08127ACC
	movs r0, #0x01
	b _08127AD4
_08127ACC:
	adds r0, r4, #0x0
	adds r0, #0xEF
	strb r1, [r0, #0x00]
	movs r0, #0x00
_08127AD4:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
