	.syntax unified
	.text

	thumb_func_start sub_81656D8
sub_81656D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x068
	str r0, [sp, #0x010]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _08165754 @ =0x08CDD128
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x18]
	adds r4, r1, #0x0
	adds r4, #0x50
	adds r0, r4, #0x0
	bl sub_8163320
	adds r0, r4, #0x0
	movs r1, #0x20
	bl sub_81632EC
	ldr r4, _08165758 @ =0x08212BB8
	movs r0, #0x24
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x20
	str r1, [sp, #0x000]
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801B870
	movs r0, #0x00
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x54]
	str r0, [r2, #0x58]
	ldr r0, _0816575C @ =0x00001CD8
	movs r1, #0x00
	bl sub_80E9A6C
	movs r0, #0x11
	movs r1, #0x00
	bl sub_8150A1C
	ldr r0, _08165760 @ =0x00001CDE
	bl sub_80E99E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x5C]
	cmp r0, #0x01
	ble _08165764
	cmp r0, #0x05
	ble _08165766
	movs r0, #0x05
	b _08165766
_08165754: .4byte dword_8CDD128 @ =0x08CDD128
_08165758: .4byte dword_8212BB8 @ =0x08212BB8
_0816575C: .4byte 0x00001CD8
_08165760: .4byte 0x00001CDE
_08165764:
	movs r0, #0x01
