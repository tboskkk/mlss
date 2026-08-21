	.syntax unified
	.text

	thumb_func_start sub_812F510
sub_812F510:
	push {lr}
	ldr r0, [r0, #0x20]
	bl sub_8116620
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0812F522
	movs r0, #0x01
	b _0812F524
_0812F522:
	movs r0, #0x00
_0812F524:
	pop {r1}
	bx r1
