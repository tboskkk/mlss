	.syntax unified
	.text

	thumb_func_start sub_809D274
sub_809D274:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809D28A
	adds r0, r2, #0x0
	bl sub_8087540
_0809D28A:
	pop {r0}
	bx r0
