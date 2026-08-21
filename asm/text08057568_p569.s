	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81134A8
sub_81134A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081135A2
	adds r0, r4, #0x0
	movs r1, #0x1C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _081135B4 @ =0x03000FD8
	mov r10, r0
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x60]
	adds r3, r2, #0x0
	adds r3, #0x08
	ldr r0, [r3, #0x28]
	ldr r1, _081135B8 @ =0x00000113
	mov r9, r1
	add r0, r9
	movs r5, #0x00
	strb r5, [r0, #0x00]
	ldr r0, [r4, #0x2C]
	str r0, [r3, #0x2C]
	adds r1, r2, #0x0
	adds r1, #0xA4
	movs r6, #0x9C
	adds r6, r6, r4
	mov r8, r6
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r7, r4, #0x0
	adds r7, #0xA0
	str r7, [sp, #0x000]
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r6, r4, #0x0
	adds r6, #0xA4
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0811352E
	ldr r0, [r4, #0x28]
	ldr r1, _081135B8 @ =0x00000113
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	ands r1, r0
	adds r0, r3, #0x0
	bl sub_8113708
_0811352E:
	mov r7, r10
	ldr r0, [r7, #0x00]
	ldr r2, [r0, #0x64]
	adds r3, r2, #0x0
	adds r3, #0x08
	ldr r0, [r3, #0x28]
	add r0, r9
	strb r5, [r0, #0x00]
	ldr r5, [r4, #0x2C]
	str r5, [r3, #0x2C]
	adds r1, r2, #0x0
	adds r1, #0xA4
	mov r7, r8
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r7, [sp, #0x000]
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x28]
	add r0, r9
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bne _0811357E
	mov r0, r10
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r5, #0x00
	ldsh r0, [r0, r5]
	adds r0, #0x02
	lsls r0, r0, #0x02
	adds r1, #0x80
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	str r0, [r3, #0x2C]
_0811357E:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0811359E
	ldr r0, [r4, #0x28]
	add r0, r9
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x01
	movs r0, #0x01
	ands r1, r0
	adds r0, r3, #0x0
	bl sub_81138B0
_0811359E:
	ldr r0, _081135BC @ =0x081141F9
	str r0, [r4, #0x4C]
_081135A2:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081135B4: .4byte 0x03000FD8
_081135B8: .4byte 0x00000113
_081135BC: .4byte sub_81141F8
	thumb_func_start sub_81135C0
sub_81135C0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	ldr r2, _081135E4 @ =0x00000113
	adds r1, r0, r2
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	beq _081135E8
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _08113658
_081135E4: .4byte 0x00000113
_081135E8:
	ldr r0, _08113660 @ =0x08114111
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x30]
	ldr r4, [r0, #0x30]
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08113622
	adds r1, #0xFF
_08113622:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0811362C
	adds r2, #0xFF
_0811362C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08113636
	adds r3, #0xFF
_08113636:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08113664 @ =0x00002ABF
	bl sub_80DF024
	ldr r1, _08113668 @ =0x000018CE
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r0, _0811366C @ =0x08113F31
	str r0, [r4, #0x58]
	ldr r0, _08113670 @ =0x08113EA1
	str r0, [r4, #0x60]
	movs r0, #0x90
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
_08113658:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08113660: .4byte sub_8114110
_08113664: .4byte 0x00002ABF
_08113668: .4byte 0x000018CE
_0811366C: .4byte sub_8113F30
_08113670: .4byte sub_8113EA0
	thumb_func_start sub_8113674
sub_8113674:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r12, r0
	mov r3, r12
	adds r3, #0x0C
	ldr r1, [r0, #0x30]
	adds r2, r1, #0x0
	adds r2, #0x0C
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x0C
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r6, [r3, #0x04]
	ldr r5, [r3, #0x08]
	ldr r4, [r3, #0x0C]
	movs r0, #0x10
	ldsh r1, [r3, r0]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x04]
	adds r0, r0, r1
	subs r0, r0, r6
	mov r8, r0
	movs r0, #0x12
	ldsh r1, [r3, r0]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x08]
	adds r0, r0, r1
	subs r7, r0, r5
	movs r0, #0x14
	ldsh r1, [r3, r0]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x0C]
	adds r0, r0, r1
	subs r2, r0, r4
	mov r0, r12
	ldr r3, [r0, #0x0C]
	movs r1, #0x01
	cmp r3, #0x00
	beq _081136FE
_081136C6:
	mov r0, r8
	muls r0, r1
	cmp r0, #0x00
	bge _081136D0
	adds r0, #0x03
_081136D0:
	asrs r0, r0, #0x02
	adds r0, r0, r6
	str r0, [r3, #0x04]
	adds r0, r7, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _081136E0
	adds r0, #0x03
_081136E0:
	asrs r0, r0, #0x02
	adds r0, r0, r5
	str r0, [r3, #0x08]
	adds r0, r2, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _081136F0
	adds r0, #0x03
_081136F0:
	asrs r0, r0, #0x02
	adds r0, r0, r4
	str r0, [r3, #0x0C]
	ldr r3, [r3, #0x00]
	adds r1, #0x01
	cmp r3, #0x00
	bne _081136C6
_081136FE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8113708
sub_8113708:
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
	thumb_func_start sub_81138B0
sub_81138B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r9, r1
	ldr r1, _08113A24 @ =0x00004032
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	movs r1, #0x03
	cmp r0, #0x00
	beq _081138DA
	movs r1, #0x02
_081138DA:
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _081138EC
	adds r0, #0xFF
_081138EC:
	asrs r0, r0, #0x08
	adds r0, #0x20
	movs r1, #0x00
	mov r8, r1
	strh r0, [r4, #0x1C]
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _081138FE
	adds r0, #0xFF
_081138FE:
	asrs r0, r0, #0x08
	adds r0, #0x08
	strh r0, [r4, #0x1E]
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _0811390C
	adds r0, #0xFF
_0811390C:
	asrs r0, r0, #0x08
	adds r0, #0x20
	strh r0, [r4, #0x20]
	ldr r0, [r7, #0x38]
	movs r1, #0xC0
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r4, #0x38]
	str r0, [r4, #0x10]
	ldr r0, [r7, #0x3C]
	movs r1, #0x80
	lsls r1, r1, #0x04
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
	bge _08113962
	adds r0, #0xFF
_08113962:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _08113970
	adds r0, #0xFF
_08113970:
	asrs r0, r0, #0x08
	adds r3, r0, #0x4
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _0811397C
	adds r0, #0xFF
_0811397C:
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
	ldr r1, _08113A28 @ =0x00004033
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
	ldr r0, _08113A2C @ =0x08113675
	str r0, [r4, #0x4C]
	ldr r0, [r7, #0x30]
	str r0, [r4, #0x30]
	str r4, [r7, #0x30]
	adds r6, r4, #0x0
	adds r6, #0x0C
	movs r0, #0x08
	strh r0, [r6, #0x10]
	ldr r0, _08113A30 @ =0x0000FFFE
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
	ldr r1, _08113A34 @ =0x00000113
	adds r0, r0, r1
	strb r5, [r0, #0x00]
	mov r0, r9
	cmp r0, #0x00
	beq _08113A3C
	ldr r0, _08113A38 @ =0x0811416D
	b _08113A3E
	.byte 0x00, 0x00
_08113A24: .4byte 0x00004032
_08113A28: .4byte 0x00004033
_08113A2C: .4byte sub_8113674
_08113A30: .4byte 0x0000FFFE
_08113A34: .4byte 0x00000113
_08113A38: .4byte sub_811416C
_08113A3C:
	ldr r0, _08113A50 @ =0x08114151
_08113A3E:
	str r0, [r7, #0x4C]
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08113A50: .4byte 0x08114151
	thumb_func_start sub_8113A54
sub_8113A54:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x1E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r2, [r4, #0x28]
	movs r3, #0x00
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r1, [r0, #0x00]
	movs r0, #0xD8
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _08113A92
	movs r3, #0x01
_08113A92:
	ldr r1, _08113AD4 @ =0x00000113
	adds r0, r2, r1
	strb r3, [r0, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08113AA0
	adds r1, #0xFF
_08113AA0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08113AAA
	adds r2, #0xFF
_08113AAA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08113AB4
	adds r3, #0xFF
_08113AB4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08113AD8 @ =0x00002AE3
	bl sub_80DF024
	ldr r0, _08113ADC @ =0x08113AE1
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08113AD4: .4byte 0x00000113
_08113AD8: .4byte 0x00002AE3
_08113ADC: .4byte sub_8113AE0
	thumb_func_start sub_8113AE0
sub_8113AE0:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08113B7C
	adds r0, r6, #0x0
	movs r1, #0x1F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, _08113B84 @ =0x00004036
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	ldr r1, _08113B88 @ =0x08201140
	ldr r0, [r6, #0x28]
	ldr r2, _08113B8C @ =0x00000113
	adds r3, r0, r2
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r2, [r0, #0x00]
	lsls r2, r2, #0x08
	str r2, [r4, #0x38]
	str r2, [r4, #0x10]
	ldr r1, _08113B90 @ =0x08201144
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r5, r0, #0x08
	str r5, [r4, #0x3C]
	str r5, [r4, #0x14]
	ldr r1, _08113B94 @ =0x08201148
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r3, r0, #0x08
	str r3, [r4, #0x40]
	str r3, [r4, #0x18]
	ldr r0, _08113B98 @ =0x08113E45
	str r0, [r4, #0x4C]
	asrs r1, r2, #0x08
	adds r0, r5, #0x0
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08113B9C @ =0x00002AED
	bl sub_80DF024
	ldr r0, _08113BA0 @ =0x08113E79
	str r0, [r6, #0x4C]
	movs r0, #0xD5
	bl stop_sfx_80195A8
	movs r0, #0x8C
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08113B7C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08113B84: .4byte 0x00004036
_08113B88: .4byte 0x08201140
_08113B8C: .4byte 0x00000113
_08113B90: .4byte 0x08201144
_08113B94: .4byte 0x08201148
_08113B98: .4byte sub_8113E44
_08113B9C: .4byte 0x00002AED
_08113BA0: .4byte sub_8113E78
	thumb_func_start sub_8113BA4
sub_8113BA4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08113BCE
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08113BCE
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x86
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	b _08113CBA
_08113BCE:
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r2, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x08
	adds r1, r2, r3
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _08113BE4
	ldr r6, _08113C48 @ =0x000080FF
	adds r1, r2, r6
_08113BE4:
	asrs r0, r1, #0x08
	movs r2, #0xFF
	ldr r1, _08113C4C @ =0x08198584
	ands r0, r2
	lsls r2, r0, #0x01
	adds r1, r2, r1
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	bge _08113BFA
	adds r0, #0x3F
_08113BFA:
	asrs r0, r0, #0x06
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	movs r6, #0xA0
	lsls r6, r6, #0x07
	adds r1, r1, r6
	str r1, [r4, #0x10]
	ldr r0, _08113C50 @ =0x08198504
	adds r0, r2, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08113C18
	adds r0, #0x3F
_08113C18:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x04
	movs r2, #0xD8
	lsls r2, r2, #0x07
	adds r0, r0, r2
	str r0, [r4, #0x14]
	adds r7, r5, #0x0
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x28]
	ldr r6, _08113C54 @ =0x00000113
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08113C5C
	ldr r1, _08113C58 @ =0x08201164
	adds r2, r4, #0x0
	adds r2, #0xAE
	movs r6, #0x00
	ldsh r0, [r2, r6]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, r3, r0
	b _08113C6E
_08113C48: .4byte 0x000080FF
_08113C4C: .4byte 0x08198584
_08113C50: .4byte 0x08198504
_08113C54: .4byte 0x00000113
_08113C58: .4byte 0x08201164
_08113C5C:
	ldr r1, _08113CC4 @ =0x08201164
	adds r2, r4, #0x0
	adds r2, #0xAE
	movs r6, #0x00
	ldsh r0, [r2, r6]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	subs r0, r3, r0
_08113C6E:
	adds r6, r2, #0x0
	str r0, [r7, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, _08113CC8 @ =0xFFFFC000
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	cmp r0, r1
	bls _08113CBA
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08113C88
	adds r2, #0xFF
_08113C88:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08113C92
	adds r3, #0xFF
_08113C92:
	asrs r3, r3, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x20
	negs r1, r1
	bl sub_808843C
	ldr r1, _08113CCC @ =0x0820114C
	movs r2, #0x00
	ldsh r0, [r6, r2]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_80880C4
	ldr r0, _08113CD0 @ =0x08113E21
	str r0, [r4, #0x4C]
_08113CBA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08113CC4: .4byte 0x08201164
_08113CC8: .4byte 0xFFFFC000
_08113CCC: .4byte 0x0820114C
_08113CD0: .4byte sub_8113E20
	thumb_func_start sub_8113CD4
sub_8113CD4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r2, [r1, #0x28]
	ldr r0, [r2, #0x38]
	cmp r1, r0
	beq _08113CE6
	movs r0, #0x01
	b _08113DA4
_08113CE6:
	ldr r1, [r4, #0x38]
	ldr r0, [r2, #0x40]
	cmp r1, r0
	blt _08113DA0
	ldr r0, [r4, #0x10]
	cmp r1, r0
	blt _08113DA0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08113CFC
	adds r2, #0xFF
_08113CFC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08113D06
	adds r3, #0xFF
_08113D06:
	asrs r3, r3, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x50
	bl sub_808843C
	ldr r1, _08113DAC @ =0x0820114C
	adds r5, r4, #0x0
	adds r5, #0xAE
	movs r2, #0x00
	ldsh r0, [r5, r2]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_80880C4
	ldr r0, [r4, #0x28]
	ldr r1, _08113DB0 @ =0x00000113
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	eors r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08113DB4 @ =0x08113DC1
	str r0, [r4, #0x4C]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	movs r2, #0x00
	ldsh r1, [r5, r2]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r1, r0
	blt _08113D6E
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08113D6E:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08113D76
	adds r1, #0xFF
_08113D76:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08113D80
	adds r2, #0xFF
_08113D80:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08113D8A
	adds r3, #0xFF
_08113D8A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08113DB8 @ =0x00002AFB
	bl sub_80DF024
	ldr r0, _08113DBC @ =0x00000119
	movs r4, #0x01
	negs r4, r4
	adds r1, r4, #0x0
	bl play_sfx_80195B4
_08113DA0:
	movs r0, #0x01
	negs r0, r0
_08113DA4:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
_08113DAC: .4byte 0x0820114C
_08113DB0: .4byte 0x00000113
_08113DB4: .4byte sub_8113DC0
_08113DB8: .4byte 0x00002AFB
_08113DBC: .4byte 0x00000119
	thumb_func_start sub_8113DC0
sub_8113DC0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08113DE8
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08113DE8
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x86
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	b _08113E12
_08113DE8:
	adds r0, r4, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08113E12
	adds r2, r4, #0x0
	adds r2, #0x98
	ldr r0, [r4, #0x28]
	ldr r1, _08113E18 @ =0x00000113
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x08
	cmp r0, #0x00
	beq _08113E0C
	movs r1, #0x80
	lsls r1, r1, #0x07
_08113E0C:
	str r1, [r2, #0x00]
	ldr r0, _08113E1C @ =0x08113BA5
	str r0, [r4, #0x4C]
_08113E12:
	pop {r4}
	pop {r0}
	bx r0
_08113E18: .4byte 0x00000113
_08113E1C: .4byte sub_8113BA4
	thumb_func_start sub_8113E20
sub_8113E20:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08113E3C
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x86
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
_08113E3C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8113E44
sub_8113E44:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08113E6C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x28
	strh r1, [r0, #0x00]
	ldr r0, _08113E74 @ =0x08114405
	str r0, [r4, #0x4C]
_08113E6C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08113E74: .4byte sub_8114404
	thumb_func_start sub_8113E78
sub_8113E78:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08113E9A
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08113E9A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8113EA0
sub_8113EA0:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r5, #0x28]
	ldr r0, [r0, #0x38]
	cmp r5, r0
	beq _08113EB4
	movs r0, #0x01
	b _08113F18
_08113EB4:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x7D
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _08113ED4
	ldr r0, _08113ED0 @ =0x08032012
	b _08113ED6
_08113ED0: .4byte 0x08032012
_08113ED4:
	ldr r0, _08113F20 @ =0x08032013
_08113ED6:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r6, #0x0
	adds r1, #0xB8
	movs r2, #0x00
	ldr r0, _08113F24 @ =0x00001B58
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r3, #0x01
	str r3, [r0, #0x00]
	str r2, [r6, #0x4C]
	str r2, [r6, #0x54]
	ldr r0, [r6, #0x28]
	ldr r1, _08113F28 @ =0x081140C1
	str r1, [r0, #0x54]
	str r2, [r0, #0x5C]
	ldr r1, _08113F2C @ =0x00000113
	adds r0, r0, r1
	strb r3, [r0, #0x00]
	movs r0, #0xD5
	bl stop_sfx_80195A8
	movs r0, #0x90
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	movs r0, #0x00
_08113F18:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08113F20: .4byte 0x08032013
_08113F24: .4byte 0x00001B58
_08113F28: .4byte sub_81140C0
_08113F2C: .4byte 0x00000113
	thumb_func_start sub_8113F30
sub_8113F30:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08113F98
	str r2, [r3, #0x2C]
	ldr r0, _08113FA4 @ =0x0811403D
	str r0, [r3, #0x4C]
	ldr r0, [r2, #0x28]
	ldr r2, _08113FA8 @ =0x00000113
	adds r1, r0, r2
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, _08113FAC @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08113F8C
	ldr r0, [r3, #0x28]
	adds r0, #0xEC
	movs r5, #0x00
	ldsh r1, [r0, r5]
	adds r1, #0x02
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	adds r0, #0x80
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r3, r1, #0x0
	adds r3, #0x7D
	strb r0, [r3, #0x00]
	ldr r0, _08113FB0 @ =0x08113FB5
	str r0, [r1, #0x54]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x0C]
_08113F8C:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x85
	adds r1, r4, #0x0
	bl play_sfx_80195B4
_08113F98:
	movs r0, #0x01
	negs r0, r0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08113FA4: .4byte sub_811403C
_08113FA8: .4byte 0x00000113
_08113FAC: .4byte 0x03000FD8
_08113FB0: .4byte sub_8113FB4
	thumb_func_start sub_8113FB4
sub_8113FB4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	ldr r2, _08114034 @ =0x0000204D
	cmp r1, r0
	bne _08113FCE
	subs r2, #0x4D
_08113FCE:
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0xF0
	strb r1, [r0, #0x00]
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08113FEE
	adds r0, #0xFF
_08113FEE:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x0C
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08114000
	adds r0, #0xFF
_08114000:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0811400E
	adds r0, #0xFF
_0811400E:
	asrs r3, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	movs r2, #0x50
	bl sub_808842C
	ldr r0, _08114038 @ =0x0811448D
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08114034: .4byte 0x0000204D
_08114038: .4byte sub_811448C
	thumb_func_start sub_811403C
sub_811403C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	ldr r2, _081140B8 @ =0x0000204D
	cmp r1, r0
	bne _08114056
	subs r2, #0x4D
_08114056:
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0xF0
	strb r1, [r0, #0x00]
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08114076
	adds r0, #0xFF
_08114076:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08114084
	adds r0, #0xFF
_08114084:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08114092
	adds r0, #0xFF
_08114092:
	asrs r3, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	movs r2, #0x50
	bl sub_808842C
	ldr r0, _081140BC @ =0x081144CD
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_081140B8: .4byte 0x0000204D
_081140BC: .4byte sub_81144CC
	thumb_func_start sub_81140C0
sub_81140C0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	ldr r4, [r0, #0x30]
	movs r0, #0x1C
	ldsh r1, [r4, r0]
	movs r0, #0x1E
	ldsh r2, [r4, r0]
	movs r0, #0x20
	ldsh r3, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r0, _0811410C @ =0x08114529
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0811410C: .4byte sub_8114528
	thumb_func_start sub_8114110
sub_8114110:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	ldr r4, [r0, #0x30]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08114144
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0811414C @ =0x08114559
	str r0, [r5, #0x4C]
_08114144:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0811414C: .4byte sub_8114558
	.byte 0x81, 0x6A, 0x04, 0x4B, 0xCA, 0x18, 0x00, 0x21, 0x11, 0x70, 0x03, 0x49, 0x01, 0x65, 0xC1, 0x64
	.byte 0x70, 0x47, 0x00, 0x00, 0x13, 0x01, 0x00, 0x00, 0xF5, 0x41, 0x11, 0x08
	thumb_func_start sub_811416C
sub_811416C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _081141E8 @ =0x081145C9
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x30]
	ldr r4, [r0, #0x30]
	ldr r0, [r4, #0x2C]
	ldr r5, [r0, #0x28]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _081141EC @ =0x08113F31
	str r0, [r4, #0x58]
	ldr r0, _081141F0 @ =0x08113EA1
	str r0, [r4, #0x60]
	adds r0, r5, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08114198
	adds r0, #0xFF
_08114198:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x1C
	adds r0, r5, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081141AA
	adds r0, #0xFF
_081141AA:
	asrs r0, r0, #0x08
	adds r2, r0, #0x1
	adds r0, r5, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081141BA
	adds r0, #0xFF
_081141BA:
	asrs r3, r0, #0x08
	adds r3, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081141E8: .4byte sub_81145C8
_081141EC: .4byte sub_8113F30
_081141F0: .4byte sub_8113EA0
	.byte 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_81141F8
sub_81141F8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0811424C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x60]
	adds r3, r0, #0x0
	adds r3, #0x08
	ldr r0, [r3, #0x28]
	ldr r2, _08114250 @ =0x00000113
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08114260
	ldr r0, [r1, #0x64]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r2, #0x28]
	ldr r1, _08114250 @ =0x00000113
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08114260
	ldr r0, [r3, #0x50]
	str r0, [r3, #0x4C]
	ldr r0, [r2, #0x50]
	str r0, [r2, #0x4C]
	str r1, [r3, #0x50]
	str r1, [r2, #0x50]
	ldr r1, [r3, #0x4C]
	cmp r1, #0x00
	beq _0811423C
	ldr r0, _08114254 @ =0x081141F5
	cmp r1, r0
	bne _08114248
_0811423C:
	ldr r1, [r2, #0x4C]
	cmp r1, #0x00
	beq _0811425C
	ldr r0, _08114254 @ =0x081141F5
	cmp r1, r0
	beq _0811425C
_08114248:
	ldr r0, _08114258 @ =0x081141F9
	b _0811425E
_0811424C: .4byte 0x03000FD8
_08114250: .4byte 0x00000113
_08114254: .4byte 0x081141F5
_08114258: .4byte sub_81141F8
_0811425C:
	ldr r0, _08114268 @ =0x081145F9
_0811425E:
	str r0, [r4, #0x4C]
_08114260:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08114268: .4byte sub_81145F8
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x55, 0x3A, 0x11, 0x08, 0x10, 0xB5, 0x03, 0x1C
	.byte 0x9C, 0x30, 0x00, 0x68, 0x00, 0x28, 0x0F, 0xD0, 0x06, 0x4A, 0x11, 0x68, 0xD8, 0x6A, 0x80, 0x6A
	.byte 0xEC, 0x30, 0x00, 0x24, 0x00, 0x5F, 0x02, 0x30, 0x80, 0x00, 0x80, 0x31, 0x09, 0x18, 0x08, 0x68
	.byte 0x08, 0x30, 0x03, 0xE0, 0xD8, 0x0F, 0x00, 0x03, 0xD8, 0x6A, 0x11, 0x4A, 0xD8, 0x62, 0x11, 0x48
	.byte 0xD8, 0x64, 0x10, 0x68, 0x82, 0x6D, 0x10, 0x48, 0x11, 0x18, 0x02, 0x20, 0x08, 0x70, 0xD8, 0x6A
	.byte 0x50, 0x63, 0x11, 0x1C, 0xA4, 0x31, 0x18, 0x1C, 0x9C, 0x30, 0x00, 0x68, 0x08, 0x60, 0x04, 0x31
	.byte 0x18, 0x1C, 0xA0, 0x30, 0x00, 0x68, 0x08, 0x60, 0x04, 0x31, 0x18, 0x1C, 0xA4, 0x30, 0x00, 0x68
	.byte 0x08, 0x60, 0x06, 0x48, 0x50, 0x65, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0xD8, 0x0F, 0x00, 0x03, 0xF5, 0x41, 0x11, 0x08, 0x13, 0x01, 0x00, 0x00, 0x81, 0x46, 0x11, 0x08
	.byte 0x10, 0xB5, 0x03, 0x1C, 0x9C, 0x30, 0x00, 0x68, 0x00, 0x28, 0x0F, 0xD0, 0x06, 0x4A, 0x11, 0x68
	.byte 0xD8, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x24, 0x00, 0x5F, 0x02, 0x30, 0x80, 0x00, 0x80, 0x31
	.byte 0x09, 0x18, 0x08, 0x68, 0x08, 0x30, 0x03, 0xE0, 0xD8, 0x0F, 0x00, 0x03, 0xD8, 0x6A, 0x11, 0x4A
	.byte 0xD8, 0x62, 0x11, 0x48, 0xD8, 0x64, 0x10, 0x68, 0x82, 0x6D, 0x10, 0x48, 0x11, 0x18, 0x01, 0x20
	.byte 0x08, 0x70, 0xD8, 0x6A, 0x50, 0x63, 0x11, 0x1C, 0xA4, 0x31, 0x18, 0x1C, 0x9C, 0x30, 0x00, 0x68
	.byte 0x08, 0x60, 0x04, 0x31, 0x18, 0x1C, 0xA0, 0x30, 0x00, 0x68, 0x08, 0x60, 0x04, 0x31, 0x18, 0x1C
	.byte 0xA4, 0x30, 0x00, 0x68, 0x08, 0x60, 0x06, 0x48, 0x50, 0x65, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03, 0xF5, 0x41, 0x11, 0x08, 0x13, 0x01, 0x00, 0x00
	.byte 0x81, 0x46, 0x11, 0x08
