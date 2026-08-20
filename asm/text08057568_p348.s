	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_814B804
sub_814B804:
	push {r4, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0814B82E
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814B82E:
	adds r0, r3, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814B83E
	ldr r0, _0814B844 @ =0x0814A0A5
	str r0, [r4, #0x00]
_0814B83E:
	pop {r4}
	pop {r0}
	bx r0
_0814B844: .4byte sub_814A0A4
