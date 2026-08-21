	.syntax unified
	.text

	thumb_func_start sub_805FF30
sub_805FF30:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805FF50
	ldr r1, [r4, #0x68]
	cmp r1, #0x00
	beq _0805FF4C
	adds r0, r4, #0x0
	bl _call_via_r1
_0805FF4C:
	movs r0, #0x00
	str r0, [r4, #0x6C]
_0805FF50:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
