	.syntax unified
	.text

	thumb_func_start sub_807F4C4
sub_807F4C4:
	push {lr}
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	ldr r0, [r2, #0x34]
	cmp r0, #0x00
	bne _0807F4F0
	ldr r0, _0807F4F4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x54]
	str r0, [r2, #0x34]
	str r2, [r1, #0x54]
	ldr r0, _0807F4F8 @ =0x0810DD7D
	str r0, [r2, #0x58]
	str r3, [r2, #0x5C]
	str r3, [r2, #0x60]
	str r3, [r2, #0x64]
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0807F4F0:
	pop {r0}
	bx r0
_0807F4F4: .4byte 0x03000FD8
_0807F4F8: .4byte sub_810DD7C
