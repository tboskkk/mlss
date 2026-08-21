	.syntax unified
	.text

	thumb_func_start sub_819A6A8
sub_819A6A8:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r4, r1, #0x0
	ldrb r0, [r2, #0x17]
	cmp r0, #0x00
	beq _0819A6BA
	subs r0, #0x01
	strb r0, [r2, #0x17]
	b _0819A6E6
_0819A6BA:
	ldrb r0, [r2, #0x15]
	strb r0, [r2, #0x17]
	ldrh r3, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r1, #0x0
	ands r0, r3
	cmp r0, #0x00
	beq _0819A6E0
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r1, #0x0
	eors r0, r3
	strh r0, [r2, #0x00]
	ldr r1, [r4, #0x08]
	adds r0, r2, #0x0
	bl _call_via_r1
	b _0819A6E6
_0819A6E0:
	adds r0, r1, #0x0
	orrs r0, r3
	strh r0, [r2, #0x00]
_0819A6E6:
	pop {r4}
	pop {r0}
	bx r0
