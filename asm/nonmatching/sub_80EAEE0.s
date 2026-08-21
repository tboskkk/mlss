	.syntax unified
	.text

	thumb_func_start sub_80EAEE0
sub_80EAEE0:
	push {lr}
	ldm r2!, {r0}
	cmp r0, #0x00
	bne _080EAEF0
	ldrb r0, [r2, #0x04]
	ldrb r1, [r2, #0x00]
	bl sub_8019508
_080EAEF0:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
