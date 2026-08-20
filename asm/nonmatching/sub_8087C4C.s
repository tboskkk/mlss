	.syntax unified
	.text

	thumb_func_start sub_8087C4C
sub_8087C4C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08087C66
	ldr r1, [r4, #0x68]
	cmp r1, #0x00
	beq _08087C64
	adds r0, r4, #0x0
	bl _call_via_r1
_08087C64:
	str r5, [r4, #0x6C]
_08087C66:
	pop {r4, r5}
	pop {r0}
	bx r0
