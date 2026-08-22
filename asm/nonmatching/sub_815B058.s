	.syntax unified
	.text

	thumb_func_start sub_815B058
sub_815B058:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	ldrb r0, [r4, #0x0C]
	cmp r0, #0x12
	bls _0815B066
	b _0815B2AC
_0815B066:
	lsls r0, r0, #0x02
	ldr r1, _0815B070 @ =lbl_0815B074
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0815B070: .4byte lbl_0815B074
lbl_0815B074:
	.4byte _0815B0C0
	.4byte _0815B0C8
	.4byte _0815B100
	.4byte _0815B2AC
	.4byte _0815B11C
	.4byte _0815B140
	.4byte _0815B15C
	.4byte _0815B178
	.4byte _0815B1B0
	.4byte _0815B194
	.4byte _0815B2AC
	.4byte _0815B1E8
	.4byte _0815B204
	.4byte _0815B220
	.4byte _0815B23C
	.4byte _0815B274
	.4byte _0815B1CC
	.4byte _0815B258
	.4byte _0815B290
_0815B0C0:
	ldr r2, [pc, #0] @ (0x815b0c4)
	b.n _0815B0CA
	movs r7, #40 @ 0x28
	lsrs r1, r4, #32
_0815B0C8:
	ldr r2, [pc, #48] @ (0x815b0fc)
_0815B0CA:
	movs r0, #72 @ 0x48
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815F5C8
	adds r5, r0, #0
	ldr r2, [r5, #48] @ 0x30
	movs r1, #16
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	movs r1, #1
	str r1, [sp, #0]
	ldr r4, [r2, #20]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl _call_via_r4
	adds r0, r5, #0
	b.n _0815B2AE
	movs r0, r0
	movs r7, #48 @ 0x30
	lsrs r1, r4, #32
_0815B100:
	ldr r2, [pc, #20] @ (0x815b118)
	movs r0, #68 @ 0x44
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815C8EC
	adds r5, r0, #0
	b.n _0815B2AE
	movs r7, #56 @ 0x38
	lsrs r1, r4, #32
_0815B11C:
	ldr r2, [pc, #28] @ (0x815b13c)
	movs r0, #64 @ 0x40
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815F124
	adds r5, r0, #0
	bl sub_815F0CC
	adds r0, r5, #0
	b.n _0815B2AE
	movs r0, r0
	movs r7, #64 @ 0x40
	lsrs r1, r4, #32
_0815B140:
	ldr r2, [pc, #20] @ (0x815b158)
	movs r0, #68 @ 0x44
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815B820
	adds r5, r0, #0
	b.n _0815B2AE
	movs r7, #72 @ 0x48
	lsrs r1, r4, #32
_0815B15C:
	ldr r2, [pc, #20] @ (0x815b174)
	movs r0, #68 @ 0x44
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815BB4C
	adds r5, r0, #0
	b.n _0815B2AE
	movs r7, #80 @ 0x50
	lsrs r1, r4, #32
_0815B178:
	ldr r2, [pc, #20] @ (0x815b190)
	movs r0, #60 @ 0x3c
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815F354
	adds r5, r0, #0
	b.n _0815B2AE
	movs r7, #88 @ 0x58
	lsrs r1, r4, #32
_0815B194:
	ldr r2, [pc, #20] @ (0x815b1ac)
	movs r0, #60 @ 0x3c
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815F290
	adds r5, r0, #0
	b.n _0815B2AE
	movs r7, #96 @ 0x60
	lsrs r1, r4, #32
_0815B1B0:
	ldr r2, [pc, #20] @ (0x815b1c8)
	movs r0, #56 @ 0x38
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815F238
	adds r5, r0, #0
	b.n _0815B2AE
	movs r7, #104 @ 0x68
	lsrs r1, r4, #32
_0815B1CC:
	ldr r2, [pc, #20] @ (0x815b1e4)
	movs r0, #56 @ 0x38
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815F1F0
	adds r5, r0, #0
	b.n _0815B2AE
	movs r7, #104 @ 0x68
	lsrs r1, r4, #32
_0815B1E8:
	ldr r2, [pc, #20] @ (0x815b200)
	movs r0, #56 @ 0x38
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815F064
	adds r5, r0, #0
	b.n _0815B2AE
	movs r7, #112 @ 0x70
	lsrs r1, r4, #32
_0815B204:
	ldr r2, [pc, #20] @ (0x815b21c)
	movs r0, #60 @ 0x3c
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815CC60
	adds r5, r0, #0
	b.n _0815B2AE
	movs r7, #120 @ 0x78
	lsrs r1, r4, #32
_0815B220:
	ldr r2, [pc, #20] @ (0x815b238)
	movs r0, #56 @ 0x38
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815EF58
	adds r5, r0, #0
	b.n _0815B2AE
	movs r7, #128 @ 0x80
	lsrs r1, r4, #32
_0815B23C:
	ldr r2, [pc, #20] @ (0x815b254)
	movs r0, #56 @ 0x38
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815EE88
	adds r5, r0, #0
	b.n _0815B2AE
	movs r7, #136 @ 0x88
	lsrs r1, r4, #32
_0815B258:
	ldr r2, [pc, #20] @ (0x815b270)
	movs r0, #64 @ 0x40
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815EE44
	adds r5, r0, #0
	b.n _0815B2AE
	movs r7, #144 @ 0x90
	lsrs r1, r4, #32
_0815B274:
	ldr r2, [pc, #20] @ (0x815b28c)
	movs r0, #60 @ 0x3c
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815EE08
	adds r5, r0, #0
	b.n _0815B2AE
	movs r7, #152 @ 0x98
	lsrs r1, r4, #32
_0815B290:
	ldr r2, [pc, #20] @ (0x815b2a8)
	movs r0, #56 @ 0x38
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815ED84
	adds r5, r0, #0
	b.n _0815B2AE
	movs r7, #160 @ 0xa0
	lsrs r1, r4, #32
_0815B2AC:
	movs r0, #0x00
_0815B2AE:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
