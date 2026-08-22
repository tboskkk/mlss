	.syntax unified
	.text

	thumb_func_start sub_803EA00
sub_803EA00:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	ldr r0, [r0, #0x14]
	mov r8, r0
	ldr r0, _0803EBDC @ =0x00000291
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0803EA22
	bl _0803F3B8
_0803EA22:
	mov r2, r8
	adds r2, #0xFC
	ldrb r1, [r2, #0x00]
	movs r0, #0x78
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	beq _0803EA7C
	mov r0, r8
	bl sub_8027378
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _0803EA7C
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1C
	cmp r0, #0x01
	beq _0803EA68
	cmp r0, #0x02
	bne _0803EA72
	ldr r2, _0803EBE0 @ =0x0300034C
	ldr r0, _0803EBE4 @ =0x00000884
	adds r2, r2, r0
	mov r0, r8
	adds r0, #0xF6
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x10
	subs r0, #0x02
	ldrh r0, [r0, #0x00]
	orrs r1, r0
	ldr r0, [r2, #0x00]
	bics r0, r1
	str r0, [r2, #0x00]
_0803EA68:
	mov r0, r8
	adds r0, #0xF6
	strh r3, [r0, #0x00]
	subs r0, #0x02
	strh r3, [r0, #0x00]
_0803EA72:
	ldrb r1, [r4, #0x00]
	movs r0, #0x79
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_0803EA7C:
	mov r2, r8
	adds r2, #0xF8
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	mov r1, r8
	adds r1, #0x28
	str r1, [sp, #0x008]
	movs r4, #0x80
	lsls r4, r4, #0x02
	add r4, r8
	ldr r2, [r4, #0x00]
	str r2, [sp, #0x00C]
	movs r5, #0x81
	lsls r5, r5, #0x02
	add r5, r8
	ldr r6, [r5, #0x00]
	movs r3, #0x00
	str r3, [sp, #0x010]
	ldr r3, _0803EBE8 @ =0x0000020A
	add r3, r8
	ldrb r2, [r3, #0x00]
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	beq _0803EB6A
	movs r1, #0x60
	ands r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x010]
	ldr r7, [sp, #0x00C]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bhi _0803EAFC
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r3, #0x00]
	ldr r1, [r4, #0x00]
	ldr r2, _0803EBEC @ =0x00000351
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r3, #0x41
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r2, [r5, #0x00]
	cmp r2, #0x00
	beq _0803EAFC
	ldr r4, _0803EBEC @ =0x00000351
	adds r2, r2, r4
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
_0803EAFC:
	ldr r4, _0803EBE8 @ =0x0000020A
	add r4, r8
	ldrb r1, [r4, #0x00]
	movs r3, #0x60
	ands r3, r1
	cmp r3, #0x00
	beq _0803EB6A
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0803EB6A
	movs r0, #0xC7
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r2, #0x20
	eors r2, r3
	negs r1, r2
	orrs r1, r2
	asrs r1, r1, #0x1F
	movs r2, #0x04
	ands r1, r2
	mov r2, r8
	adds r2, #0xE8
	adds r2, r2, r1
	ldr r3, [r2, #0x00]
	ldrb r1, [r3, #0x0A]
	lsls r1, r1, #0x18
	ldrb r2, [r3, #0x09]
	lsls r2, r2, #0x10
	orrs r1, r2
	ldrb r2, [r3, #0x08]
	lsls r2, r2, #0x08
	orrs r1, r2
	ldrb r2, [r3, #0x07]
	orrs r1, r2
	ldr r2, [sp, #0x00C]
	adds r2, #0x54
	ldrb r2, [r2, #0x00]
	ldr r5, [sp, #0x00C]
	movs r7, #0xD1
	lsls r7, r7, #0x02
	adds r3, r5, r7
	ldrb r3, [r3, #0x00]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	bl sub_80F028C
	ldrb r1, [r4, #0x00]
	movs r0, #0x61
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_0803EB6A:
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0803EB7C
	b _0803ED78
_0803EB7C:
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	beq _0803EB84
	b _0803ED78
_0803EB84:
	ldr r0, _0803EBF0 @ =0x00000209
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0803EB94
	b _0803ED78
_0803EB94:
	ldr r1, [sp, #0x00C]
	ldr r2, _0803EBF4 @ =0x000002B5
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r2, #0x07
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0803EBA8
	b _0803ED78
_0803EBA8:
	ldr r3, _0803EBF4 @ =0x000002B5
	adds r0, r6, r3
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0803EBB8
	b _0803ED78
_0803EBB8:
	movs r4, #0x00
	mov r10, r4
	mov r5, r8
	adds r5, #0xE8
	str r5, [sp, #0x028]
	mov r7, r8
	adds r7, #0xD8
	str r7, [sp, #0x024]
	ldr r0, _0803EBE8 @ =0x0000020A
	add r0, r8
	str r0, [sp, #0x01C]
	mov r9, r5
_0803EBD0:
	mov r1, r10
	cmp r1, #0x00
	bne _0803EBF8
	movs r0, #0x80
	lsls r0, r0, #0x02
	b _0803EBFC
_0803EBDC: .4byte 0x00000291
_0803EBE0: .4byte 0x0300034C
_0803EBE4: .4byte 0x00000884
_0803EBE8: .4byte 0x0000020A
_0803EBEC: .4byte 0x00000351
_0803EBF0: .4byte 0x00000209
_0803EBF4: .4byte 0x000002B5
_0803EBF8:
	movs r0, #0x81
	lsls r0, r0, #0x02
_0803EBFC:
	add r0, r8
	ldr r6, [r0, #0x00]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x014]
	ldr r4, _0803ED08 @ =0x0000020A
	add r4, r8
	ldrb r1, [r4, #0x00]
	movs r7, #0x08
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0803EC22
	ldr r3, [r6, #0x18]
	str r3, [sp, #0x018]
	movs r0, #0x00
	str r0, [r6, #0x18]
_0803EC22:
	ldr r5, [sp, #0x024]
	ldr r1, [r5, #0x00]
	adds r0, r6, #0x0
	bl sub_8049FF4
	adds r5, r0, #0x0
	ldrb r1, [r4, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0803EC3C
	ldr r7, [sp, #0x018]
	str r7, [r6, #0x18]
_0803EC3C:
	cmp r5, #0x00
	bne _0803EC56
	mov r0, r8
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	ldr r2, [sp, #0x024]
	ldr r1, [r2, #0x00]
	bl sub_804E5C4
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0803EC56
	b _0803ED5E
_0803EC56:
	ldrb r0, [r5, #0x06]
	movs r1, #0x03
	ands r1, r0
	ldrb r0, [r5, #0x04]
	lsrs r4, r0, #0x07
	cmp r1, #0x01
	bls _0803EC72
	mov r0, r8
	mov r1, r10
	bl sub_8025D24
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0803ED50
_0803EC72:
	cmp r4, #0x01
	beq _0803EC9E
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r7, _0803ED0C @ =0x00000345
	adds r1, r6, r7
	movs r2, #0x00
	ldsb r2, [r0, r2]
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r2, r0
	bne _0803EC9E
	ldr r1, [sp, #0x028]
	ldr r0, [r1, #0x00]
	cmp r0, r5
	beq _0803ED50
	mov r0, r8
	adds r0, #0xEC
	ldr r0, [r0, #0x00]
	cmp r0, r5
	beq _0803ED50
_0803EC9E:
	movs r0, #0xAE
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0803ED4A
	ldr r0, _0803ED10 @ =0x00000209
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0803ED4A
	cmp r4, #0x01
	beq _0803ECCC
	ldr r2, [sp, #0x01C]
	ldrb r1, [r2, #0x00]
	movs r0, #0x18
	ands r0, r1
	cmp r0, #0x00
	bne _0803ED4A
_0803ECCC:
	ldrb r0, [r5, #0x05]
	lsrs r4, r0, #0x07
	ldr r3, [sp, #0x014]
	ldrb r0, [r3, #0x00]
	cmp r0, #0x02
	bls _0803ED14
	cmp r0, #0x0B
	beq _0803ED14
	cmp r4, #0x01
	bne _0803ED14
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x00
	bl sub_802FAE4
	mov r7, r10
	lsls r4, r7
	movs r0, #0x03
	ands r4, r0
	lsls r2, r4, #0x05
	ldr r1, [sp, #0x01C]
	ldrb r0, [r1, #0x00]
	movs r3, #0x61
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	orrs r0, r2
	ldr r4, [sp, #0x01C]
	strb r0, [r4, #0x00]
	b _0803ED4A
_0803ED08: .4byte 0x0000020A
_0803ED0C: .4byte 0x00000345
_0803ED10: .4byte 0x00000209
_0803ED14:
	movs r0, #0xC7
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ldrb r1, [r5, #0x0A]
	lsls r1, r1, #0x18
	ldrb r2, [r5, #0x09]
	lsls r2, r2, #0x10
	orrs r1, r2
	ldrb r2, [r5, #0x08]
	lsls r2, r2, #0x08
	orrs r1, r2
	ldrb r2, [r5, #0x07]
	orrs r1, r2
	adds r2, r6, #0x0
	adds r2, #0x54
	ldrb r2, [r2, #0x00]
	movs r7, #0xD1
	lsls r7, r7, #0x02
	adds r3, r6, r7
	ldrb r3, [r3, #0x00]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	bl sub_80F028C
_0803ED4A:
	mov r0, r9
	str r5, [r0, #0x00]
	b _0803ED78
_0803ED50:
	mov r1, r9
	ldr r0, [r1, #0x00]
	cmp r0, r5
	beq _0803ED62
	movs r0, #0x00
	str r0, [r1, #0x00]
	b _0803ED62
_0803ED5E:
	mov r2, r9
	str r5, [r2, #0x00]
_0803ED62:
	ldr r3, [sp, #0x010]
	cmp r3, #0x00
	bne _0803ED78
	movs r4, #0x04
	add r9, r4
	movs r5, #0x01
	add r10, r5
	mov r7, r10
	cmp r7, #0x01
	bgt _0803ED78
	b _0803EBD0
_0803ED78:
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bls _0803ED8C
	b _0803F3B8
_0803ED8C:
	ldr r5, [sp, #0x00C]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x020]
	movs r2, #0x00
	mov r10, r2
_0803ED9C:
	movs r3, #0xCF
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	cmp r0, #0x7F
	bne _0803EDAE
	b _0803F390
_0803EDAE:
	lsls r0, r1, #0x19
	asrs r0, r0, #0x17
	ldr r4, [sp, #0x008]
	adds r0, r0, r4
	ldr r6, [r0, #0x00]
	ldr r7, _0803EDD4 @ =0x0000020E
	adds r0, r6, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1D
	cmp r0, #0x07
	bls _0803EDC8
	b _0803F390
_0803EDC8:
	lsls r0, r0, #0x02
	ldr r1, _0803EDD8 @ =lbl_0803EDDC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0803EDD4: .4byte 0x0000020E
_0803EDD8: .4byte lbl_0803EDDC
lbl_0803EDDC:
	.4byte _0803EDFC
	.4byte _0803EE0E
	.4byte _0803EF14
	.4byte _0803F12C
	.4byte _0803F344
	.4byte _0803F2B4
	.4byte _0803F390
	.4byte _0803F01C
_0803EDFC:
	movs r0, #130 @ 0x82
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq.n _0803EE0E
	b.n _0803F390
_0803EE0E:
	movs r1, #139 @ 0x8b
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0, #0]
	cmp r0, #0
	bne.n _0803EE1C
	b.n _0803F390
_0803EE1C:
	ldr r2, [pc, #224] @ (0x803ef00)
	adds r0, r6, r2
	ldrb r1, [r0, #0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne.n _0803EE2E
	b.n _0803F390
_0803EE2E:
	ldr r3, [pc, #212] @ (0x803ef04)
	adds r0, r5, r3
	ldrb r1, [r0, #0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne.n _0803EE3E
	b.n _0803F390
_0803EE3E:
	movs r4, #131 @ 0x83
	lsls r4, r4, #2
	adds r0, r6, r4
	ldrb r1, [r0, #0]
	movs r0, #14
	ands r0, r1
	cmp r0, #0
	bne.n _0803EE82
	movs r7, #207 @ 0xcf
	lsls r7, r7, #2
	adds r0, r5, r7
	ldrb r1, [r0, #0]
	lsls r1, r1, #25
	ldr r2, [pc, #172] @ (0x803ef08)
	adds r0, r5, r2
	ldrb r0, [r0, #0]
	lsls r0, r0, #25
	cmp r1, r0
	bne.n _0803EEEE
	subs r3, #16
	adds r0, r5, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq.n _0803EE82
	ldr r4, [pc, #148] @ (0x803ef0c)
	adds r0, r5, r4
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r1, r0
	bne.n _0803EEEE
_0803EE82:
	movs r7, #131 @ 0x83
	lsls r7, r7, #2
	adds r0, r6, r7
	ldrb r0, [r0, #0]
	movs r3, #14
	ands r3, r0
	cmp r3, #8
	bne.n _0803EEBE
	movs r1, #207 @ 0xcf
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r1, [r0, #0]
	lsls r1, r1, #25
	ldr r2, [pc, #104] @ (0x803ef08)
	adds r0, r5, r2
	ldrb r0, [r0, #0]
	lsls r0, r0, #25
	cmp r1, r0
	bne.n _0803EEEE
	movs r4, #209 @ 0xd1
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r7, [pc, #96] @ (0x803ef10)
	adds r1, r5, r7
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bne.n _0803EEEE
_0803EEBE:
	cmp r3, #2
	beq.n _0803EEEE
	cmp r3, #4
	bne.n _0803EECE
	ldr r1, [sp, #32]
	ldrb r0, [r1, #2]
	cmp r0, #5
	beq.n _0803EEDE
_0803EECE:
	cmp r3, #6
	beq.n _0803EED4
	b.n _0803F390
_0803EED4:
	ldr r2, [sp, #32]
	ldrb r0, [r2, #2]
	cmp r0, #6
	beq.n _0803EEDE
	b.n _0803F390
_0803EEDE:
	mov r0, r8
	mov r1, sl
	bl sub_8025D24
	lsls r0, r0, #24
	cmp r0, #0
	bne.n _0803EEEE
	b.n _0803F390
_0803EEEE:
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80289BC
	movs r3, #2
	mov sl, r3
	b.n _0803F390
	movs r0, r0
	lsls r7, r1, #8
	movs r0, r0
	lsls r2, r2, #13
	movs r0, r0
	lsls r5, r7, #12
	movs r0, r0
	lsls r3, r0, #13
	movs r0, r0
	lsls r5, r0, #13
	movs r0, r0
_0803EF14:
	movs r4, #139 @ 0x8b
	lsls r4, r4, #2
	adds r0, r6, r4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne.n _0803EF22
	b.n _0803F390
_0803EF22:
	ldr r7, [pc, #224] @ (0x803f004)
	adds r0, r6, r7
	ldrb r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne.n _0803EF32
	b.n _0803F390
_0803EF32:
	ldr r1, [pc, #212] @ (0x803f008)
	adds r0, r5, r1
	ldrb r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne.n _0803EF42
	b.n _0803F390
_0803EF42:
	movs r2, #131 @ 0x83
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrb r1, [r0, #0]
	movs r0, #14
	ands r0, r1
	cmp r0, #0
	bne.n _0803EF86
	movs r3, #207 @ 0xcf
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrb r1, [r0, #0]
	lsls r1, r1, #25
	ldr r4, [pc, #172] @ (0x803f00c)
	adds r0, r5, r4
	ldrb r0, [r0, #0]
	lsls r0, r0, #25
	cmp r1, r0
	bne.n _0803EFF2
	ldr r7, [pc, #164] @ (0x803f010)
	adds r0, r5, r7
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq.n _0803EF86
	ldr r2, [pc, #152] @ (0x803f014)
	adds r0, r5, r2
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r1, r0
	bne.n _0803EFF2
_0803EF86:
	movs r3, #131 @ 0x83
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrb r0, [r0, #0]
	movs r3, #14
	ands r3, r0
	cmp r3, #8
	bne.n _0803EFC2
	movs r4, #207 @ 0xcf
	lsls r4, r4, #2
	adds r0, r5, r4
	ldrb r1, [r0, #0]
	lsls r1, r1, #25
	ldr r7, [pc, #104] @ (0x803f00c)
	adds r0, r5, r7
	ldrb r0, [r0, #0]
	lsls r0, r0, #25
	cmp r1, r0
	bne.n _0803EFF2
	movs r1, #209 @ 0xd1
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r2, [pc, #100] @ (0x803f018)
	adds r1, r5, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bne.n _0803EFF2
_0803EFC2:
	cmp r3, #2
	beq.n _0803EFF2
	cmp r3, #4
	bne.n _0803EFD2
	ldr r4, [sp, #32]
	ldrb r0, [r4, #2]
	cmp r0, #5
	beq.n _0803EFE2
_0803EFD2:
	cmp r3, #6
	beq.n _0803EFD8
	b.n _0803F390
_0803EFD8:
	ldr r7, [sp, #32]
	ldrb r0, [r7, #2]
	cmp r0, #6
	beq.n _0803EFE2
	b.n _0803F390
_0803EFE2:
	mov r0, r8
	mov r1, sl
	bl sub_8025D24
	lsls r0, r0, #24
	cmp r0, #0
	bne.n _0803EFF2
	b.n _0803F390
_0803EFF2:
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80289BC
	movs r0, #2
	mov sl, r0
	b.n _0803F390
	movs r0, r0
	lsls r7, r1, #8
	movs r0, r0
	lsls r2, r2, #13
	movs r0, r0
	lsls r5, r7, #12
	movs r0, r0
	lsls r2, r0, #13
	movs r0, r0
	lsls r3, r0, #13
	movs r0, r0
	lsls r5, r0, #13
	movs r0, r0
_0803F01C:
	movs r1, #207 @ 0xcf
	lsls r1, r1, #2
	adds r4, r6, r1
	ldr r0, [r4, #0]
	ldr r1, [pc, #188] @ (0x803f0e4)
	ands r0, r1
	cmp r0, r1
	beq.n _0803F02E
	b.n _0803F390
_0803F02E:
	ldr r2, [pc, #184] @ (0x803f0e8)
	adds r0, r5, r2
	ldrb r1, [r0, #0]
	movs r7, #4
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne.n _0803F040
	b.n _0803F390
_0803F040:
	ldrh r0, [r5, #36] @ 0x24
	lsls r0, r0, #23
	lsrs r0, r0, #30
	movs r3, #1
	mov r9, r3
	ands r0, r3
	cmp r0, #0
	beq.n _0803F056
	adds r0, r6, #0
	bl sub_8051330
_0803F056:
	ldrb r1, [r4, #0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq.n _0803F110
	movs r7, #208 @ 0xd0
	lsls r7, r7, #2
	adds r0, r6, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt.n _0803F070
	b.n _0803F390
_0803F070:
	ldrh r0, [r5, #36] @ 0x24
	lsls r0, r0, #23
	lsrs r0, r0, #30
	mov r2, r9
	ands r0, r2
	cmp r0, #0
	bne.n _0803F080
	b.n _0803F390
_0803F080:
	ldr r3, [pc, #104] @ (0x803f0ec)
	adds r0, r6, r3
	ldrb r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq.n _0803F0F0
	adds r0, r5, #0
	adds r0, #84 @ 0x54
	ldrb r1, [r0, #0]
	adds r0, r6, #0
	bl sub_8050EAC
	adds r3, r0, #0
	lsls r3, r3, #24
	lsrs r3, r3, #24
	ldrh r2, [r4, #0]
	lsls r2, r2, #22
	lsrs r2, r2, #28
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #4
	mov r7, r9
	strb r7, [r0, #0]
	mov r0, r8
	adds r1, r6, #0
	bl sub_802973C
	ldrh r0, [r4, #0]
	lsls r0, r0, #22
	lsrs r2, r0, #28
	ldr r0, [r4, #0]
	lsls r0, r0, #15
	lsrs r3, r0, #25
	movs r1, #0
	movs r4, #165 @ 0xa5
	lsls r4, r4, #2
	adds r0, r6, r4
	ldr r0, [r0, #0]
	movs r7, #2
	ldrsh r0, [r0, r7]
	cmp r0, #63 @ 0x3f
	bgt.n _0803F0D8
	movs r1, #1
_0803F0D8:
	str r1, [sp, #0]
	mov r0, r8
	movs r1, #0
	bl sub_802641C
	b.n _0803F390
	movs r1, r0
	lsls r6, r7, #7
	lsls r2, r2, #13
	movs r0, r0
	lsls r7, r1, #8
	movs r0, r0
_0803F0F0:
	movs r1, #206 @ 0xce
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r1, [r0, #0]
	movs r2, #32
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #36] @ 0x24
	bl _call_via_r1
	movs r1, #1
	negs r1, r1
	movs r0, #149 @ 0x95
	bl play_sfx_80195B4
	b.n _0803F390
_0803F110:
	ldrh r0, [r5, #36] @ 0x24
	lsls r0, r0, #23
	lsrs r0, r0, #30
	mov r3, r9
	ands r0, r3
	cmp r0, #0
	bne.n _0803F120
	b.n _0803F390
_0803F120:
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80289BC
	b.n _0803F390
_0803F12C:
	movs r0, #149 @ 0x95
	lsls r0, r0, #1
	add r0, r8
	ldrb r2, [r0, #0]
	cmp r2, #2
	beq.n _0803F13A
	b.n _0803F390
_0803F13A:
	ldr r4, [pc, #160] @ (0x803f1dc)
	adds r0, r5, r4
	ldrb r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne.n _0803F174
	mov r7, sl
	cmp r7, #0
	beq.n _0803F150
	b.n _0803F390
_0803F150:
	ldr r0, [pc, #140] @ (0x803f1e0)
	add r0, r8
	ldrb r1, [r0, #0]
	movs r0, #28
	ands r0, r1
	cmp r0, #16
	beq.n _0803F160
	b.n _0803F390
_0803F160:
	movs r1, #212 @ 0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r0, [r0, #0]
	lsls r0, r0, #26
	lsrs r0, r0, #30
	ands r0, r2
	cmp r0, #0
	bne.n _0803F174
	b.n _0803F390
_0803F174:
	ldr r3, [pc, #108] @ (0x803f1e4)
	adds r0, r5, r3
	ldrb r0, [r0, #0]
	adds r0, #1
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bls.n _0803F186
	b.n _0803F390
_0803F186:
	movs r4, #212 @ 0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldrb r0, [r0, #0]
	lsls r0, r0, #26
	lsrs r0, r0, #30
	ands r0, r2
	cmp r0, #0
	beq.n _0803F1F8
	mov r7, sl
	cmp r7, #0
	bne.n _0803F1AC
	ldr r1, [pc, #72] @ (0x803f1e8)
	adds r0, r5, r1
	ldrb r1, [r0, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	bne.n _0803F23C
_0803F1AC:
	ldr r2, [pc, #60] @ (0x803f1ec)
	adds r0, r6, r2
	ldrb r1, [r0, #0]
	movs r0, #240 @ 0xf0
	ands r0, r1
	cmp r0, #16
	bne.n _0803F1F4
	ldr r0, [pc, #52] @ (0x803f1f0)
	ldr r2, [r0, #0]
	adds r0, r5, #0
	adds r0, #84 @ 0x54
	ldrb r1, [r0, #0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, #53 @ 0x35
	ldrb r0, [r2, #0]
	movs r3, #3
	cmp r0, #1
	bne.n _0803F23E
	movs r3, #5
	b.n _0803F23E
	movs r0, r0
	lsls r2, r2, #13
	movs r0, r0
	lsls r6, r0, #9
	movs r0, r0
	lsls r2, r0, #13
	movs r0, r0
	lsls r3, r3, #13
	movs r0, r0
	lsls r5, r7, #12
	movs r0, r0
	lsrs r4, r6, #31
	lsls r0, r0, #12
_0803F1F4:
	movs r3, #1
	b.n _0803F23E
_0803F1F8:
	ldrh r0, [r5, #4]
	subs r0, #8
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #1
	bhi.n _0803F208
	movs r3, #2
	b.n _0803F23E
_0803F208:
	movs r0, #130 @ 0x82
	lsls r0, r0, #2
	add r0, r8
	ldrb r2, [r0, #0]
	movs r0, #16
	ands r0, r2
	cmp r0, #0
	beq.n _0803F226
	adds r0, r5, #0
	adds r0, #84 @ 0x54
	ldrb r1, [r0, #0]
	lsls r0, r2, #29
	lsrs r0, r0, #31
	cmp r1, r0
	bne.n _0803F234
_0803F226:
	ldr r3, [pc, #16] @ (0x803f238)
	adds r0, r6, r3
	ldrb r1, [r0, #0]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bne.n _0803F23C
_0803F234:
	movs r3, #4
	b.n _0803F23E
	lsls r6, r7, #12
	movs r0, r0
_0803F23C:
	movs r3, #0
_0803F23E:
	movs r1, #0
	movs r0, #130 @ 0x82
	lsls r0, r0, #2
	add r0, r8
	ldrb r2, [r0, #0]
	movs r0, #16
	ands r0, r2
	cmp r0, #0
	bne.n _0803F260
	adds r0, r5, #0
	adds r0, #84 @ 0x54
	ldrb r1, [r0, #0]
	lsls r0, r2, #29
	lsrs r0, r0, #31
	eors r1, r0
	negs r1, r1
	lsrs r1, r1, #31
_0803F260:
	mov r0, sp
	strb r1, [r0, #0]
	mov r0, r8
	adds r1, r3, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_80277C4
	movs r0, #128 @ 0x80
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0, #0]
	movs r4, #145 @ 0x91
	lsls r4, r4, #2
	adds r1, r0, r4
	movs r2, #0
	strh r2, [r1, #0]
	ldr r7, [pc, #44] @ (0x803f2b0)
	adds r0, r0, r7
	strh r2, [r0, #0]
	movs r0, #129 @ 0x81
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #0]
	cmp r1, #0
	beq.n _0803F29E
	adds r0, r1, r4
	strh r2, [r0, #0]
	adds r3, r7, #0
	adds r0, r1, r3
	strh r2, [r0, #0]
_0803F29E:
	movs r4, #207 @ 0xcf
	lsls r4, r4, #2
	adds r0, r5, r4
	ldrb r1, [r0, #0]
	movs r2, #127 @ 0x7f
	orrs r1, r2
	strb r1, [r0, #0]
	b.n _0803F4DE
	movs r0, r0
	lsls r2, r0, #9
	movs r0, r0
_0803F2B4:
	ldr r7, [pc, #132] @ (0x803f33c)
	adds r0, r5, r7
	movs r7, #0
	ldrsb r7, [r0, r7]
	cmp r7, #0
	bne.n _0803F390
	mov r0, r8
	bl sub_803C544
	movs r1, #139 @ 0x8b
	lsls r1, r1, #2
	adds r1, r1, r6
	mov r9, r1
	ldr r1, [r1, #0]
	movs r2, #3
	ands r1, r2
	cmp r0, r1
	bls.n _0803F390
	movs r3, #133 @ 0x85
	lsls r3, r3, #2
	adds r2, r6, r3
	ldrb r1, [r2, #0]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0]
	movs r0, #165 @ 0xa5
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r0, [r4, #0]
	str r7, [sp, #0]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	ldr r2, [r4, #0]
	ldrb r1, [r2, #18]
	movs r0, #7
	negs r0, r0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #18]
	adds r0, r6, #0
	movs r1, #0
	bl sub_804776C
	ldr r0, [pc, #36] @ (0x803f340)
	ldr r0, [r0, #0]
	movs r1, #227 @ 0xe3
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r3, r9
	ldr r2, [r3, #0]
	lsls r2, r2, #10
	lsrs r2, r2, #20
	movs r4, #139 @ 0x8b
	lsls r4, r4, #5
	adds r2, r2, r4
	movs r1, #0
	movs r3, #1
	bl sub_80E9958
	b.n _0803F390
	movs r0, r0
	lsls r2, r0, #13
	movs r0, r0
	lsrs r0, r0, #31
	lsls r0, r0, #12
_0803F344:
	ldr r7, [pc, #108] @ (0x803f3b4)
	adds r0, r5, r7
	movs r3, #0
	ldrsb r3, [r0, r3]
	cmp r3, #0
	bne.n _0803F390
	movs r0, #133 @ 0x85
	lsls r0, r0, #2
	adds r2, r6, r0
	ldrb r1, [r2, #0]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0]
	movs r1, #165 @ 0xa5
	lsls r1, r1, #2
	adds r4, r6, r1
	ldr r0, [r4, #0]
	str r3, [sp, #0]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	ldr r2, [r4, #0]
	ldrb r1, [r2, #18]
	movs r0, #7
	negs r0, r0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #18]
	adds r0, r6, #0
	movs r1, #0
	bl sub_804776C
_0803F390:
	movs r2, #0x01
	add r10, r2
	mov r3, r10
	cmp r3, #0x01
	bgt _0803F3B8
	cmp r3, #0x01
	beq _0803F3A0
	b _0803ED9C
_0803F3A0:
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r8
	ldr r5, [r0, #0x00]
	movs r4, #0xDA
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x020]
	b _0803ED9C
	.byte 0x42, 0x03, 0x00, 0x00
_0803F3B8:
	ldr r2, _0803F4F0 @ =0x0000027A
	add r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _0803F4F4 @ =0x00000282
	add r1, r8
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	mov r5, r8
	adds r5, #0x28
	str r5, [sp, #0x008]
	ldr r0, _0803F4F8 @ =0x0000010B
	add r0, r8
	ldrb r4, [r0, #0x00]
	adds r5, #0x80
	cmp r4, #0x00
	beq _0803F4AE
	negs r1, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0803F446
	cmp r1, #0x03
	bge _0803F426
	cmp r1, #0x02
	bge _0803F40A
	mov r7, r8
	ldr r0, [r7, #0x28]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	movs r3, #0x28
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2C]
	bl _call_via_r1
	subs r4, #0x01
	adds r7, #0x2C
	str r7, [sp, #0x008]
_0803F40A:
	ldr r1, [sp, #0x008]
	ldm r1!, {r0}
	str r1, [sp, #0x008]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	movs r3, #0x28
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2C]
	bl _call_via_r1
	subs r4, #0x01
_0803F426:
	ldr r7, [sp, #0x008]
	ldm r7!, {r0}
	str r7, [sp, #0x008]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	movs r3, #0x28
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2C]
	bl _call_via_r1
	subs r4, #0x01
	cmp r4, #0x00
	beq _0803F4AE
_0803F446:
	ldr r7, [sp, #0x008]
	ldr r0, [r7, #0x00]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	movs r3, #0x28
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2C]
	bl _call_via_r1
	ldr r0, [r7, #0x04]
	movs r7, #0xCE
	lsls r7, r7, #0x02
	adds r1, r0, r7
	ldr r2, [r1, #0x00]
	movs r3, #0x28
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2C]
	bl _call_via_r1
	ldr r7, [sp, #0x008]
	ldr r0, [r7, #0x08]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	movs r3, #0x28
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2C]
	bl _call_via_r1
	ldr r0, [r7, #0x0C]
	movs r7, #0xCE
	lsls r7, r7, #0x02
	adds r1, r0, r7
	ldr r2, [r1, #0x00]
	movs r3, #0x28
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2C]
	bl _call_via_r1
	subs r4, #0x04
	ldr r7, [sp, #0x008]
	adds r7, #0x10
	str r7, [sp, #0x008]
	cmp r4, #0x00
	bne _0803F446
_0803F4AE:
	ldr r0, [r5, #0x00]
	bl sub_804FB14
	ldr r0, [r5, #0x04]
	bl sub_804FB14
	ldr r0, [r5, #0x08]
	bl sub_804FB14
	ldr r0, [r5, #0x0C]
	bl sub_804FB14
	ldr r0, [r5, #0x10]
	bl sub_804FB14
	ldr r0, [r5, #0x14]
	bl sub_804FB14
	ldr r0, [r5, #0x18]
	bl sub_804FB14
	ldr r0, [r5, #0x1C]
	bl sub_804FB14
_0803F4DE:
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0803F4F0: .4byte 0x0000027A
_0803F4F4: .4byte 0x00000282
_0803F4F8: .4byte 0x0000010B
