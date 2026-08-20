	.syntax unified
	.text

	thumb_func_start sub_81346D0
sub_81346D0:
	push {lr}
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081346E6
_081346D8:
	cmp r0, r1
	bne _081346E0
	movs r0, #0x01
	b _081346E8
_081346E0:
	ldr r0, [r0, #0x04]
	cmp r0, #0x00
	bne _081346D8
_081346E6:
	movs r0, #0x00
_081346E8:
	pop {r1}
	bx r1
