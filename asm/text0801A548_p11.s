	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8047B08
sub_8047B08:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r3, _08047B28 @ =0x0000023E
	adds r0, r4, r3
	movs r3, #0x00
	ldsh r5, [r0, r3]
	cmp r1, #0x00
	bne _08047B2C
	movs r3, #0x01
	negs r3, r3
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	adds r2, r3, #0x0
	bl sub_80401F0
	b _08047B3A
_08047B28: .4byte 0x0000023E
_08047B2C:
	movs r3, #0x01
	negs r3, r3
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	adds r2, r3, #0x0
	bl sub_80400B0
_08047B3A:
	ldr r1, _08047B54 @ =0x0000023E
	adds r0, r4, r1
	strh r5, [r0, #0x00]
	ldr r3, _08047B58 @ =0x000002B5
	adds r2, r4, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08047B54: .4byte 0x0000023E
_08047B58: .4byte 0x000002B5
