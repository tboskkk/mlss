	.syntax unified
	.text

	thumb_func_start sub_805CE78
sub_805CE78:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0x0
	ldr r0, _0805CEA8 @ =0x086527F4
	mov r9, r0
	mov r10, r9
	ldr r0, _0805CEAC @ =0x03000DD0
	ldrb r5, [r0, #0x03]
	ldrh r0, [r4, #0x1C]
	adds r0, #0x05
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x04
	bls _0805CE9C
	b _0805D024
_0805CE9C:
	lsls r0, r0, #0x02
	ldr r1, _0805CEB0 @ =lbl_0805CEB4
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0805CEA8: .4byte 0x086527F4
_0805CEAC: .4byte 0x03000DD0
_0805CEB0: .4byte lbl_0805CEB4
lbl_0805CEB4:
	.4byte _0805CEC8
	.4byte _0805CF14
	.4byte _0805CF74
	.4byte _0805CFDC
	.4byte _0805D010
_0805CEC8:
	ldr r2, [pc, #60] @ (0x805cf08)
	adds r1, r4, r2
	movs r0, #1
	strb r0, [r1, #0]
	adds r0, r4, #0
	bl sub_805D038
	movs r3, #0
	ldr r2, [pc, #48] @ (0x805cf0c)
	str r3, [r2, #0]
	ldr r1, [pc, #48] @ (0x805cf10)
	lsls r0, r5, #2
	adds r1, r0, r1
	ldrb r0, [r1, #0]
	cmp r0, #255 @ 0xff
	bne.n _0805CEEA
	b.n _0805D01C
_0805CEEA:
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0, #0]
	add r0, r9
	str r0, [r2, #4]
	adds r0, r4, #0
	adds r0, #164 @ 0xa4
	ldr r0, [r0, #0]
	str r0, [r2, #8]
	str r3, [r2, #12]
	adds r0, r2, #0
	bl sub_8019808
	b.n _0805D01C
	movs r0, r0
	lsrs r1, r7, #8
	movs r0, r0
	lsrs r0, r0, #23
	lsls r0, r0, #12
	add r2, sp, #432 @ 0x1b0
	lsrs r2, r7, #32
_0805CF14:
	ldr r7, [pc, #80] @ (0x805cf68)
	ldr r6, [r7, #0]
	cmp r6, #0
	beq.n _0805CF1E
	b.n _0805D02A
_0805CF1E:
	ldr r0, [pc, #76] @ (0x805cf6c)
	mov r8, r0
	lsls r5, r5, #2
	adds r0, r5, r0
	ldrb r0, [r0, #0]
	cmp r0, #255 @ 0xff
	beq.n _0805CF3C
	adds r0, r4, #0
	adds r0, #164 @ 0xa4
	ldr r0, [r0, #0]
	ldr r1, [pc, #60] @ (0x805cf70)
	movs r2, #128 @ 0x80
	lsls r2, r2, #4
	bl CpuFastSet
_0805CF3C:
	str r6, [r7, #0]
	adds r0, r5, #1
	mov r2, r8
	adds r1, r0, r2
	ldrb r0, [r1, #0]
	cmp r0, #255 @ 0xff
	beq.n _0805D01C
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0, #0]
	add r0, r9
	str r0, [r7, #4]
	adds r0, r4, #0
	adds r0, #164 @ 0xa4
	ldr r0, [r0, #0]
	str r0, [r7, #8]
	str r6, [r7, #12]
	adds r0, r7, #0
	bl sub_8019808
	b.n _0805D01C
	movs r0, r0
	lsrs r0, r0, #23
	lsls r0, r0, #12
	add r2, sp, #432 @ 0x1b0
	lsrs r2, r7, #32
	ands r0, r0
	lsls r0, r0, #24
_0805CF74:
	ldr r7, [pc, #76] @ (0x805cfc4)
	ldr r6, [r7, #0]
	cmp r6, #0
	bne.n _0805D02A
	ldr r0, [pc, #72] @ (0x805cfc8)
	mov r8, r0
	lsls r5, r5, #2
	adds r0, r5, r0
	ldrb r0, [r0, #1]
	cmp r0, #255 @ 0xff
	beq.n _0805CF9A
	adds r0, r4, #0
	adds r0, #164 @ 0xa4
	ldr r0, [r0, #0]
	ldr r1, [pc, #56] @ (0x805cfcc)
	movs r2, #128 @ 0x80
	lsls r2, r2, #4
	bl CpuFastSet
_0805CF9A:
	str r6, [r7, #0]
	adds r0, r5, #2
	mov r2, r8
	adds r1, r0, r2
	ldrb r0, [r1, #0]
	cmp r0, #255 @ 0xff
	beq.n _0805CFD0
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0, #0]
	add r0, r9
	str r0, [r7, #4]
	adds r0, r4, #0
	adds r0, #164 @ 0xa4
	ldr r0, [r0, #0]
	str r0, [r7, #8]
	str r6, [r7, #12]
	adds r0, r7, #0
	bl sub_8019808
	b.n _0805D01C
	lsrs r0, r0, #23
	lsls r0, r0, #12
	add r2, sp, #432 @ 0x1b0
	lsrs r2, r7, #32
	str r0, [r0, #0]
	lsls r0, r0, #24
_0805CFD0:
	ldr r0, [pc, #4] @ (0x805cfd8)
	strh r0, [r4, #28]
	b.n _0805D02A
	movs r0, r0
_0805CFD8:
	.byte 0xFF, 0xFF, 0x00, 0x00
_0805CFDC:
	.byte 0x09, 0x48, 0x00, 0x68, 0x00, 0x28, 0x22, 0xD1, 0x08, 0x48, 0xA9, 0x00, 0x09, 0x18, 0x88, 0x78
	.byte 0xFF, 0x28, 0x15, 0xD0, 0x20, 0x1C, 0xA4, 0x30, 0x00, 0x68, 0x05, 0x49, 0x80, 0x22, 0x12, 0x01
	.byte 0x7D, 0xF1, 0x4C, 0xFB, 0x0C, 0xE0, 0x00, 0x00, 0xC0, 0x0D, 0x00, 0x03, 0x6C, 0xAA, 0x3A, 0x08
	.byte 0x00, 0x80, 0x00, 0x06
_0805D010:
	.byte 0x20, 0x1C, 0x00, 0xF0, 0xDB, 0xFC, 0x20, 0x1C, 0x00, 0xF0, 0x0C, 0xFB
_0805D01C:
	.byte 0xA0, 0x8B, 0x01, 0x30, 0xA0, 0x83, 0x02, 0xE0
_0805D024:
	adds r0, r4, #0x0
	bl sub_805D3F8
_0805D02A:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
