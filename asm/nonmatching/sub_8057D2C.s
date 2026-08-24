	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _08057D64 @ =0x086527F4
	mov r9, r0
	mov r10, r9
	ldr r0, _08057D68 @ =0x03000DD0
	ldrb r7, [r0, #0x03]
	ldr r0, _08057D6C @ =0x00000599
	adds r1, r4, r0
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldrh r0, [r4, #0x1C]
	adds r0, #0x05
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x04
	bls _08057D5A
	b _08057EF4
_08057D5A:
	lsls r0, r0, #0x02
	ldr r1, _08057D70 @ =lbl_08057D74
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08057D64: .4byte 0x086527F4
_08057D68: .4byte 0x03000DD0
_08057D6C: .4byte 0x00000599
_08057D70: .4byte lbl_08057D74
lbl_08057D74:
	.4byte _08057D88
	.4byte _08057DD4
	.4byte _08057E28
	.4byte _08057E84
	.4byte _08057EA8
_08057D88:
	ldr r0, [pc, #60] @ (0x8057dc8)
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1, #0]
	adds r0, r4, #0
	bl sub_8059F80
	movs r3, #0
	ldr r2, [pc, #48] @ (0x8057dcc)
	str r3, [r2, #0]
	ldr r1, [pc, #48] @ (0x8057dd0)
	lsls r0, r7, #2
	adds r1, r0, r1
	ldrb r0, [r1, #0]
	cmp r0, #255 @ 0xff
	bne.n _08057DAA
	b.n _08057EE6
_08057DAA:
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
	b.n _08057EE6
	movs r0, r0
	lsls r1, r7, #21
	movs r0, r0
	lsrs r0, r0, #23
	lsls r0, r0, #12
	add r2, sp, #432 @ 0x1b0
	lsrs r2, r7, #32
_08057DD4:
	ldr r6, [pc, #68] @ (0x8057e1c)
	ldr r5, [r6, #0]
	cmp r5, #0
	beq.n _08057DDE
	b.n _08057F22
_08057DDE:
	movs r1, #164 @ 0xa4
	adds r1, r1, r4
	mov r8, r1
	ldr r0, [r1, #0]
	ldr r1, [pc, #56] @ (0x8057e20)
	movs r2, #128 @ 0x80
	lsls r2, r2, #4
	bl CpuFastSet
	str r5, [r6, #0]
	ldr r1, [pc, #48] @ (0x8057e24)
	lsls r0, r7, #2
	adds r0, #1
	adds r1, r0, r1
	ldrb r0, [r1, #0]
	cmp r0, #255 @ 0xff
	beq.n _08057EE6
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0, #0]
	add r0, r9
	str r0, [r6, #4]
	mov r1, r8
	ldr r0, [r1, #0]
	str r0, [r6, #8]
	str r5, [r6, #12]
	adds r0, r6, #0
	bl sub_8019808
	b.n _08057EE6
	movs r0, r0
	lsrs r0, r0, #23
	lsls r0, r0, #12
	ands r0, r0
	lsls r0, r0, #24
	add r2, sp, #432 @ 0x1b0
	lsrs r2, r7, #32
_08057E28:
	ldr r6, [pc, #64] @ (0x8057e6c)
	ldr r5, [r6, #0]
	cmp r5, #0
	bne.n _08057F22
	movs r0, #164 @ 0xa4
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0, #0]
	ldr r1, [pc, #52] @ (0x8057e70)
	movs r2, #128 @ 0x80
	lsls r2, r2, #4
	bl CpuFastSet
	str r5, [r6, #0]
	ldr r1, [pc, #44] @ (0x8057e74)
	lsls r0, r7, #2
	adds r0, #2
	adds r1, r0, r1
	ldrb r0, [r1, #0]
	cmp r0, #255 @ 0xff
	beq.n _08057E78
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0, #0]
	add r0, r9
	str r0, [r6, #4]
	mov r1, r8
	ldr r0, [r1, #0]
	str r0, [r6, #8]
	str r5, [r6, #12]
	adds r0, r6, #0
	bl sub_8019808
	b.n _08057EE6
	lsrs r0, r0, #23
	lsls r0, r0, #12
	str r0, [r0, #0]
	lsls r0, r0, #24
	add r2, sp, #432 @ 0x1b0
	lsrs r2, r7, #32
_08057E78:
	ldr r0, [pc, #4] @ (0x8057e80)
	strh r0, [r4, #28]
	b.n _08057F22
	movs r0, r0
_08057E80:
	.byte 0xFF, 0xFF, 0x00, 0x00
_08057E84:
	.byte 0x06, 0x48, 0x00, 0x68, 0x00, 0x28, 0x4A, 0xD1, 0x20, 0x1C, 0xA4, 0x30, 0x00, 0x68, 0x04, 0x49
	.byte 0x80, 0x22, 0x12, 0x01, 0x82, 0xF1, 0xFE, 0xFB, 0x23, 0xE0, 0x00, 0x00, 0xC0, 0x0D, 0x00, 0x03
	.byte 0x00, 0x80, 0x00, 0x06
_08057EA8:
	.byte 0xAF, 0x21, 0xC9, 0x00, 0x60, 0x18, 0x00, 0x78, 0x00, 0x28, 0x02, 0xD1, 0x20, 0x1C, 0x02, 0xF0
	.byte 0x95, 0xF8, 0x20, 0x1C, 0x03, 0xF0, 0x2E, 0xFA, 0x20, 0x1C, 0x03, 0xF0, 0x95, 0xFC, 0x20, 0x1C
	.byte 0x02, 0xF0, 0xCC, 0xF8, 0x20, 0x1C, 0x02, 0xF0, 0x9D, 0xF8, 0x20, 0x1C, 0x03, 0xF0, 0x7E, 0xFD
	.byte 0x20, 0x1C, 0x03, 0xF0, 0x59, 0xFB, 0x04, 0x48, 0x21, 0x18, 0x00, 0x20, 0x08, 0x70
_08057EE6:
	.byte 0xA0, 0x8B, 0x01, 0x30, 0xA0, 0x83, 0x19, 0xE0, 0x00, 0x00, 0x84, 0x05, 0x00, 0x00
_08057EF4:
	adds r0, r4, #0x0
	bl sub_8057FCC
	adds r0, r4, #0x0
	bl sub_8058148
	adds r0, r4, #0x0
	bl sub_805B154
	adds r0, r4, #0x0
	bl sub_805B8BC
	adds r0, r4, #0x0
	bl sub_8059F24
	ldr r1, _08057F58 @ =0x00000584
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057F22
	adds r0, r4, #0x0
	bl sub_805C14C
_08057F22:
	ldr r0, _08057F5C @ =0x00000579
	adds r5, r4, r0
	ldrb r0, [r5, #0x00]
	cmp r0, #0x00
	beq _08057F46
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x13
	movs r2, #0xC0
	lsls r2, r2, #0x06
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	strb r4, [r5, #0x00]
_08057F46:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08057F58: .4byte 0x00000584
_08057F5C: .4byte 0x00000579
