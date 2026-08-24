	push {lr}
	adds r2, r0, #0x0
	ldr r0, _081067C8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r3, _081067CC @ =0x0000033F
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x10]
	ldrb r1, [r0, #0x12]
	movs r3, #0x08
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _081067C2
	strh r3, [r2, #0x10]
	ldr r1, _081067D0 @ =0x08106215
	str r1, [r2, #0x04]
	adds r0, r2, #0x0
	bl _call_via_r1
_081067C2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081067C8: .4byte 0x03000FD8
_081067CC: .4byte 0x0000033F
_081067D0: .4byte sub_8106214
