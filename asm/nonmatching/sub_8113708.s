	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r9, r1
	ldr r1, _08113878 @ =0x00004031
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	movs r1, #0x03
	cmp r0, #0x00
	beq _08113732
	movs r1, #0x02
_08113732:
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _08113744
	adds r0, #0xFF
_08113744:
	asrs r0, r0, #0x08
	subs r0, #0x1C
	movs r1, #0x00
	mov r8, r1
	strh r0, [r4, #0x1C]
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _08113756
	adds r0, #0xFF
_08113756:
	asrs r0, r0, #0x08
	subs r0, #0x08
	strh r0, [r4, #0x1E]
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _08113764
	adds r0, #0xFF
_08113764:
	asrs r0, r0, #0x08
	adds r0, #0x20
	strh r0, [r4, #0x20]
	ldr r0, [r7, #0x38]
	ldr r1, _0811387C @ =0xFFFFEC00
	adds r0, r0, r1
	str r0, [r4, #0x38]
	str r0, [r4, #0x10]
	ldr r0, [r7, #0x3C]
	ldr r1, _08113880 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x3C]
	str r0, [r4, #0x14]
	ldr r0, [r7, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r4, #0x40]
	str r0, [r4, #0x18]
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	mov r0, r8
	str r0, [r4, #0x4C]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x60
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r7, #0x28]
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _081137B6
	adds r0, #0xFF
_081137B6:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x08
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _081137C4
	adds r0, #0xFF
_081137C4:
	asrs r0, r0, #0x08
	subs r3, r0, #0x4
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _081137D0
	adds r0, #0xFF
_081137D0:
	asrs r0, r0, #0x08
	adds r0, #0x28
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08113884 @ =0x00004033
	bl sub_807BF34
	adds r4, r0, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08113888 @ =0x08113675
	str r0, [r4, #0x4C]
	ldr r0, [r7, #0x30]
	str r0, [r4, #0x30]
	str r4, [r7, #0x30]
	adds r6, r4, #0x0
	adds r6, #0x0C
	movs r0, #0x08
	strh r0, [r6, #0x10]
	ldr r0, _0811388C @ =0x0000FFFE
	strh r0, [r6, #0x12]
	mov r1, r8
	strh r1, [r6, #0x14]
	bl sub_807FA50
	str r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	str r1, [r0, #0x04]
	str r6, [r0, #0x08]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x0C]
	adds r6, r0, #0x0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_807FABC
	str r0, [r6, #0x00]
	adds r6, r0, #0x0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_807FABC
	str r0, [r6, #0x00]
	adds r6, r0, #0x0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_807FABC
	str r0, [r6, #0x00]
	mov r1, r8
	str r1, [r0, #0x00]
	ldr r0, [r7, #0x28]
	ldr r1, _08113890 @ =0x00000113
	adds r0, r0, r1
	strb r5, [r0, #0x00]
	mov r0, r9
	cmp r0, #0x00
	beq _08113898
	ldr r0, _08113894 @ =0x0811416D
	b _0811389A
	.byte 0x00, 0x00
_08113878: .4byte 0x00004031
_0811387C: .4byte 0xFFFFEC00
_08113880: .4byte 0xFFFFF800
_08113884: .4byte 0x00004033
_08113888: .4byte sub_8113674
_0811388C: .4byte 0x0000FFFE
_08113890: .4byte 0x00000113
_08113894: .4byte sub_811416C
_08113898:
	ldr r0, _081138AC @ =0x08114151
_0811389A:
	str r0, [r7, #0x4C]
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081138AC: .4byte 0x08114151