_08165766:
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x5C]
	str r0, [r2, #0x60]
	movs r0, #0x00
	str r0, [r2, #0x68]
	str r0, [r2, #0x6C]
	movs r0, #0xFA
	lsls r0, r0, #0x01
	bl sub_8163110
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0816578C
	ldr r1, [sp, #0x010]
	ldr r0, [r1, #0x6C]
	movs r1, #0x20
	orrs r0, r1
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x6C]
_0816578C:
	ldr r4, _081657EC @ =0x000001F5
	adds r0, r4, #0x0
	bl sub_8163110
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081657AE
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8163134
	ldr r1, [sp, #0x010]
	ldr r0, [r1, #0x6C]
	movs r1, #0xC0
	orrs r0, r1
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x6C]
_081657AE:
	ldr r1, [sp, #0x010]
	ldr r0, [r1, #0x6C]
	movs r1, #0x11
	orrs r0, r1
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x6C]
	bl sub_8163BB8
	ldr r0, _081657F0 @ =0x08213004
	movs r1, #0xC0
	lsls r1, r1, #0x13
	bl sub_8163DB8
	ldr r0, _081657F4 @ =0x08212C2D
	ldr r1, _081657F8 @ =0x06007000
	bl sub_8163DB8
	ldr r0, _081657FC @ =0x0300034C
	ldr r1, _08165800 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0816580C
	ldr r0, _08165804 @ =0x08214129
	ldr r1, _08165808 @ =0x02000080
	bl sub_8163DB8
	b _08165814
	.byte 0x00, 0x00
_081657EC: .4byte 0x000001F5
_081657F0: .4byte dword_8213004 @ =0x08213004
_081657F4: .4byte dword_8212C2D @ =0x08212C2D
_081657F8: .4byte 0x06007000
_081657FC: .4byte 0x0300034C
_08165800: .4byte 0x00000888
_08165804: .4byte dword_8214129 @ =0x08214129
_08165808: .4byte 0x02000080
_0816580C:
	ldr r0, _08165BF4 @ =0x08214036
	ldr r1, _08165BF8 @ =0x02000080
	bl sub_8163DB8
_08165814:
	ldr r2, _08165BFC @ =0x08212BC0
	movs r0, #0x10
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_81638B0
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x1C]
	ldr r2, _08165C00 @ =0x08212BC8
	movs r0, #0xA4
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x0D
	str r1, [sp, #0x000]
	movs r1, #0x01
	movs r2, #0x02
	movs r3, #0x17
	bl sub_8164294
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x48]
	movs r1, #0x6E
	adds r0, #0xA2
	movs r4, #0x00
	strh r1, [r0, #0x00]
	ldr r2, _08165C04 @ =0x08212BD0
	movs r0, #0x38
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x0E
	str r1, [sp, #0x000]
	movs r2, #0x00
	str r2, [sp, #0x004]
	add r1, sp, #0x008
	strb r4, [r1, #0x00]
	movs r1, #0x02
	movs r2, #0x03
	movs r3, #0x1D
	bl sub_8163FF0
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x44]
	movs r1, #0x04
	str r1, [sp, #0x000]
	movs r1, #0x01
	movs r2, #0x04
	movs r3, #0x04
	bl sub_8165250
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x44]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x02
	movs r2, #0x10
	movs r3, #0x06
	bl sub_8165250
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x44]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x03
	movs r2, #0x1F
	movs r3, #0x1A
	bl sub_8165250
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x44]
	movs r1, #0x1F
	str r1, [sp, #0x000]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8165250
	ldr r6, _08165C08 @ =0x08212BD8
	movs r0, #0x24
	movs r1, #0x00
	adds r2, r6, #0x0
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x08
	adds r2, r6, #0x0
	bl process_add
	ldr r0, _08165C0C @ =0x08CDD140
	str r0, [r4, #0x18]
	movs r0, #0x00
	str r0, [r4, #0x20]
	str r0, [r4, #0x1C]
	ldr r1, [sp, #0x010]
	str r4, [r1, #0x4C]
	str r1, [r4, #0x14]
	ldr r2, _08165C10 @ =0x08212BE0
	movs r0, #0x10
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_8162968
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x38]
	ldr r2, _08165C14 @ =0x08212BE8
	movs r0, #0x30
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	bl sub_8163298
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x3C]
	movs r1, #0x80
	lsls r1, r1, #0x04
	movs r2, #0x80
	lsls r2, r2, #0x06
	bl sub_8163264
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x3C]
	bl sub_8162F20
	ldr r1, _08165C18 @ =0x0200000E
	ldr r2, _08165C1C @ =0x00000E03
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	subs r1, #0x0E
	movs r2, #0xF2
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x00
	ldr r1, _08165C20 @ =0x00001001
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x00
	ldr r1, _08165C20 @ =0x00001001
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r1, sp, #0x00C
	str r1, [sp, #0x004]
	str r4, [sp, #0x008]
	ldr r1, _08165C20 @ =0x00001001
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	movs r0, #0x00
	ldr r1, _08165C24 @ =0x00001002
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x00
	ldr r1, _08165C24 @ =0x00001002
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	movs r2, #0x00
	str r2, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	ldr r1, _08165C24 @ =0x00001002
	movs r3, #0x00
	bl sub_8021574
	ldr r6, _08165C28 @ =0x0000105F
	movs r0, #0x00
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x00
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	adds r6, #0x1E
	movs r0, #0x00
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x00
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	subs r6, #0x20
	movs r0, #0x00
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x00
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	adds r6, #0x1E
	movs r0, #0x00
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x00
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	movs r0, #0x00
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x00
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	movs r1, #0x00
	str r1, [sp, #0x000]
	add r2, sp, #0x00C
	str r2, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	movs r1, #0x80
	lsls r1, r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r6, _08165C2C @ =0x00005002
	movs r0, #0x04
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x04
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r1, sp, #0x00C
	str r1, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r2, _08165C30 @ =0x00005001
	mov r10, r2
	movs r0, #0x04
	mov r1, r10
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x04
	mov r1, r10
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r1, sp, #0x00C
	str r1, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	mov r1, r10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r2, _08165C34 @ =0x08212BF0
	movs r0, #0x14
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	ldr r2, [sp, #0x010]
	ldr r1, [r2, #0x1C]
	bl sub_81655B0
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x30]
	ldr r2, _08165C38 @ =0x08212BF8
	movs r0, #0x1C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_8162AD4
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x34]
	ldr r7, [r2, #0x6C]
	movs r0, #0x20
	ands r7, r0
	cmp r7, #0x00
	bne _08165AC2
	b _08165D00
_08165AC2:
	ldr r7, [r2, #0x1C]
	ldr r2, _08165C3C @ =0x08212C00
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	ldr r6, _08165C40 @ =0x08214574
	movs r1, #0x01
	bl sub_8161C28
	ldr r0, _08165C44 @ =0x08CDD168
	mov r8, r0
	str r0, [r4, #0x0C]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r2, #0x03
	str r2, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x04
	mov r2, r10
	movs r3, #0x00
	bl sub_8163ADC
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r1, #0x03
	str r1, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x05
	movs r3, #0x00
	bl sub_8163A80
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_81639E0
	adds r0, r4, #0x0
	bl sub_8165510
	ldr r2, [sp, #0x010]
	str r4, [r2, #0x28]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r0, [sp, #0x010]
	ldr r7, [r0, #0x1C]
	ldr r2, _08165C48 @ =0x08212C08
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	ldr r6, _08165C4C @ =0x08214582
	movs r1, #0x01
	bl sub_8161C28
	mov r1, r8
	str r1, [r4, #0x0C]
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x04
	mov r2, r10
	movs r3, #0x00
	bl sub_8163ADC
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r2, #0x03
	str r2, [sp, #0x004]
	adds r0, r4, #0x0
	movs r2, #0x80
	lsls r2, r2, #0x05
	movs r3, #0x00
	bl sub_8163A80
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_81639E0
	adds r0, r4, #0x0
	bl sub_8165510
	ldr r0, [sp, #0x010]
	str r4, [r0, #0x2C]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r1, [sp, #0x010]
	ldr r7, [r1, #0x1C]
	ldr r2, _08165C50 @ =0x08212C10
	movs r0, #0x70
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	ldr r6, _08165C54 @ =0x0821425A
	movs r1, #0x00
	bl sub_8161C28
	ldr r2, _08165C58 @ =0x08CDD178
	str r2, [r4, #0x0C]
	adds r0, r4, #0x0
	bl sub_8167F30
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r1, #0x02
	mov r8, r1
	str r1, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x00
	ldr r2, _08165C20 @ =0x00001001
	movs r3, #0x01
	bl sub_8163ADC
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x05
	movs r3, #0x00
	bl sub_8163A80
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_81639E0
	adds r0, r4, #0x0
	ldr r1, _08165C5C @ =0x0821421B
	bl sub_8163B5C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8165484
	ldr r1, [sp, #0x010]
	str r4, [r1, #0x20]
	adds r0, r7, #0x0
	b _08165C60
_08165BF4: .4byte dword_8214036 @ =0x08214036
_08165BF8: .4byte 0x02000080
_08165BFC: .4byte dword_8212BC0 @ =0x08212BC0
_08165C00: .4byte dword_8212BC8 @ =0x08212BC8
_08165C04: .4byte dword_8212BD0 @ =0x08212BD0
_08165C08: .4byte dword_8212BD8 @ =0x08212BD8
_08165C0C: .4byte dword_8CDD140 @ =0x08CDD140
_08165C10: .4byte dword_8212BE0 @ =0x08212BE0
_08165C14: .4byte dword_8212BE8 @ =0x08212BE8
_08165C18: .4byte 0x0200000E
_08165C1C: .4byte 0x00000E03
_08165C20: .4byte 0x00001001
_08165C24: .4byte 0x00001002
_08165C28: .4byte 0x0000105F
_08165C2C: .4byte 0x00005002
_08165C30: .4byte 0x00005001
_08165C34: .4byte dword_8212BF0 @ =0x08212BF0
_08165C38: .4byte dword_8212BF8 @ =0x08212BF8
_08165C3C: .4byte dword_8212C00 @ =0x08212C00
_08165C40: .4byte dword_8214574 @ =0x08214574
_08165C44: .4byte dword_8CDD168 @ =0x08CDD168
_08165C48: .4byte dword_8212C08 @ =0x08212C08
_08165C4C: .4byte dword_8214582 @ =0x08214582
_08165C50: .4byte dword_8212C10 @ =0x08212C10
_08165C54: .4byte dword_821425A @ =0x0821425A
_08165C58: .4byte dword_8CDD178 @ =0x08CDD178
_08165C5C: .4byte dword_821421B @ =0x0821421B
_08165C60:
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r2, [sp, #0x010]
	ldr r7, [r2, #0x1C]
	ldr r2, _08165CE4 @ =0x08212C18
	movs r0, #0x70
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	ldr r6, _08165CE8 @ =0x08214268
	movs r1, #0x00
	bl sub_8161C28
	ldr r0, _08165CEC @ =0x08CDD178
	str r0, [r4, #0x0C]
	adds r0, r4, #0x0
	bl sub_8167F30
	movs r1, #0x00
	str r1, [sp, #0x000]
	mov r2, r8
	str r2, [sp, #0x004]
	adds r0, r4, #0x0
	ldr r2, _08165CF0 @ =0x00001002
	movs r3, #0x01
	bl sub_8163ADC
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r1, #0x03
	str r1, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x05
	movs r3, #0x00
	bl sub_8163A80
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_81639E0
	adds r0, r4, #0x0
	ldr r1, _08165CF4 @ =0x0821421B
	bl sub_8163B5C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8165484
	ldr r2, [sp, #0x010]
	str r4, [r2, #0x24]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r1, _08165CF8 @ =0x0821428E
	ldr r2, _08165CFC @ =0x0821429A
	ldr r0, [sp, #0x010]
	bl sub_8167E30
	b _08165EAE
	.byte 0x00, 0x00
_08165CE4: .4byte dword_8212C18 @ =0x08212C18
_08165CE8: .4byte dword_8214268 @ =0x08214268
_08165CEC: .4byte dword_8CDD178 @ =0x08CDD178
_08165CF0: .4byte 0x00001002
_08165CF4: .4byte dword_821421B @ =0x0821421B
_08165CF8: .4byte dword_821428E @ =0x0821428E
_08165CFC: .4byte dword_821429A @ =0x0821429A
_08165D00:
	ldr r0, [sp, #0x010]
	ldr r0, [r0, #0x1C]
	str r0, [sp, #0x020]
	ldr r2, _081660E8 @ =0x08212C00
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	ldr r6, _081660EC @ =0x08214590
	movs r1, #0x01
	bl sub_8161C28
	ldr r1, _081660F0 @ =0x08CDD168
	mov r8, r1
	str r1, [r4, #0x0C]
	str r7, [sp, #0x000]
	movs r2, #0x03
	str r2, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x04
	mov r2, r10
	movs r3, #0x00
	bl sub_8163ADC
	str r7, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x05
	movs r3, #0x00
	bl sub_8163A80
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_81639E0
	adds r0, r4, #0x0
	bl sub_8165510
	ldr r1, [sp, #0x010]
	str r4, [r1, #0x28]
	ldr r0, [sp, #0x020]
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r2, [sp, #0x010]
	ldr r2, [r2, #0x1C]
	str r2, [sp, #0x024]
	ldr r2, _081660F4 @ =0x08212C08
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	ldr r6, _081660F8 @ =0x0821459E
	movs r1, #0x01
	bl sub_8161C28
	mov r0, r8
	str r0, [r4, #0x0C]
	str r7, [sp, #0x000]
	movs r1, #0x03
	str r1, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x04
	mov r2, r10
	movs r3, #0x00
	bl sub_8163ADC
	str r7, [sp, #0x000]
	movs r2, #0x03
	str r2, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x05
	movs r3, #0x00
	bl sub_8163A80
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_81639E0
	adds r0, r4, #0x0
	bl sub_8165510
	ldr r0, [sp, #0x010]
	str r4, [r0, #0x2C]
	ldr r0, [sp, #0x024]
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r1, [sp, #0x010]
	ldr r1, [r1, #0x1C]
	str r1, [sp, #0x028]
	ldr r2, _081660FC @ =0x08212C10
	movs r0, #0x70
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	ldr r6, _08166100 @ =0x08214236
	movs r1, #0x00
	bl sub_8161C28
	ldr r2, _08166104 @ =0x08CDD178
	str r2, [r4, #0x0C]
	adds r0, r4, #0x0
	bl sub_8167F30
	str r7, [sp, #0x000]
	movs r0, #0x02
	mov r8, r0
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x00
	ldr r2, _08166108 @ =0x00001001
	movs r3, #0x01
	bl sub_8163ADC
	str r7, [sp, #0x000]
	movs r1, #0x03
	str r1, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x05
	movs r3, #0x00
	bl sub_8163A80
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_81639E0
	adds r0, r4, #0x0
	ldr r1, _0816610C @ =0x0821421B
	bl sub_8163B5C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8165484
	ldr r2, [sp, #0x010]
	str r4, [r2, #0x20]
	ldr r0, [sp, #0x028]
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r0, [sp, #0x010]
	ldr r0, [r0, #0x1C]
	str r0, [sp, #0x02C]
	ldr r2, _08166110 @ =0x08212C18
	movs r0, #0x70
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	ldr r6, _08166114 @ =0x08214248
	movs r1, #0x00
	bl sub_8161C28
	ldr r1, _08166104 @ =0x08CDD178
	str r1, [r4, #0x0C]
	adds r0, r4, #0x0
	bl sub_8167F30
	str r7, [sp, #0x000]
	mov r2, r8
	str r2, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x00
	ldr r2, _08166118 @ =0x00001002
	movs r3, #0x01
	bl sub_8163ADC
	str r7, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x05
	movs r3, #0x00
	bl sub_8163A80
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_81639E0
	adds r0, r4, #0x0
	ldr r1, _0816610C @ =0x0821421B
	bl sub_8163B5C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8165484
	ldr r1, [sp, #0x010]
	str r4, [r1, #0x24]
	ldr r0, [sp, #0x02C]
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r1, _0816611C @ =0x08214276
	ldr r2, _08166120 @ =0x08214282
	ldr r0, [sp, #0x010]
	bl sub_8167E30
_08165EAE:
	movs r0, #0x8E
	lsls r0, r0, #0x02
	ldr r2, _08166124 @ =0x08212C20
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	str r0, [sp, #0x030]
	ldr r0, _08166128 @ =0x080022A4
	ldr r6, _0816612C @ =0x08001DF8
	subs r7, r0, r6
	adds r1, r7, #0x3
	ldr r2, _08166130 @ =0x08212B90
	movs r0, #0x00
	bl alloc_heap_8018CEC
	adds r4, r0, #0x0
	ldr r2, [sp, #0x030]
	movs r1, #0x8C
	lsls r1, r1, #0x02
	adds r0, r2, r1
	str r4, [r0, #0x00]
	adds r4, #0x03
	movs r0, #0x04
	negs r0, r0
	ands r4, r0
	lsls r2, r7, #0x09
	lsrs r0, r2, #0x0B
	str r0, [sp, #0x038]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r1, [sp, #0x038]
	orrs r1, r0
	str r1, [sp, #0x038]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	ldr r2, [sp, #0x038]
	bl CpuSet
	ldr r2, [sp, #0x030]
	movs r1, #0x8D
	lsls r1, r1, #0x02
	adds r0, r2, r1
	str r4, [r0, #0x00]
	movs r0, #0xB4
	lsls r0, r0, #0x01
	adds r2, r2, r0
	mov r8, r2
	ldr r7, [sp, #0x030]
	adds r7, #0xB4
	ldr r6, [sp, #0x030]
	movs r1, #0x0E
	mov r9, r1
_08165F18:
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8163FB8
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8163FB8
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8163FB8
	mov r2, r8
	adds r2, #0x0C
	str r2, [sp, #0x060]
	adds r4, r7, #0x0
	adds r4, #0x0C
	adds r0, r6, #0x0
	adds r0, #0x0C
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8163FB8
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8163FB8
	ldr r0, [sp, #0x060]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8163FB8
	mov r0, r8
	adds r0, #0x18
	str r0, [sp, #0x064]
	adds r4, #0x0C
	adds r0, r6, #0x0
	adds r0, #0x18
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8163FB8
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8163FB8
	ldr r0, [sp, #0x064]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8163FB8
	movs r1, #0x24
	add r8, r1
	adds r7, #0x24
	adds r6, #0x24
	movs r2, #0x03
	negs r2, r2
	add r9, r2
	mov r0, r9
	cmp r0, #0x00
	bge _08165F18
	ldr r2, [sp, #0x030]
	movs r0, #0x87
	lsls r0, r0, #0x02
	adds r1, r2, r0
	movs r0, #0x20
	str r0, [r1, #0x00]
	movs r0, #0x88
	lsls r0, r0, #0x02
	adds r1, r2, r0
	movs r0, #0xE8
	str r0, [r1, #0x00]
	movs r0, #0x89
	lsls r0, r0, #0x02
	adds r1, r2, r0
	movs r0, #0xC0
	lsls r0, r0, #0x03
	str r0, [r1, #0x00]
	ldr r1, [sp, #0x010]
	str r2, [r1, #0x40]
	ldr r1, [r1, #0x28]
	ldr r2, [r1, #0x18]
	mov r9, r2
	ldr r0, [r1, #0x20]
	mov r10, r0
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x2C]
	ldr r2, [r0, #0x18]
	str r2, [sp, #0x018]
	ldr r0, [r0, #0x20]
	str r0, [sp, #0x01C]
	movs r0, #0x00
	str r0, [sp, #0x014]
	ldr r2, [sp, #0x010]
	ldr r2, [r2, #0x3C]
	str r2, [sp, #0x044]
	ldr r0, [sp, #0x010]
	ldr r0, [r0, #0x1C]
	str r0, [sp, #0x040]
	ldr r2, [sp, #0x030]
	str r2, [sp, #0x03C]
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x00
	str r0, [sp, #0x048]
_08166006:
	mov r2, r9
	ldr r1, [sp, #0x018]
	subs r2, r1, r2
	str r2, [sp, #0x04C]
	ldr r1, [sp, #0x014]
	adds r0, r2, #0x0
	muls r0, r1
	movs r1, #0x0E
	bl __divsi3
	add r0, r9
	str r0, [r7, #0x00]
	ldr r1, [r5, #0x1C]
	ldr r0, [r5, #0x3C]
	adds r1, r1, r0
	ldr r6, [sp, #0x03C]
	adds r6, #0x04
	ldr r2, [sp, #0x048]
	adds r0, r6, r2
	ldr r2, _08166134 @ =0xFFFFF800
	adds r1, r1, r2
	str r1, [r0, #0x00]
	ldr r0, [sp, #0x01C]
	mov r1, r10
	subs r0, r0, r1
	mov r8, r0
	ldr r2, [sp, #0x014]
	mov r0, r8
	muls r0, r2
	movs r1, #0x0E
	bl __divsi3
	add r0, r10
	str r0, [r7, #0x08]
	adds r0, r7, #0x0
	adds r0, #0x0C
	str r0, [sp, #0x050]
	ldr r4, [sp, #0x048]
	adds r4, #0x0C
	ldr r1, [sp, #0x014]
	adds r1, #0x01
	str r1, [sp, #0x054]
	ldr r2, [sp, #0x04C]
	adds r0, r2, #0x0
	muls r0, r1
	movs r1, #0x0E
	bl __divsi3
	add r0, r9
	str r0, [r7, #0x0C]
	ldr r1, [r5, #0x1C]
	ldr r0, [r5, #0x3C]
	adds r1, r1, r0
	adds r4, r6, r4
	ldr r0, _08166134 @ =0xFFFFF800
	adds r1, r1, r0
	str r1, [r4, #0x00]
	ldr r1, [sp, #0x054]
	mov r0, r8
	muls r0, r1
	movs r1, #0x0E
	bl __divsi3
	add r0, r10
	ldr r2, [sp, #0x050]
	str r0, [r2, #0x08]
	adds r0, r7, #0x0
	adds r0, #0x18
	str r0, [sp, #0x058]
	ldr r1, [sp, #0x048]
	adds r1, #0x18
	str r1, [sp, #0x05C]
	ldr r4, [sp, #0x014]
	adds r4, #0x02
	ldr r2, [sp, #0x04C]
	adds r0, r2, #0x0
	muls r0, r4
	movs r1, #0x0E
	bl __divsi3
	add r0, r9
	str r0, [r7, #0x18]
	ldr r1, [r5, #0x1C]
	ldr r0, [r5, #0x3C]
	adds r1, r1, r0
	ldr r0, [sp, #0x05C]
	adds r6, r6, r0
	ldr r2, _08166134 @ =0xFFFFF800
	adds r1, r1, r2
	str r1, [r6, #0x00]
	mov r0, r8
	muls r0, r4
	movs r1, #0x0E
	bl __divsi3
	add r0, r10
	ldr r1, [sp, #0x058]
	str r0, [r1, #0x08]
	adds r7, #0x24
	ldr r2, [sp, #0x048]
	adds r2, #0x24
	str r2, [sp, #0x048]
	ldr r0, [sp, #0x014]
	adds r0, #0x03
	str r0, [sp, #0x014]
	cmp r0, #0x0E
	ble _08166006
	movs r4, #0x00
	ldr r1, [sp, #0x044]
	ldr r2, [r1, #0x1C]
	ldr r0, [sp, #0x040]
	movs r1, #0x00
	b _08166138
_081660E8: .4byte dword_8212C00 @ =0x08212C00
_081660EC: .4byte dword_8214590 @ =0x08214590
_081660F0: .4byte dword_8CDD168 @ =0x08CDD168
_081660F4: .4byte dword_8212C08 @ =0x08212C08
_081660F8: .4byte dword_821459E @ =0x0821459E
_081660FC: .4byte dword_8212C10 @ =0x08212C10
_08166100: .4byte dword_8214236 @ =0x08214236
_08166104: .4byte dword_8CDD178 @ =0x08CDD178
_08166108: .4byte 0x00001001
_0816610C: .4byte dword_821421B @ =0x0821421B
_08166110: .4byte dword_8212C18 @ =0x08212C18
_08166114: .4byte dword_8214248 @ =0x08214248
_08166118: .4byte 0x00001002
_0816611C: .4byte dword_8214276 @ =0x08214276
_08166120: .4byte dword_8214282 @ =0x08214282
_08166124: .4byte dword_8212C20 @ =0x08212C20
_08166128: .4byte dword_80022A4 @ =0x080022A4
_0816612C: .4byte dword_8001DF8 @ =0x08001DF8
_08166130: .4byte dword_8212B90 @ =0x08212B90
_08166134: .4byte 0xFFFFF800
_08166138:
	bl sub_8163864
	ldr r0, _08166158 @ =0x02000080
	strh r4, [r0, #0x00]
	ldr r1, _0816615C @ =0x0300034C
	ldr r0, _08166160 @ =0x0000FFFF
	strh r0, [r1, #0x02]
	ldr r0, [sp, #0x010]
	add sp, #0x068
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08166158: .4byte 0x02000080
_0816615C: .4byte 0x0300034C
_08166160: .4byte 0x0000FFFF
