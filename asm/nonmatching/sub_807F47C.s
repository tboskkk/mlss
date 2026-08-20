	.syntax unified
	.text

	thumb_func_start sub_807F47C
sub_807F47C:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	movs r5, #0x00
	ldr r2, _0807F4A0 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x54]
	cmp r1, #0x00
	beq _0807F4BC
	adds r0, r2, #0x0
	movs r4, #0x00
_0807F490:
	ldr r2, [r1, #0x34]
	cmp r1, r3
	bne _0807F4B4
	cmp r5, #0x00
	beq _0807F4A4
	str r2, [r5, #0x34]
	b _0807F4A8
	.byte 0x00, 0x00
_0807F4A0: .4byte 0x03000FD8
_0807F4A4:
	ldr r0, [r0, #0x00]
	str r2, [r0, #0x54]
_0807F4A8:
	str r4, [r3, #0x58]
	str r4, [r3, #0x5C]
	str r4, [r3, #0x60]
	str r4, [r3, #0x64]
	str r4, [r3, #0x34]
	b _0807F4BC
_0807F4B4:
	adds r5, r1, #0x0
	adds r1, r2, #0x0
	cmp r1, #0x00
	bne _0807F490
_0807F4BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
