	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8133658
sub_8133658:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r4, [r6, #0x08]
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _081336B2
	movs r6, #0x80
	lsls r6, r6, #0x02
	bl sub_80E3C3C
	ldr r5, [r4, #0x30]
	cmp r5, #0x00
	beq _0813375C
_08133674:
	adds r4, r5, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	beq _081336AA
_0813367C:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	bge _08133684
	adds r0, #0xFF
_08133684:
	asrs r0, r0, #0x08
	ldr r1, [r4, #0x08]
	cmp r1, #0x00
	bge _0813368E
	adds r1, #0xFF
_0813368E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x0C]
	cmp r2, #0x00
	bge _08133698
	adds r2, #0xFF
_08133698:
	asrs r2, r2, #0x08
	str r6, [sp, #0x000]
	movs r3, #0x01
	bl sub_80E38E8
	adds r6, #0x02
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _0813367C
_081336AA:
	ldr r5, [r5, #0x30]
	cmp r5, #0x00
	bne _08133674
	b _0813375C
_081336B2:
	ldr r2, _08133764 @ =0x03001034
	ldr r0, _08133768 @ =0x08198154
	ldr r1, _0813376C @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _08133770 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08133774 @ =0x00003CD0
	adds r0, r0, r1
	ldr r1, _08133778 @ =0x02000460
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, _0813377C @ =0x0300034C
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x08
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _08133780 @ =0x03000D74
	ldr r0, [r2, #0x00]
	ldrh r1, [r0, #0x28]
	strh r1, [r0, #0x2A]
	ldrh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	movs r3, #0x00
	ldr r5, _08133784 @ =0x00001FFF
	ldr r0, _08133788 @ =0x0000FFFF
	adds r4, r0, #0x0
_081336F0:
	ldr r0, [r2, #0x00]
	lsls r1, r3, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r5
	bne _08133702
	orrs r0, r4
	strh r0, [r1, #0x00]
_08133702:
	adds r1, r3, #0x1
	ldr r0, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r5
	bne _08133716
	orrs r0, r4
	strh r0, [r1, #0x00]
_08133716:
	adds r1, r3, #0x2
	ldr r0, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r5
	bne _0813372A
	orrs r0, r4
	strh r0, [r1, #0x00]
_0813372A:
	adds r1, r3, #0x3
	ldr r0, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r5
	bne _0813373E
	orrs r0, r4
	strh r0, [r1, #0x00]
_0813373E:
	adds r1, r3, #0x4
	ldr r0, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r5
	bne _08133752
	orrs r0, r4
	strh r0, [r1, #0x00]
_08133752:
	adds r3, #0x05
	cmp r3, #0x0E
	ble _081336F0
	movs r0, #0x00
	str r0, [r6, #0x04]
_0813375C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08133764: .4byte 0x03001034
_08133768: .4byte 0x08198154
_0813376C: .4byte 0x081980D8
_08133770: .4byte 0x03000FDC
_08133774: .4byte 0x00003CD0
_08133778: .4byte 0x02000460
_0813377C: .4byte 0x0300034C
_08133780: .4byte 0x03000D74
_08133784: .4byte 0x00001FFF
_08133788: .4byte 0x0000FFFF
	thumb_func_start sub_813378C
sub_813378C:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xA8
	ldr r0, [r2, #0x00]
	adds r0, #0x01
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA0
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bge _081337A8
	b _081338C0
_081337A8:
	movs r6, #0x00
	str r6, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _081338B0
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _081337CE
	adds r0, #0xFF
_081337CE:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x14
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _081337DC
	adds r0, #0xFF
_081337DC:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _081337EA
	adds r0, #0xFF
_081337EA:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x00
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r6, [r0, #0x00]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	movs r5, #0x0F
_08133860:
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	subs r5, #0x04
	cmp r5, #0x00
	bge _08133860
	ldr r0, _081338AC @ =0x081338CD
	str r0, [r4, #0x4C]
	b _081338C0
_081338AC: .4byte sub_81338CC
_081338B0:
	adds r0, r5, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _081338C8 @ =0x0808750D
	str r0, [r5, #0x4C]
_081338C0:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081338C8: .4byte sub_808750C
	thumb_func_start sub_81338CC
sub_81338CC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x14
	strh r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x9C
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bge _081338F8
	adds r0, #0xFF
_081338F8:
	asrs r7, r0, #0x08
	adds r4, r6, #0x0
	adds r4, #0x0C
	adds r5, r4, #0x0
	cmp r7, #0x0A
	bne _0813390E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
_0813390E:
	movs r1, #0x84
	adds r1, r1, r6
	mov r10, r1
	movs r2, #0x88
	adds r2, r2, r6
	mov r9, r2
	cmp r4, #0x00
	beq _081339C0
	ldr r1, _081339A0 @ =0x0819832C
	mov r0, r10
	str r0, [sp, #0x004]
	movs r2, #0x00
	mov r8, r2
	ldr r0, _081339A4 @ =0x08198220
	subs r1, r1, r0
	str r1, [sp, #0x000]
_0813392E:
	ldr r0, _081339A8 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r0, [sp, #0x000]
	adds r2, r2, r0
	mov r0, r8
	movs r1, #0x14
	bl _call_via_r2
	adds r0, #0x50
	ldr r2, _081339AC @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r3, r0, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08133954
	adds r0, #0x3F
_08133954:
	asrs r0, r0, #0x06
	adds r1, r7, #0x0
	muls r1, r0
	ldr r2, [sp, #0x004]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r0, _081339B0 @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08133970
	adds r0, #0x3F
_08133970:
	asrs r0, r0, #0x06
	muls r0, r7
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	bgt _081339B4
	movs r0, #0x00
	str r0, [r5, #0x00]
	cmp r4, #0x00
	beq _081339C0
_08133992:
	adds r0, r4, #0x0
	bl sub_807FA94
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _08133992
	b _081339C0
_081339A0: .4byte 0x0819832C
_081339A4: .4byte 0x08198220
_081339A8: .4byte 0x03001038
_081339AC: .4byte 0x08198584
_081339B0: .4byte 0x08198504
_081339B4:
	movs r0, #0x60
	add r8, r0
	adds r5, r4, #0x0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _0813392E
_081339C0:
	ldr r5, [r6, #0x2C]
	ldr r1, [r5, #0x38]
	mov r2, r10
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081339D0
	adds r0, #0xFF
_081339D0:
	asrs r4, r0, #0x08
	ldr r1, [r5, #0x3C]
	mov r2, r9
	ldr r0, [r2, #0x00]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _081339E0
	adds r1, #0xFF
_081339E0:
	asrs r3, r1, #0x08
	ldr r2, _08133AB4 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	lsls r1, r3, #0x02
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	subs r0, #0x08
	cmp r0, r7
	bge _08133A26
	adds r0, #0x10
	cmp r7, r0
	bge _08133A26
	ldr r1, [r5, #0x40]
	cmp r1, #0x00
	blt _08133A26
	ldr r0, _08133AB8 @ =0x000007FF
	cmp r1, r0
	bgt _08133A26
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08133A26
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x01
	str r0, [r4, #0x00]
_08133A26:
	ldr r0, [r5, #0x28]
	bl sub_8087650
	cmp r0, #0x00
	beq _08133A98
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r1, [r5, #0x38]
	mov r2, r10
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08133A42
	adds r0, #0xFF
_08133A42:
	asrs r4, r0, #0x08
	ldr r1, [r5, #0x3C]
	mov r2, r9
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08133A52
	adds r0, #0xFF
_08133A52:
	asrs r3, r0, #0x08
	ldr r2, _08133AB4 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	lsls r1, r3, #0x02
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	subs r0, #0x08
	cmp r0, r7
	bge _08133A98
	adds r0, #0x10
	cmp r7, r0
	bge _08133A98
	ldr r1, [r5, #0x40]
	cmp r1, #0x00
	blt _08133A98
	ldr r0, _08133AB8 @ =0x000007FF
	cmp r1, r0
	bgt _08133A98
	adds r4, r6, #0x0
	adds r4, #0xA4
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08133A98
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x01
	str r0, [r4, #0x00]
_08133A98:
	cmp r7, #0xC7
	ble _08133AA2
	adds r0, r6, #0x0
	bl sub_807C298
_08133AA2:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08133AB4: .4byte 0x03001038
_08133AB8: .4byte 0x000007FF
	.byte 0x10, 0xB5, 0x04, 0x1C, 0xA0, 0x68, 0x81, 0x7C, 0x08, 0x20, 0x08, 0x40, 0x00, 0x28, 0x07, 0xD0
	.byte 0x20, 0x1C, 0x10, 0x21, 0x00, 0x22, 0x00, 0x23, 0x4F, 0xF7, 0xA2, 0xF9, 0x02, 0x48, 0xE0, 0x64
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x0D, 0x75, 0x08, 0x08
