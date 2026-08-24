	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0x0
	adds r6, r2, #0x0
	ldr r1, _080F6108 @ =0x03001038
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x00]
	bl _call_via_r1
	ldr r1, [r6, #0x04]
	muls r0, r1
	cmp r0, #0x00
	bge _080F60E0
	adds r0, #0x1F
_080F60E0:
	asrs r4, r0, #0x05
	ldr r3, _080F610C @ =0x03000FD8
	ldr r0, [r3, #0x00]
	ldr r2, _080F6110 @ =0x0000035A
	adds r1, r0, r2
	movs r2, #0x00
	strh r2, [r1, #0x00]
	movs r1, #0xD6
	lsls r1, r1, #0x02
	adds r0, r0, r1
	strh r2, [r0, #0x00]
	ldr r0, [r6, #0x00]
	cmp r0, #0x07
	bhi _080F61C6
	lsls r0, r0, #0x02
	ldr r1, _080F6114 @ =lbl_080F6118
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F6108: .4byte 0x03001038
_080F610C: .4byte 0x03000FD8
_080F6110: .4byte 0x0000035A
_080F6114: .4byte lbl_080F6118
lbl_080F6118:
	.4byte _080F6138
	.4byte _080F6148
	.4byte _080F6156
	.4byte _080F6164
	.4byte _080F617C
	.4byte _080F618C
	.4byte _080F61A4
	.4byte _080F61B4
_080F6138:
	ldr r1, [r3, #0]
	ldr r0, [r6, #4]
	negs r0, r0
	ldr r2, [pc, #4] @ (0x80f6144)
	b.n _080F61AE
	movs r0, r0
	lsls r2, r3, #13
	movs r0, r0
_080F6148:
	ldr r0, [r3, #0]
	movs r3, #214 @ 0xd6
	lsls r3, r3, #2
	adds r1, r0, r3
	strh r4, [r1, #0]
	negs r1, r4
	b.n _080F6180
_080F6156:
	ldr r0, [r3, #0]
	ldr r1, [r6, #4]
	movs r3, #214 @ 0xd6
	lsls r3, r3, #2
	adds r0, r0, r3
	strh r1, [r0, #0]
	b.n _080F61C6
_080F6164:
	ldr r0, [r3, #0]
	movs r2, #214 @ 0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	strh r4, [r1, #0]
	ldr r3, [pc, #8] @ (0x80f6178)
	adds r0, r0, r3
	strh r4, [r0, #0]
	b.n _080F61C6
	movs r0, r0
	lsls r2, r3, #13
	movs r0, r0
_080F617C:
	ldr r0, [r3, #0]
	ldr r1, [r6, #4]
_080F6180:
	ldr r2, [pc, #4] @ (0x80f6188)
	adds r0, r0, r2
	strh r1, [r0, #0]
	b.n _080F61C6
	lsls r2, r3, #13
	movs r0, r0
_080F618C:
	ldr r0, [r3, #0]
	negs r2, r4
	movs r3, #214 @ 0xd6
	lsls r3, r3, #2
	adds r1, r0, r3
	strh r2, [r1, #0]
	ldr r1, [pc, #4] @ (0x80f61a0)
	adds r0, r0, r1
	strh r4, [r0, #0]
	b.n _080F61C6
	lsls r2, r3, #13
	movs r0, r0
_080F61A4:
	ldr r1, [r3, #0]
	ldr r0, [r6, #4]
	negs r0, r0
	movs r2, #214 @ 0xd6
	lsls r2, r2, #2
_080F61AE:
	adds r1, r1, r2
	strh r0, [r1, #0]
	b.n _080F61C6
_080F61B4:
	ldr r0, [r3, #0]
	negs r2, r4
	movs r3, #214 @ 0xd6
	lsls r3, r3, #2
	adds r1, r0, r3
	strh r2, [r1, #0]
	ldr r1, [pc, #64] @ (0x80f6204)
	adds r0, r0, r1
	strh r2, [r0, #0]
_080F61C6:
	ldr r4, _080F6208 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r5, #0x93
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	ldr r1, [r4, #0x00]
	movs r3, #0xD5
	lsls r3, r3, #0x02
	adds r2, r1, r3
	strh r0, [r2, #0x00]
	adds r1, r1, r5
	ldr r0, [r1, #0x00]
	bl sub_8082D40
	ldr r2, [r4, #0x00]
	ldr r3, _080F620C @ =0x00000356
	adds r1, r2, r3
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x08]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F6210
	movs r0, #0x0F
	adds r3, r1, #0x0
	ands r3, r0
	b _080F6212
	.byte 0x00, 0x00, 0x5A, 0x03, 0x00, 0x00
_080F6208: .4byte 0x03000FD8
_080F620C: .4byte 0x00000356
_080F6210:
	lsls r3, r1, #0x04
_080F6212:
	movs r1, #0xD7
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r1, #0x00
	strh r3, [r0, #0x00]
	ldr r0, _080F6238 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _080F623C @ =0x0000035E
	adds r0, r0, r2
	strh r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldrh r2, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	cmp r1, #0x00
	beq _080F6240
	movs r1, #0xA0
	lsls r1, r1, #0x03
	b _080F6244
_080F6238: .4byte 0x03000FD8
_080F623C: .4byte 0x0000035E
_080F6240:
	movs r1, #0x80
	lsls r1, r1, #0x01
_080F6244:
	orrs r1, r2
	strh r1, [r0, #0x00]
	movs r0, #0x00
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
