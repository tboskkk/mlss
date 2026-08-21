	.syntax unified
	.text

	thumb_func_start sub_8112350
sub_8112350:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	ldr r4, _08112390 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r5, #0x06
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0811236E
	str r3, [r2, #0x54]
_0811236E:
	ldr r0, [r4, #0x00]
	adds r0, #0x84
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08112388
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08112388
	str r3, [r2, #0x54]
_08112388:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08112390: .4byte 0x03000FD8
