	.syntax unified
	.text

	thumb_func_start sub_809C9DC
sub_809C9DC:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809C9F0
	movs r0, #0x00
	str r0, [r2, #0x4C]
_0809C9F0:
	pop {r0}
	bx r0
