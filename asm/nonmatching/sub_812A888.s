	.syntax unified
	.text

	thumb_func_start sub_812A888
sub_812A888:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x20]
	bl sub_8116620
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	beq _0812A89E
	movs r0, #0x01
	b _0812A8A6
_0812A89E:
	adds r0, r4, #0x0
	adds r0, #0x69
	strb r1, [r0, #0x00]
	movs r0, #0x00
_0812A8A6:
	pop {r4}
	pop {r1}
	bx r1
