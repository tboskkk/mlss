	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	mov r12, r3
	ldr r0, [r5, #0x04]
	cmp r0, #0x09
	bls _080F505C
	b _080F527C
_080F505C:
	lsls r0, r0, #0x02
	ldr r1, _080F5068 @ =lbl_080F506C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F5068: .4byte lbl_080F506C
lbl_080F506C:
	.4byte _080F5094
	.4byte _080F50D0
	.4byte _080F510C
	.4byte _080F5148
	.4byte _080F5160
	.4byte _080F5188
	.4byte _080F51B0
	.4byte _080F51D8
	.4byte _080F5210
	.4byte _080F5248
_080F5094:
	ldr r2, [r5, #8]
	cmp r2, #7
	bgt.n _080F50B0
	ldr r0, [pc, #16] @ (0x80f50ac)
	ldr r0, [r0, #0]
	lsls r1, r2, #2
	adds r0, #88 @ 0x58
	adds r0, r0, r1
	ldr r0, [r0, #0]
	adds r0, #8
	b.n _080F50C0
	movs r0, r0
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F50B0:
	ldr r1, [pc, #24] @ (0x80f50cc)
	movs r0, #208 @ 0xd0
	muls r0, r2
	ldr r1, [r1, #0]
	adds r0, r0, r1
	movs r1, #192 @ 0xc0
	lsls r1, r1, #2
	adds r0, r0, r1
_080F50C0:
	ldr r0, [r0, #16]
	cmp r0, #0
	bge.n _080F50C8
	adds r0, #255 @ 0xff
_080F50C8:
	lsls r0, r0, #8
	b.n _080F527A
	lsrs r4, r3, #31
	lsls r0, r0, #12
_080F50D0:
	ldr r2, [r5, #8]
	cmp r2, #7
	bgt.n _080F50EC
	ldr r0, [pc, #16] @ (0x80f50e8)
	ldr r0, [r0, #0]
	lsls r1, r2, #2
	adds r0, #88 @ 0x58
	adds r0, r0, r1
	ldr r0, [r0, #0]
	adds r0, #8
	b.n _080F50FC
	movs r0, r0
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F50EC:
	ldr r1, [pc, #24] @ (0x80f5108)
	movs r0, #208 @ 0xd0
	muls r0, r2
	ldr r1, [r1, #0]
	adds r0, r0, r1
	movs r1, #192 @ 0xc0
	lsls r1, r1, #2
	adds r0, r0, r1
_080F50FC:
	ldr r0, [r0, #20]
	cmp r0, #0
	bge.n _080F5104
	adds r0, #255 @ 0xff
_080F5104:
	lsls r0, r0, #8
	b.n _080F527A
	lsrs r4, r3, #31
	lsls r0, r0, #12
_080F510C:
	ldr r2, [r5, #8]
	cmp r2, #7
	bgt.n _080F5128
	ldr r0, [pc, #16] @ (0x80f5124)
	ldr r0, [r0, #0]
	lsls r1, r2, #2
	adds r0, #88 @ 0x58
	adds r0, r0, r1
	ldr r0, [r0, #0]
	adds r0, #8
	b.n _080F5138
	movs r0, r0
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F5128:
	ldr r1, [pc, #24] @ (0x80f5144)
	movs r0, #208 @ 0xd0
	muls r0, r2
	ldr r1, [r1, #0]
	adds r0, r0, r1
	movs r1, #192 @ 0xc0
	lsls r1, r1, #2
	adds r0, r0, r1
_080F5138:
	ldr r0, [r0, #24]
	cmp r0, #0
	bge.n _080F5140
	adds r0, #255 @ 0xff
_080F5140:
	lsls r0, r0, #8
	b.n _080F527A
	lsrs r4, r3, #31
	lsls r0, r0, #12
_080F5148:
	ldr r0, [pc, #16] @ (0x80f515c)
	ldr r1, [r0, #0]
	ldr r0, [r5, #8]
	lsls r0, r0, #2
	adds r1, #88 @ 0x58
	adds r1, r1, r0
	ldr r0, [r1, #0]
	adds r0, #236 @ 0xec
	ldrh r4, [r0, #0]
	b.n _080F527C
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F5160:
	ldr r3, [pc, #28] @ (0x80f5180)
	ldr r1, [r5, #8]
	lsls r1, r1, #2
	ldr r0, [pc, #28] @ (0x80f5184)
	ldr r0, [r0, #0]
	ldr r0, [r0, #28]
	ldrb r2, [r0, #1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1, #0]
	lsls r0, r0, #22
	asrs r0, r0, #6
	b.n _080F527A
	cmp r3, #20
	lsrs r0, r2, #1
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F5188:
	ldr r3, [pc, #28] @ (0x80f51a8)
	ldr r1, [r5, #8]
	lsls r1, r1, #2
	ldr r0, [pc, #28] @ (0x80f51ac)
	ldr r0, [r0, #0]
	ldr r0, [r0, #28]
	ldrb r2, [r0, #1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldr r0, [r1, #0]
	lsls r0, r0, #12
	asrs r0, r0, #22
	b.n _080F5278
	cmp r3, #20
	lsrs r0, r2, #1
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F51B0:
	ldr r3, [pc, #28] @ (0x80f51d0)
	ldr r1, [r5, #8]
	lsls r1, r1, #2
	ldr r0, [pc, #28] @ (0x80f51d4)
	ldr r0, [r0, #0]
	ldr r0, [r0, #28]
	ldrb r2, [r0, #1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1, #2]
	lsls r0, r0, #18
	asrs r0, r0, #22
	b.n _080F5278
	cmp r3, #20
	lsrs r0, r2, #1
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F51D8:
	ldr r4, [pc, #44] @ (0x80f5208)
	ldr r3, [r5, #8]
	lsls r3, r3, #2
	ldr r0, [pc, #44] @ (0x80f520c)
	ldr r2, [r0, #0]
	ldr r0, [r2, #28]
	ldrb r1, [r0, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	adds r0, r0, r4
	ldrh r1, [r0, #0]
	lsls r1, r1, #22
	asrs r1, r1, #22
	adds r2, #88 @ 0x58
	adds r2, r2, r3
	ldr r0, [r2, #0]
	adds r0, #228 @ 0xe4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #24
	asrs r0, r0, #24
	b.n _080F5276
	cmp r3, #20
	lsrs r0, r2, #1
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F5210:
	ldr r4, [pc, #44] @ (0x80f5240)
	ldr r3, [r5, #8]
	lsls r3, r3, #2
	ldr r0, [pc, #44] @ (0x80f5244)
	ldr r2, [r0, #0]
	ldr r0, [r2, #28]
	ldrb r1, [r0, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	adds r0, r0, r4
	ldr r1, [r0, #0]
	lsls r1, r1, #12
	asrs r1, r1, #22
	adds r2, #88 @ 0x58
	adds r2, r2, r3
	ldr r0, [r2, #0]
	adds r0, #228 @ 0xe4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #5]
	lsls r0, r0, #24
	asrs r0, r0, #24
	b.n _080F5276
	cmp r3, #20
	lsrs r0, r2, #1
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F5248:
	ldr r4, [pc, #92] @ (0x80f52a8)
	ldr r3, [r5, #8]
	lsls r3, r3, #2
	ldr r0, [pc, #92] @ (0x80f52ac)
	ldr r2, [r0, #0]
	ldr r0, [r2, #28]
	ldrb r1, [r0, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	adds r0, r0, r4
	ldrh r1, [r0, #2]
	lsls r1, r1, #18
	asrs r1, r1, #22
	adds r2, #88 @ 0x58
	adds r2, r2, r3
	ldr r0, [r2, #0]
	adds r0, #228 @ 0xe4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #24
	asrs r0, r0, #24
_080F5276:
	adds r0, r0, r1
_080F5278:
	lsls r0, r0, #16
_080F527A:
	lsrs r4, r0, #16
_080F527C:
	adds r1, r6, #0x0
	adds r1, #0x18
	ldr r2, [r7, #0x2C]
	ldr r0, _080F52B0 @ =0x00001794
	adds r2, r2, r0
	adds r3, r6, #0x0
	adds r3, #0xA8
	movs r6, #0x00
	ldsh r0, [r5, r6]
	str r0, [sp, #0x000]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r12
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x14, 0x2B, 0x50, 0x08, 0xD8, 0x0F, 0x00, 0x03
_080F52B0: .4byte 0x00001794
