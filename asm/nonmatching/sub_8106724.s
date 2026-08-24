	push {r4, lr}
	ldr r0, _08106774 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r0, #0xB0
	lsls r0, r0, #0x02
	adds r2, r1, r0
	ldrb r0, [r2, #0x00]
	movs r3, #0x20
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r0, _08106778 @ =0x000002BF
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r4, _0810677C @ =0x00007009
	adds r0, r4, #0x0
	bl sub_8082AAC
	adds r0, r4, #0x0
	bl sub_8082A6C
	ldr r3, _08106780 @ =0x03001034
	ldr r0, _08106784 @ =0x80008000
	ldr r1, _08106788 @ =0x0600F800
	movs r2, #0xA0
	lsls r2, r2, #0x03
	ldr r3, [r3, #0x00]
	bl _call_via_r3
	ldr r0, _0810678C @ =0x08106291
	movs r1, #0x00
	bl sub_807FF48
	movs r1, #0x00
	strh r1, [r0, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106774: .4byte 0x03000FD8
_08106778: .4byte 0x000002BF
_0810677C: .4byte 0x00007009
_08106780: .4byte 0x03001034
_08106784: .4byte 0x80008000
_08106788: .4byte 0x0600F800
_0810678C: .4byte sub_8106290
