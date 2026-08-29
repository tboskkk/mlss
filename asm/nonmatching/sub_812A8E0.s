	push {r4, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	ldr r0, _0812A924 @ =0x0300034C
	ldr r1, _0812A928 @ =0x00000884
	adds r0, r0, r1
	movs r1, #0x01
	negs r1, r1
	str r1, [r0, #0x00]
	ldr r0, [r4, #0x20]
	ldr r1, _0812A92C @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0x00
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	movs r2, #0x00
	movs r3, #0x08
	bl sub_81151E4
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r4, #0x0
	adds r0, #0xA2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r4, #0x69
	movs r0, #0x01
	strb r0, [r4, #0x00]
	add sp, #0x010
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0812A924: .4byte 0x0300034C
_0812A928: .4byte 0x00000884
_0812A92C: .4byte 0x0000FFFF
