	.syntax unified
	.text

	thumb_func_start sub_819A72C
sub_819A72C:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r4, r1, #0x0
	ldrb r0, [r2, #0x1B]
	cmp r0, #0x00
	beq _0819A73E
	subs r0, #0x01
	strb r0, [r2, #0x1B]
	b _0819A76A
_0819A73E:
	ldrb r0, [r2, #0x19]
	strb r0, [r2, #0x1B]
	ldrh r3, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r1, #0x0
	ands r0, r3
	cmp r0, #0x00
	beq _0819A764
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r1, #0x0
	eors r0, r3
	strh r0, [r2, #0x00]
	ldr r1, [r4, #0x10]
	adds r0, r2, #0x0
	bl _call_via_r1
	b _0819A76A
_0819A764:
	adds r0, r1, #0x0
	orrs r0, r3
	strh r0, [r2, #0x00]
_0819A76A:
	pop {r4}
	pop {r0}
	bx r0
