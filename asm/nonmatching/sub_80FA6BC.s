	.syntax unified
	.text

	thumb_func_start sub_80FA6BC
sub_80FA6BC:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, [r0, #0x14]
	bl sub_81219C4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FA6D0
	movs r0, #0x01
	b _080FA6D6
_080FA6D0:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
_080FA6D6:
	pop {r4}
	pop {r1}
	bx r1
