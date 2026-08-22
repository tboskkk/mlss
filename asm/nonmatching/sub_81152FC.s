	.syntax unified
	.text

	thumb_func_start sub_81152FC
sub_81152FC:
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsrs r1, r1, #0x1C
	subs r1, #0x01
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x0A
	bhi _081153BE
	lsls r0, r0, #0x02
	ldr r1, _08115318 @ =lbl_0811531C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08115318: .4byte lbl_0811531C
lbl_0811531C:
	.4byte _08115390
	.4byte _08115354
	.4byte _0811536C
	.4byte _08115348
	.4byte _081153A8
	.4byte _081153BE
	.4byte _081153BE
	.4byte _08115378
	.4byte _08115384
	.4byte _0811539C
	.4byte _08115360
_08115348:
	ldr r0, [pc, #4] @ (0x8115350)
	movs r3, #48 @ 0x30
	b.n _081153C2
	movs r0, r0
	str r1, [sp, #48] @ 0x30
	lsrs r4, r7, #32
_08115354:
	ldr r0, [pc, #4] @ (0x811535c)
	movs r3, #26
	movs r5, #1
	b.n _081153C4
	str r6, [sp, #976] @ 0x3d0
	lsrs r4, r7, #32
_08115360:
	ldr r0, [pc, #4] @ (0x8115368)
	movs r3, #1
	movs r5, #9
	b.n _081153C4
	str r7, [sp, #528] @ 0x210
	lsrs r4, r7, #32
_0811536C:
	ldr r0, [pc, #4] @ (0x8115374)
	movs r3, #9
	movs r5, #2
	b.n _081153C4
	ldr r1, [sp, #480] @ 0x1e0
	lsrs r4, r7, #32
_08115378:
	ldr r0, [pc, #4] @ (0x8115380)
	movs r3, #11
	movs r5, #7
	b.n _081153C4
	ldr r6, [sp, #576] @ 0x240
	lsrs r4, r7, #32
_08115384:
	ldr r0, [pc, #4] @ (0x811538c)
	movs r3, #1
	movs r5, #8
	b.n _081153C4
	ldr r7, [sp, #80] @ 0x50
	lsrs r4, r7, #32
_08115390:
	ldr r0, [pc, #4] @ (0x8115398)
	movs r3, #1
	movs r5, #3
	b.n _081153C4
	ldr r1, [sp, #720] @ 0x2d0
	lsrs r4, r7, #32
_0811539C:
	ldr r0, [pc, #4] @ (0x81153a4)
	movs r3, #2
	movs r5, #10
	b.n _081153C4
	ldr r7, [sp, #720] @ 0x2d0
	lsrs r4, r7, #32
_081153A8:
	ldr r0, [pc, #4] @ (0x81153b0)
	movs r3, #1
	movs r5, #6
	b.n _081153C4
	ldr r5, [sp, #272] @ 0x110
	lsrs r4, r7, #32
_081153B4:
	lsls r0, r5, #0x0C
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08115434
_081153BE:
	movs r0, #0x00
	movs r3, #0x00
_081153C2:
	movs r5, #0x00
_081153C4:
	movs r2, #0x00
	cmp r2, r3
	bge _08115432
	adds r1, r0, #0x0
	movs r0, #0x03
	ands r0, r3
	cmp r3, #0x00
	ble _081153F8
	cmp r0, #0x00
	beq _08115404
	cmp r0, #0x01
	ble _081153F8
	cmp r0, #0x02
	ble _081153EC
	ldr r0, [r1, #0x00]
	ldrh r0, [r0, #0x0A]
	cmp r0, r4
	beq _081153B4
	adds r1, #0x04
	movs r2, #0x01
_081153EC:
	ldr r0, [r1, #0x00]
	ldrh r0, [r0, #0x0A]
	cmp r0, r4
	beq _081153B4
	adds r1, #0x04
	adds r2, #0x01
_081153F8:
	ldr r0, [r1, #0x00]
	ldrh r0, [r0, #0x0A]
	cmp r0, r4
	beq _081153B4
	adds r1, #0x04
	b _0811542C
_08115404:
	ldr r0, [r1, #0x00]
	ldrh r0, [r0, #0x0A]
	cmp r0, r4
	beq _081153B4
	adds r2, #0x01
	ldr r0, [r1, #0x04]
	ldrh r0, [r0, #0x0A]
	cmp r0, r4
	beq _081153B4
	adds r2, #0x01
	ldr r0, [r1, #0x08]
	ldrh r0, [r0, #0x0A]
	cmp r0, r4
	beq _081153B4
	adds r2, #0x01
	ldr r0, [r1, #0x0C]
	ldrh r0, [r0, #0x0A]
	cmp r0, r4
	beq _081153B4
	adds r1, #0x10
_0811542C:
	adds r2, #0x01
	cmp r2, r3
	blt _08115404
_08115432:
	ldr r0, _0811543C @ =0x0000FFFF
_08115434:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0811543C: .4byte 0x0000FFFF
