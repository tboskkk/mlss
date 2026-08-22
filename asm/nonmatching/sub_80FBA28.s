	.syntax unified
	.text

	thumb_func_start sub_80FBA28
sub_80FBA28:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0x0C
	ldr r5, [r1, #0x00]
	movs r0, #0x0C
	ldsb r0, [r2, r0]
	cmp r0, #0x00
	bge _080FBA6C
	ldrb r1, [r1, #0x0B]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080FBA56
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FBA66
	b _080FBB44
_080FBA56:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	mov r1, sp
	strb r0, [r1, #0x00]
_080FBA66:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _080FBA70
_080FBA6C:
	movs r0, #0x0C
	ldsb r0, [r2, r0]
_080FBA70:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	ldr r0, [r5, #0x0C]
	ldr r1, [r4, #0x0C]
	subs r0, r0, r1
	ldr r1, [r5, #0x10]
	ldr r2, [r4, #0x10]
	subs r1, r1, r2
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1D
	cmp r0, #0x07
	bhi _080FBB44
	lsls r0, r0, #0x02
	ldr r1, _080FBA98 @ =lbl_080FBA9C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080FBA98: .4byte lbl_080FBA9C
lbl_080FBA9C:
	.4byte _080FBABC
	.4byte _080FBACA
	.4byte _080FBAD6
	.4byte _080FBAF0
	.4byte _080FBAFE
	.4byte _080FBB0C
	.4byte _080FBB1E
	.4byte _080FBB2E
_080FBABC:
	adds r0, r4, #0
	adds r0, #36 @ 0x24
	ldrb r0, [r0, #0]
	lsls r0, r0, #29
	lsrs r0, r0, #29
	subs r0, #2
	b.n _080FBB28
_080FBACA:
	adds r0, r4, #0
	adds r0, #36 @ 0x24
	ldrb r0, [r0, #0]
	lsls r0, r0, #29
	lsrs r0, r0, #29
	b.n _080FBB18
_080FBAD6:
	adds r0, r4, #0
	adds r0, #36 @ 0x24
	ldrb r1, [r0, #0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq.n _080FBB44
	lsls r0, r1, #29
	lsrs r0, r0, #29
	cmp r0, #3
	bhi.n _080FBB44
_080FBAEC:
	movs r0, #1
	b.n _080FBB46
_080FBAF0:
	adds r0, r4, #0
	adds r0, #36 @ 0x24
	ldrb r0, [r0, #0]
	lsls r0, r0, #29
	lsrs r0, r0, #29
	subs r0, #2
	b.n _080FBB18
_080FBAFE:
	adds r0, r4, #0
	adds r0, #36 @ 0x24
	ldrb r0, [r0, #0]
	lsls r0, r0, #29
	lsrs r0, r0, #29
	subs r0, #3
	b.n _080FBB18
_080FBB0C:
	adds r0, r4, #0
	adds r0, #36 @ 0x24
	ldrb r0, [r0, #0]
	lsls r0, r0, #29
	lsrs r0, r0, #29
	subs r0, #4
_080FBB18:
	cmp r0, #2
	bhi.n _080FBB44
	b.n _080FBAEC
_080FBB1E:
	adds r0, r4, #0
	adds r0, #36 @ 0x24
	ldrb r0, [r0, #0]
	lsls r0, r0, #29
	lsrs r0, r0, #29
_080FBB28:
	cmp r0, #4
	bls.n _080FBB44
	b.n _080FBAEC
_080FBB2E:
	adds r0, r4, #0
	adds r0, #36 @ 0x24
	ldrb r1, [r0, #0]
	lsls r0, r1, #29
	lsrs r0, r0, #29
	cmp r0, #5
	bhi.n _080FBAEC
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq.n _080FBAEC
_080FBB44:
	movs r0, #0x00
_080FBB46:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
