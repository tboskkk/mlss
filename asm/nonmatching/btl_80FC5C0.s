	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	mov r0, sp
	bl sub_8199470
	bl sub_8018818
	ldr r4, _080FC65C @ =0x0300034C
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r5, _080FC660 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0xAD
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrh r1, [r4, #0x2A]
	ldrh r0, [r0, #0x00]
	ands r0, r1
	cmp r0, #0x00
	beq _080FC5FA
	ldr r0, _080FC664 @ =0x0000015F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_080FC5FA:
	ldr r0, [r5, #0x00]
	ldr r2, _080FC668 @ =0x000002C1
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080FC61E
	ldrh r1, [r4, #0x2A]
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x00
	beq _080FC61E
	ldr r0, _080FC664 @ =0x0000015F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_080FC61E:
	ldr r3, _080FC660 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x07]
	movs r1, #0x1F
	orrs r0, r1
	strb r0, [r2, #0x07]
	ldr r2, _080FC65C @ =0x0300034C
	ldr r1, _080FC66C @ =0x00000884
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC684
	ldr r1, [r3, #0x00]
	ldrb r0, [r1, #0x10]
	cmp r0, #0x00
	beq _080FC684
	subs r0, #0x01
	strb r0, [r1, #0x10]
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x10]
	cmp r0, #0x00
	bne _080FC674
	ldr r0, _080FC670 @ =0x00000888
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _080FC684
	.byte 0x00, 0x00
_080FC65C: .4byte 0x0300034C
_080FC660: .4byte 0x03000FD8
_080FC664: .4byte 0x0000015F
_080FC668: .4byte 0x000002C1
_080FC66C: .4byte 0x00000884
_080FC670: .4byte 0x00000888
_080FC674:
	ldr r1, _080FC880 @ =0x00000888
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080FC684
	b _080FC878
_080FC684:
	ldr r6, _080FC884 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC698
	bl sub_8082B20
_080FC698:
	ldr r0, [r6, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC6AA
	bl sub_808539C
_080FC6AA:
	bl sub_807A698
	ldr r0, [r6, #0x00]
	adds r0, #0x40
	bl sub_807FFFC
	bl sub_807AF64
	bl sub_8020A78
	ldr r0, [r6, #0x00]
	adds r0, #0x44
	bl sub_807FFFC
	ldr r0, [r6, #0x00]
	adds r0, #0x48
	bl sub_807FFFC
	bl sub_807C3E8
	ldr r7, _080FC888 @ =0x03000D74
	ldr r1, [r7, #0x00]
	ldrb r0, [r1, #0x02]
	cmp r0, #0x00
	beq _080FC6E8
	ldr r2, _080FC88C @ =0x03000D48
	ldr r0, [r1, #0x3C]
	ldr r1, [r1, #0x38]
	ldr r2, [r2, #0x00]
	bl _call_via_r2
_080FC6E8:
	bl sub_8109C08
	bl sub_8107380
	ldr r1, [r7, #0x00]
	ldrb r0, [r1, #0x02]
	cmp r0, #0x00
	beq _080FC71E
	ldr r0, [r1, #0x38]
	ldr r5, [r0, #0x0C]
	movs r0, #0x00
	str r0, [r5, #0x10]
	ldr r2, _080FC890 @ =0x03000D4C
	ldr r0, _080FC894 @ =0x0203FFB8
	ldr r0, [r0, #0x3C]
	ldr r4, _080FC898 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r4, r4, r1
	ldr r1, [r4, #0x00]
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	str r0, [r4, #0x00]
	ldr r0, [r7, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [r5, #0x10]
_080FC71E:
	ldr r5, _080FC898 @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r4, r5, r2
	ldr r0, [r4, #0x00]
	bl sub_807C6D0
	str r0, [r4, #0x00]
	bl sub_8021F7C
	bl sub_807AD2C
	ldr r3, [r6, #0x00]
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC746
	b _080FC852
_080FC746:
	ldrh r0, [r5, #0x3E]
	movs r7, #0x01
	ldr r4, _080FC89C @ =0x000002BE
	adds r3, r3, r4
	adds r1, r7, #0x0
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	mov r12, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r2, [r6, #0x00]
	ldrh r1, [r5, #0x3E]
	lsrs r1, r1, #0x01
	ands r1, r7
	adds r2, r2, r4
	lsls r1, r1, #0x07
	ldrb r3, [r2, #0x00]
	movs r5, #0x7F
	adds r0, r5, #0x0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r4, [r6, #0x00]
	ldr r0, [r4, #0x7C]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _080FC7B8
	ldr r0, _080FC89C @ =0x000002BE
	adds r4, r4, r0
	ldrb r2, [r4, #0x00]
	lsls r3, r2, #0x19
	lsrs r3, r3, #0x1F
	lsrs r0, r2, #0x07
	adds r1, r7, #0x0
	ands r1, r0
	lsls r1, r1, #0x06
	mov r0, r12
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r1, [r6, #0x00]
	ldr r2, _080FC89C @ =0x000002BE
	adds r1, r1, r2
	lsls r3, r3, #0x07
	ldrb r2, [r1, #0x00]
	adds r0, r5, #0x0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0x00]
_080FC7B8:
	ldr r0, [r6, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x58
	movs r2, #0x80
	lsls r2, r2, #0x01
	ldr r0, [r0, #0x58]
	cmp r0, #0x00
	beq _080FC7D0
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC7D0
	strh r2, [r0, #0x0A]
_080FC7D0:
	ldr r0, [r1, #0x04]
	cmp r0, #0x00
	beq _080FC7DE
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC7DE
	strh r2, [r0, #0x0A]
_080FC7DE:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080FC7EC
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC7EC
	strh r2, [r0, #0x0A]
_080FC7EC:
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	beq _080FC7FA
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC7FA
	strh r2, [r0, #0x0A]
_080FC7FA:
	ldr r0, [r1, #0x10]
	cmp r0, #0x00
	beq _080FC808
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC808
	strh r2, [r0, #0x0A]
_080FC808:
	ldr r0, [r1, #0x14]
	cmp r0, #0x00
	beq _080FC816
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC816
	strh r2, [r0, #0x0A]
_080FC816:
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	beq _080FC824
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC824
	strh r2, [r0, #0x0A]
_080FC824:
	ldr r0, [r1, #0x1C]
	cmp r0, #0x00
	beq _080FC832
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC832
	strh r2, [r0, #0x0A]
_080FC832:
	ldr r4, _080FC884 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x20
	ldr r1, [r1, #0x24]
	bl _call_via_r1
	bl sub_807E084
	ldr r1, [r4, #0x00]
	movs r0, #0xAC
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
_080FC852:
	ldr r4, _080FC884 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	adds r0, #0x4C
	bl sub_807FFFC
	mov r0, sp
	ldrb r0, [r0, #0x00]
	bl sub_8082584
	ldr r0, [r4, #0x00]
	ldr r4, [r0, #0x24]
	cmp r4, #0x00
	bne _080FC878
	movs r0, #0x03
	movs r1, #0x00
	bl sub_8018B78
	ldr r0, _080FC8A0 @ =0x03000FE0
	str r4, [r0, #0x00]
_080FC878:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FC880: .4byte 0x00000888
_080FC884: .4byte 0x03000FD8
_080FC888: .4byte 0x03000D74
_080FC88C: .4byte 0x03000D48
_080FC890: .4byte 0x03000D4C
_080FC894: .4byte 0x0203FFB8
_080FC898: .4byte 0x0300034C
_080FC89C: .4byte 0x000002BE
_080FC8A0: .4byte 0x03000FE0
