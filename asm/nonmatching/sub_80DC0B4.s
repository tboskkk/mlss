	.syntax unified
	.text

	thumb_func_start sub_80DC0B4
sub_80DC0B4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DC0CC
	ldr r0, [r4, #0x28]
	bl sub_808738C
	adds r0, r4, #0x0
	bl sub_8087540
_080DC0CC:
	pop {r4}
	pop {r0}
	bx r0
