	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x30]
	cmp r0, #0x00
	bne _0809C978
	ldr r0, _0809C974 @ =0x0809C955
	str r0, [r1, #0x4C]
	movs r0, #0x01
	b _0809C97A
	.byte 0x00, 0x00
_0809C974: .4byte sub_809C954
_0809C978:
	movs r0, #0x00
_0809C97A:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
