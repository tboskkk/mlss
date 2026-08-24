	.syntax unified
	.text

	thumb_func_start sub_80DE164
sub_80DE164:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r6, _080DE1E4 @ =0x03000FD8
	ldr r4, [r0, #0x2C]
	bl sub_8087CE4
	mov r0, r9
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080DE18A
	b _080DE494
_080DE18A:
	ldr r0, _080DE1E8 @ =0x084FCE8C
	ldr r1, [r6, #0x00]
	ldr r2, _080DE1EC @ =0x00000349
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r0
	ldrh r5, [r1, #0x00]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080DE1A2
	adds r1, #0xFF
_080DE1A2:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _080DE1AC
	adds r0, #0xFF
_080DE1AC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080DE1B8
	adds r3, #0xFF
_080DE1B8:
	asrs r3, r3, #0x08
	subs r3, #0x02
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_80DF024
	ldr r0, [r6, #0x00]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	cmp r0, #0x0D
	bls _080DE1D8
	b _080DE488
_080DE1D8:
	lsls r0, r0, #0x02
	ldr r1, _080DE1F0 @ =lbl_080DE1F4
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080DE1E4: .4byte 0x03000FD8
_080DE1E8: .4byte 0x084FCE8C
_080DE1EC: .4byte 0x00000349
_080DE1F0: .4byte lbl_080DE1F4
lbl_080DE1F4:
	.4byte _080DE22C
	.4byte _080DE280
	.4byte _080DE488
	.4byte _080DE488
	.4byte _080DE488
	.4byte _080DE488
	.4byte _080DE488
	.4byte _080DE488
	.4byte _080DE488
	.4byte _080DE488
	.4byte _080DE2AC
	.4byte _080DE30C
	.4byte _080DE3D0
	.4byte _080DE42C
_080DE22C:
	ldr r1, [r4, #40] @ 0x28
	adds r0, r1, #0
	adds r0, #246 @ 0xf6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, #248 @ 0xf8
	movs r3, #0
	ldrsh r1, [r1, r3]
	ldr r2, [pc, #60] @ (0x80de27c)
	ldr r2, [r2, #0]
	movs r3, #183 @ 0xb7
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2, #0]
	ldrh r2, [r2, #8]
	bl sub_8117C50
	adds r5, r0, #0
	ldr r0, [r4, #40] @ 0x28
	adds r0, #246 @ 0xf6
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r6, r5, r0
	ldr r1, [r4, #56] @ 0x38
	cmp r1, #0
	bge.n _080DE262
	adds r1, #255 @ 0xff
_080DE262:
	asrs r1, r1, #8
	ldr r2, [r4, #60] @ 0x3c
	cmp r2, #0
	bge.n _080DE26C
	adds r2, #255 @ 0xff
_080DE26C:
	asrs r2, r2, #8
	adds r0, r4, #0
	adds r0, #197 @ 0xc5
	movs r3, #0
	ldrsb r3, [r0, r3]
	movs r0, #1
	b.n _080DE3BA
	movs r0, r0
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080DE280:
	ldr r0, [r4, #40] @ 0x28
	bl sub_8108CD0
	ldr r0, [r4, #40] @ 0x28
	bl sub_8108928
	ldr r0, [r4, #40] @ 0x28
	bl sub_81089A4
	ldr r0, [r4, #40] @ 0x28
	bl sub_8108C90
	ldr r0, [r4, #40] @ 0x28
	bl sub_8108C64
	ldr r0, [r4, #40] @ 0x28
	bl sub_8108C38
	ldr r0, [r4, #40] @ 0x28
	bl sub_8108CBC
	b.n _080DE48E
_080DE2AC:
	ldr r1, [r4, #40] @ 0x28
	adds r0, r1, #0
	adds r0, #252 @ 0xfc
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, #254 @ 0xfe
	movs r3, #0
	ldrsh r1, [r1, r3]
	ldr r2, [pc, #72] @ (0x80de308)
	ldr r2, [r2, #0]
	movs r3, #183 @ 0xb7
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2, #0]
	ldrh r2, [r2, #8]
	bl sub_8117C50
	adds r5, r0, #0
	ldr r0, [r4, #40] @ 0x28
	adds r0, #252 @ 0xfc
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r6, r5, r0
	ldr r1, [r4, #56] @ 0x38
	cmp r1, #0
	bge.n _080DE2E2
	adds r1, #255 @ 0xff
_080DE2E2:
	asrs r1, r1, #8
	ldr r2, [r4, #60] @ 0x3c
	cmp r2, #0
	bge.n _080DE2EC
	adds r2, #255 @ 0xff
_080DE2EC:
	asrs r2, r2, #8
	adds r0, r4, #0
	adds r0, #197 @ 0xc5
	movs r3, #0
	ldrsb r3, [r0, r3]
	movs r0, #1
	str r0, [sp, #0]
	adds r0, r6, #0
	bl sub_807CFB8
	ldr r0, [r4, #40] @ 0x28
	adds r0, #252 @ 0xfc
	strh r5, [r0, #0]
	b.n _080DE48E
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080DE30C:
	ldr r1, [r4, #40] @ 0x28
	adds r0, r1, #0
	adds r0, #252 @ 0xfc
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, #254 @ 0xfe
	movs r3, #0
	ldrsh r1, [r1, r3]
	ldr r3, [pc, #172] @ (0x80de3cc)
	ldr r2, [r3, #0]
	movs r3, #183 @ 0xb7
	lsls r3, r3, #2
	mov sl, r3
	add r2, sl
	ldr r2, [r2, #0]
	ldrh r2, [r2, #8]
	bl sub_8117C50
	adds r5, r0, #0
	ldr r0, [r4, #40] @ 0x28
	adds r0, #252 @ 0xfc
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r6, r5, r0
	ldr r0, [r4, #56] @ 0x38
	cmp r0, #0
	bge.n _080DE344
	adds r0, #255 @ 0xff
_080DE344:
	asrs r0, r0, #8
	adds r1, r0, #0
	subs r1, #12
	ldr r2, [r4, #60] @ 0x3c
	cmp r2, #0
	bge.n _080DE352
	adds r2, #255 @ 0xff
_080DE352:
	asrs r2, r2, #8
	subs r2, #4
	adds r7, r4, #0
	adds r7, #197 @ 0xc5
	movs r3, #0
	ldrsb r3, [r7, r3]
	movs r0, #1
	mov r8, r0
	str r0, [sp, #0]
	adds r0, r6, #0
	bl sub_807CFB8
	ldr r0, [r4, #40] @ 0x28
	adds r0, #252 @ 0xfc
	strh r5, [r0, #0]
	ldr r1, [r4, #40] @ 0x28
	adds r0, r1, #0
	adds r0, #246 @ 0xf6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, #248 @ 0xf8
	movs r3, #0
	ldrsh r1, [r1, r3]
	ldr r3, [pc, #72] @ (0x80de3cc)
	ldr r2, [r3, #0]
	add r2, sl
	ldr r2, [r2, #0]
	ldrh r2, [r2, #8]
	bl sub_8117C50
	adds r5, r0, #0
	ldr r0, [r4, #40] @ 0x28
	adds r0, #246 @ 0xf6
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r6, r5, r0
	ldr r0, [r4, #56] @ 0x38
	cmp r0, #0
	bge.n _080DE3A2
	adds r0, #255 @ 0xff
_080DE3A2:
	asrs r0, r0, #8
	adds r1, r0, #0
	adds r1, #12
	ldr r2, [r4, #60] @ 0x3c
	cmp r2, #0
	bge.n _080DE3B0
	adds r2, #255 @ 0xff
_080DE3B0:
	asrs r2, r2, #8
	adds r2, #4
	movs r3, #0
	ldrsb r3, [r7, r3]
	mov r0, r8
_080DE3BA:
	str r0, [sp, #0]
	adds r0, r6, #0
	bl sub_807CFB8
	ldr r0, [r4, #40] @ 0x28
	adds r0, #246 @ 0xf6
	strh r5, [r0, #0]
	b.n _080DE48E
	movs r0, r0
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080DE3D0:
	ldr r1, [r4, #16]
	cmp r1, #0
	bge.n _080DE3D8
	adds r1, #255 @ 0xff
_080DE3D8:
	asrs r1, r1, #8
	ldr r0, [r4, #20]
	cmp r0, #0
	bge.n _080DE3E2
	adds r0, #255 @ 0xff
_080DE3E2:
	asrs r0, r0, #8
	adds r2, r0, #2
	ldr r3, [r4, #24]
	cmp r3, #0
	bge.n _080DE3EE
	adds r3, #255 @ 0xff
_080DE3EE:
	asrs r3, r3, #8
	subs r3, #2
	str r4, [sp, #0]
	movs r0, #203 @ 0xcb
	bl sub_80DF024
	ldr r0, [r4, #40] @ 0x28
	ldr r1, [pc, #40] @ (0x80de428)
	ldr r1, [r1, #0]
	movs r2, #183 @ 0xb7
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r2, [r1, #0]
	movs r3, #128 @ 0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	ldrh r2, [r2, #8]
	adds r1, r1, r2
	lsls r1, r1, #16
	lsrs r1, r1, #16
	movs r2, #200 @ 0xc8
	bl sub_810857C
	ldr r0, [r4, #40] @ 0x28
	movs r1, #200 @ 0xc8
	bl sub_81083EC
	b.n _080DE48E
	movs r0, r0
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080DE42C:
	ldr r1, [r4, #16]
	cmp r1, #0
	bge.n _080DE434
	adds r1, #255 @ 0xff
_080DE434:
	asrs r1, r1, #8
	ldr r0, [r4, #20]
	cmp r0, #0
	bge.n _080DE43E
	adds r0, #255 @ 0xff
_080DE43E:
	asrs r0, r0, #8
	adds r2, r0, #2
	ldr r3, [r4, #24]
	cmp r3, #0
	bge.n _080DE44A
	adds r3, #255 @ 0xff
_080DE44A:
	asrs r3, r3, #8
	subs r3, #2
	str r4, [sp, #0]
	movs r0, #203 @ 0xcb
	bl sub_80DF024
	ldr r0, [r4, #40] @ 0x28
	ldr r1, [pc, #40] @ (0x80de484)
	ldr r1, [r1, #0]
	movs r2, #183 @ 0xb7
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r2, [r1, #0]
	movs r3, #128 @ 0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	ldrh r2, [r2, #8]
	adds r1, r1, r2
	lsls r1, r1, #16
	lsrs r1, r1, #16
	movs r2, #200 @ 0xc8
	bl sub_81086B4
	ldr r0, [r4, #40] @ 0x28
	movs r1, #200 @ 0xc8
	bl sub_81084B4
	b.n _080DE48E
	movs r0, r0
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080DE488:
	mov r0, r9
	bl sub_807C298
_080DE48E:
	mov r0, r9
	bl sub_807C298
_080DE494:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
