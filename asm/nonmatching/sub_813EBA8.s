	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r9, r0
	adds r7, r1, #0x0
	mov r10, r2
	adds r0, r7, #0x0
	bl sub_813ADF0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _0813EBEC
	movs r2, #0xBD
	lsls r2, r2, #0x02
	adds r0, r7, r2
	str r1, [r0, #0x00]
	movs r0, #0xBB
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, _0813EBE8 @ =0x0813F791
	mov r1, r10
	str r0, [r1, #0x00]
	bl _0813F6AA
_0813EBE8: .4byte sub_813F790
_0813EBEC:
	ldr r2, _0813EC28 @ =0x00000242
	adds r0, r7, r2
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r7, #0x0C]
	adds r0, r0, r1
	str r0, [r7, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r4, r0, #0x1D
	cmp r4, #0x02
	bne _0813EC1A
	b _0813EEE8
_0813EC1A:
	cmp r4, #0x02
	bhi _0813EC2C
	cmp r4, #0x00
	beq _0813EC3E
	bl _0813F6AA
	lsls r0, r0, #0x00
_0813EC28:
	lsls r2, r0, #0x09
	lsls r0, r0, #0x00
_0813EC2C:
	cmp r4, #0x04
	bne _0813EC32
	b _0813F120
_0813EC32:
	cmp r4, #0x06
	bne _0813EC3A
	bl _0813F430
_0813EC3A:
	bl _0813F6AA
_0813EC3E:
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x68
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	movs r1, #0x01
	ands r1, r0
	cmp r1, #0x00
	bne _0813EC60
	bl _0813F6AA
_0813EC60:
	ldr r6, _0813ED94 @ =0x03001038
	ldr r4, _0813ED98 @ =0x0819832C
	ldr r0, _0813ED9C @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x0C]
	movs r5, #0x80
	lsls r5, r5, #0x05
	adds r1, r5, #0x0
	bl _call_via_r2
	mov r8, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x10]
	adds r1, r5, #0x0
	bl _call_via_r2
	adds r2, r0, #0x0
	subs r2, #0x01
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	mov r1, r8
	add r3, sp, #0x008
	bl sub_80457E8
	adds r6, r0, #0x0
	movs r0, #0x92
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	cmp r0, #0x81
	bne _0813ECEA
	ldr r0, _0813EDA0 @ =0x7FFFFFFF
	ldr r4, [sp, #0x008]
	cmp r4, r0
	bne _0813ECDC
	movs r0, #0x01
	negs r0, r0
	ldr r3, [sp, #0x00C]
	cmp r3, r0
	bne _0813ECDC
	ldr r0, [sp, #0x010]
	cmp r0, r3
	bne _0813ECDC
	ldr r1, [r7, #0x10]
	ldr r0, _0813EDA4 @ =0x000274FF
	cmp r1, r0
	ble _0813ECCE
	bl _0813F6AA
_0813ECCE:
	ldr r1, [r7, #0x0C]
	movs r0, #0xA0
	lsls r0, r0, #0x04
	cmp r1, r0
	bgt _0813ECDC
	bl _0813F6AA
_0813ECDC:
	ldrb r1, [r6, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0813ECEA
	bl _0813F6A0
_0813ECEA:
	movs r0, #0x92
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r1, [r0, #0x00]
	cmp r1, #0x83
	bne _0813EDB0
	ldr r2, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	ldr r0, [sp, #0x010]
	str r0, [sp, #0x000]
	mov r0, r9
	adds r1, r7, #0x0
	bl sub_813F9DC
	lsls r0, r0, #0x18
	ldr r3, [sp, #0x00C]
	cmp r0, #0x00
	bne _0813ED12
	bl _0813F6AA
_0813ED12:
	movs r0, #0xE0
	lsls r0, r0, #0x08
	ldr r4, [sp, #0x008]
	cmp r4, r0
	bne _0813ED5C
	cmp r3, r4
	bne _0813ED36
	ldr r1, [sp, #0x010]
	ldr r0, _0813EDA0 @ =0x7FFFFFFF
	cmp r1, r0
	bne _0813ED36
	ldr r1, [r7, #0x0C]
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r1, r0
	bgt _0813ED36
	bl _0813F6A0
_0813ED36:
	movs r0, #0xE0
	lsls r0, r0, #0x08
	cmp r4, r0
	bne _0813ED5C
	cmp r3, r4
	bne _0813ED5C
	ldr r1, [sp, #0x010]
	ldr r0, _0813EDA0 @ =0x7FFFFFFF
	cmp r1, r0
	bne _0813ED5C
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x06
	cmp r0, r1
	bgt _0813ED5C
	bl _0813F6A0
_0813ED5C:
	ldr r1, [r7, #0x10]
	ldr r0, _0813EDA8 @ =0x00026BFF
	cmp r1, r0
	ble _0813ED76
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x06
	cmp r0, r1
	bgt _0813ED76
	bl _0813F6A0
_0813ED76:
	ldr r1, [r7, #0x0C]
	ldr r0, _0813EDAC @ =0x00019BFF
	cmp r1, r0
	bgt _0813ED80
	b _0813F0F6
_0813ED80:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x06
	cmp r0, r1
	bgt _0813ED92
	bl _0813F6A0
_0813ED92:
	b _0813F0F6
_0813ED94: .4byte 0x03001038
_0813ED98: .4byte 0x0819832C
_0813ED9C: .4byte 0x08198220
_0813EDA0: .4byte 0x7FFFFFFF
_0813EDA4: .4byte 0x000274FF
_0813EDA8: .4byte 0x00026BFF
_0813EDAC: .4byte 0x00019BFF
_0813EDB0:
	ldr r0, _0813EE24 @ =0x00000157
	cmp r1, r0
	beq _0813EDBC
	adds r0, #0x16
	cmp r1, r0
	bne _0813EE30
_0813EDBC:
	ldr r0, _0813EE28 @ =0x7FFFFFFF
	ldr r4, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	cmp r4, r0
	bne _0813EDD8
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	bne _0813EDD8
	ldr r0, [sp, #0x010]
	cmp r0, r3
	bne _0813EDD8
	bl _0813F6AA
_0813EDD8:
	movs r0, #0xE0
	lsls r0, r0, #0x08
	cmp r4, r0
	bne _0813EDFA
	cmp r3, r4
	bne _0813EDFA
	ldr r1, [sp, #0x010]
	ldr r0, _0813EE28 @ =0x7FFFFFFF
	cmp r1, r0
	bne _0813EDFA
	ldr r1, [r7, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r1, r0
	bgt _0813EDFA
	bl _0813F6A0
_0813EDFA:
	movs r0, #0x92
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _0813EE2C @ =0x0000016D
	cmp r1, r0
	beq _0813EE0A
	b _0813F0F6
_0813EE0A:
	cmp r4, #0x00
	bge _0813EE10
	b _0813F0FC
_0813EE10:
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	beq _0813EE1A
	b _0813F0F6
_0813EE1A:
	ldr r0, [sp, #0x010]
	cmp r0, r3
	beq _0813EE22
	b _0813F0F6
_0813EE22:
	b _0813F5DC
_0813EE24: .4byte 0x00000157
_0813EE28: .4byte 0x7FFFFFFF
_0813EE2C: .4byte 0x0000016D
_0813EE30:
	ldr r0, _0813EE90 @ =0x00000165
	cmp r1, r0
	beq _0813EE42
	adds r0, #0x0B
	cmp r1, r0
	beq _0813EE42
	adds r0, #0x01
	cmp r1, r0
	bne _0813EE9E
_0813EE42:
	ldr r0, _0813EE94 @ =0x7FFFFFFF
	ldr r4, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	cmp r4, r0
	bne _0813EE5E
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	bne _0813EE5E
	ldr r0, [sp, #0x010]
	cmp r0, r3
	bne _0813EE5E
	bl _0813F6AA
_0813EE5E:
	movs r0, #0xE0
	lsls r0, r0, #0x08
	cmp r4, r0
	bne _0813EE98
	cmp r3, r4
	bne _0813EE98
	ldr r1, [sp, #0x010]
	ldr r0, _0813EE94 @ =0x7FFFFFFF
	cmp r1, r0
	bne _0813EE76
	bl _0813F6A0
_0813EE76:
	cmp r3, r4
	bne _0813EE98
	cmp r1, r0
	bne _0813EE98
	ldr r1, [r7, #0x18]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	cmp r1, r0
	bgt _0813EE8C
	bl _0813F6A0
_0813EE8C:
	b _0813F0F6
	.byte 0x00, 0x00
_0813EE90: .4byte 0x00000165
_0813EE94: .4byte 0x7FFFFFFF
_0813EE98:
	movs r0, #0x80
	lsls r0, r0, #0x07
	b _0813EEC6
_0813EE9E:
	ldr r0, _0813EEE0 @ =0x0000016B
	ldr r4, [sp, #0x008]
	cmp r1, r0
	beq _0813EEA8
	b _0813F0F6
_0813EEA8:
	ldr r0, _0813EEE4 @ =0x7FFFFFFF
	ldr r3, [sp, #0x00C]
	cmp r4, r0
	bne _0813EEC2
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	bne _0813EEC2
	ldr r0, [sp, #0x010]
	cmp r0, r3
	bne _0813EEC2
	bl _0813F6AA
_0813EEC2:
	movs r0, #0xE0
	lsls r0, r0, #0x08
_0813EEC6:
	cmp r4, r0
	beq _0813EECC
	b _0813F0F6
_0813EECC:
	cmp r3, r4
	beq _0813EED2
	b _0813F0F6
_0813EED2:
	ldr r1, [sp, #0x010]
	ldr r0, _0813EEE4 @ =0x7FFFFFFF
	cmp r1, r0
	bne _0813EEDC
	b _0813F6A0
_0813EEDC:
	b _0813F0F6
	.byte 0x00, 0x00
_0813EEE0: .4byte 0x0000016B
_0813EEE4: .4byte 0x7FFFFFFF
_0813EEE8:
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x68
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	ands r4, r0
	cmp r4, #0x00
	bne _0813EF06
	b _0813F6AA
_0813EF06:
	ldr r0, _0813EFC8 @ =0x03001038
	mov r8, r0
	ldr r4, _0813EFCC @ =0x0819832C
	ldr r0, _0813EFD0 @ =0x08198220
	subs r4, r4, r0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x0C]
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r5, r0, #0x0
	adds r5, #0x01
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x10]
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r2, r0, #0x0
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	add r3, sp, #0x008
	bl sub_80457E8
	adds r6, r0, #0x0
	movs r0, #0x92
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r2, [r0, #0x00]
	cmp r2, #0x7A
	bne _0813EF60
	ldr r1, [r7, #0x0C]
	ldr r0, _0813EFD4 @ =0x0002C3FF
	cmp r1, r0
	ble _0813EF60
	b _0813F6AA
_0813EF60:
	cmp r2, #0x81
	bne _0813EF9E
	ldr r1, [sp, #0x008]
	ldr r0, _0813EFD8 @ =0x7FFFFFFF
	cmp r1, r0
	bne _0813EF92
	movs r0, #0x01
	negs r0, r0
	ldr r3, [sp, #0x00C]
	cmp r3, r0
	bne _0813EF92
	ldr r0, [sp, #0x010]
	cmp r0, r3
	bne _0813EF92
	ldr r1, [r7, #0x10]
	ldr r0, _0813EFDC @ =0x000274FF
	cmp r1, r0
	ble _0813EF86
	b _0813F6AA
_0813EF86:
	ldr r1, [r7, #0x0C]
	movs r0, #0xA0
	lsls r0, r0, #0x04
	cmp r1, r0
	bgt _0813EF92
	b _0813F6AA
_0813EF92:
	ldrb r1, [r6, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0813EF9E
	b _0813F6A0
_0813EF9E:
	movs r0, #0x92
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r1, [r0, #0x00]
	cmp r1, #0x83
	bne _0813EFE4
	ldr r1, [r7, #0x0C]
	ldr r0, _0813EFE0 @ =0x00019BFF
	cmp r1, r0
	bgt _0813EFB4
	b _0813F0F4
_0813EFB4:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x06
	cmp r0, r1
	bgt _0813EFC4
	b _0813F6A0
_0813EFC4:
	b _0813F0F4
	.byte 0x00, 0x00
_0813EFC8: .4byte 0x03001038
_0813EFCC: .4byte 0x0819832C
_0813EFD0: .4byte 0x08198220
_0813EFD4: .4byte 0x0002C3FF
_0813EFD8: .4byte 0x7FFFFFFF
_0813EFDC: .4byte 0x000274FF
_0813EFE0: .4byte 0x00019BFF
_0813EFE4:
	ldr r0, _0813F04C @ =0x00000157
	cmp r1, r0
	beq _0813EFF0
	adds r0, #0x16
	cmp r1, r0
	bne _0813F058
_0813EFF0:
	ldr r0, _0813F050 @ =0x7FFFFFFF
	ldr r4, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	cmp r4, r0
	bne _0813F00A
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	bne _0813F00A
	ldr r0, [sp, #0x010]
	cmp r0, r3
	bne _0813F00A
	b _0813F6AA
_0813F00A:
	movs r0, #0xE0
	lsls r0, r0, #0x08
	cmp r4, r0
	bne _0813F02A
	cmp r3, r4
	bne _0813F02A
	ldr r1, [sp, #0x010]
	ldr r0, _0813F050 @ =0x7FFFFFFF
	cmp r1, r0
	bne _0813F02A
	ldr r1, [r7, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r1, r0
	bgt _0813F02A
	b _0813F6A0
_0813F02A:
	movs r0, #0x92
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _0813F054 @ =0x0000016D
	cmp r1, r0
	bne _0813F0F4
	cmp r4, #0x00
	blt _0813F0FC
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	bne _0813F0F4
	ldr r0, [sp, #0x010]
	cmp r0, r3
	bne _0813F0F4
	b _0813F5DC
_0813F04C: .4byte 0x00000157
_0813F050: .4byte 0x7FFFFFFF
_0813F054: .4byte 0x0000016D
_0813F058:
	ldr r0, _0813F0B0 @ =0x00000165
	cmp r1, r0
	beq _0813F06A
	adds r0, #0x0B
	cmp r1, r0
	beq _0813F06A
	adds r0, #0x01
	cmp r1, r0
	bne _0813F0BE
_0813F06A:
	ldr r0, _0813F0B4 @ =0x7FFFFFFF
	ldr r4, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	cmp r4, r0
	bne _0813F084
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	bne _0813F084
	ldr r0, [sp, #0x010]
	cmp r0, r3
	bne _0813F084
	b _0813F6AA
_0813F084:
	movs r0, #0xE0
	lsls r0, r0, #0x08
	cmp r4, r0
	bne _0813F0B8
	cmp r3, r4
	bne _0813F0B8
	ldr r1, [sp, #0x010]
	ldr r0, _0813F0B4 @ =0x7FFFFFFF
	cmp r1, r0
	bne _0813F09A
	b _0813F6A0
_0813F09A:
	cmp r3, r4
	bne _0813F0B8
	cmp r1, r0
	bne _0813F0B8
	ldr r1, [r7, #0x18]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	cmp r1, r0
	bgt _0813F0AE
	b _0813F6A0
_0813F0AE:
	b _0813F0F4
_0813F0B0: .4byte 0x00000165
_0813F0B4: .4byte 0x7FFFFFFF
_0813F0B8:
	movs r0, #0x80
	lsls r0, r0, #0x07
	b _0813F0E2
_0813F0BE:
	ldr r0, _0813F118 @ =0x0000016B
	cmp r1, r0
	bne _0813F0F4
	ldr r0, _0813F11C @ =0x7FFFFFFF
	ldr r4, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	cmp r4, r0
	bne _0813F0DE
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	bne _0813F0DE
	ldr r0, [sp, #0x010]
	cmp r0, r3
	bne _0813F0DE
	b _0813F6AA
_0813F0DE:
	movs r0, #0xE0
	lsls r0, r0, #0x08
_0813F0E2:
	cmp r4, r0
	bne _0813F0F4
	cmp r3, r4
	bne _0813F0F4
	ldr r1, [sp, #0x010]
	ldr r0, _0813F11C @ =0x7FFFFFFF
	cmp r1, r0
	bne _0813F0F4
	b _0813F6A0
_0813F0F4:
	ldr r4, [sp, #0x008]
_0813F0F6:
	ldr r3, [sp, #0x00C]
	cmp r4, #0x00
	beq _0813F106
_0813F0FC:
	cmp r3, #0x00
	bne _0813F10C
	cmp r4, #0x00
	beq _0813F106
	b _0813F6A0
_0813F106:
	cmp r3, #0x00
	beq _0813F10C
	b _0813F6A0
_0813F10C:
	ldr r1, [sp, #0x010]
	ldr r0, _0813F11C @ =0x7FFFFFFF
	cmp r1, r0
	beq _0813F116
	b _0813F6A0
_0813F116:
	b _0813F6AA
_0813F118: .4byte 0x0000016B
_0813F11C: .4byte 0x7FFFFFFF
_0813F120:
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x68
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	ands r4, r0
	cmp r4, #0x00
	bne _0813F13E
	b _0813F6AA
_0813F13E:
	ldr r6, _0813F21C @ =0x03001038
	ldr r4, _0813F220 @ =0x0819832C
	ldr r0, _0813F224 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x0C]
	movs r5, #0x80
	lsls r5, r5, #0x05
	adds r1, r5, #0x0
	bl _call_via_r2
	mov r8, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x10]
	adds r1, r5, #0x0
	bl _call_via_r2
	adds r2, r0, #0x0
	adds r2, #0x01
	add r5, sp, #0x00C
	str r5, [sp, #0x000]
	add r4, sp, #0x010
	str r4, [sp, #0x004]
	adds r0, r7, #0x0
	mov r1, r8
	add r3, sp, #0x008
	bl sub_80457E8
	adds r6, r0, #0x0
	movs r0, #0x92
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	cmp r0, #0x81
	bne _0813F1C2
	ldr r1, [sp, #0x008]
	ldr r0, _0813F228 @ =0x7FFFFFFF
	cmp r1, r0
	bne _0813F1B6
	movs r0, #0x01
	negs r0, r0
	ldr r3, [sp, #0x00C]
	cmp r3, r0
	bne _0813F1B6
	ldr r0, [sp, #0x010]
	cmp r0, r3
	bne _0813F1B6
	ldr r1, [r7, #0x10]
	ldr r0, _0813F22C @ =0x000274FF
	cmp r1, r0
	ble _0813F1AA
	b _0813F6AA
_0813F1AA:
	ldr r1, [r7, #0x0C]
	movs r0, #0xA0
	lsls r0, r0, #0x04
	cmp r1, r0
	bgt _0813F1B6
	b _0813F6AA
_0813F1B6:
	ldrb r1, [r6, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0813F1C2
	b _0813F6A0
_0813F1C2:
	movs r0, #0x92
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r1, [r0, #0x00]
	cmp r1, #0x83
	bne _0813F238
	ldr r2, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	ldr r0, [sp, #0x010]
	str r0, [sp, #0x000]
	mov r0, r9
	adds r1, r7, #0x0
	bl sub_813F9DC
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813F1E6
	b _0813F6AA
_0813F1E6:
	ldr r1, [r7, #0x10]
	ldr r0, _0813F230 @ =0x00026BFF
	cmp r1, r0
	ble _0813F1FE
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x06
	cmp r0, r1
	bgt _0813F1FE
	b _0813F6A0
_0813F1FE:
	ldr r1, [r7, #0x0C]
	ldr r0, _0813F234 @ =0x00019BFF
	cmp r1, r0
	bgt _0813F208
	b _0813F348
_0813F208:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x06
	cmp r0, r1
	bgt _0813F218
	b _0813F6A0
_0813F218:
	b _0813F348
	.byte 0x00, 0x00
_0813F21C: .4byte 0x03001038
_0813F220: .4byte 0x0819832C
_0813F224: .4byte 0x08198220
_0813F228: .4byte 0x7FFFFFFF
_0813F22C: .4byte 0x000274FF
_0813F230: .4byte 0x00026BFF
_0813F234: .4byte 0x00019BFF
_0813F238:
	ldr r0, _0813F2A0 @ =0x00000157
	cmp r1, r0
	beq _0813F244
	adds r0, #0x16
	cmp r1, r0
	bne _0813F2AC
_0813F244:
	ldr r0, _0813F2A4 @ =0x7FFFFFFF
	ldr r4, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	cmp r4, r0
	bne _0813F25E
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	bne _0813F25E
	ldr r0, [sp, #0x010]
	cmp r0, r3
	bne _0813F25E
	b _0813F6AA
_0813F25E:
	movs r0, #0xE0
	lsls r0, r0, #0x08
	cmp r4, r0
	bne _0813F27E
	cmp r3, r4
	bne _0813F27E
	ldr r1, [sp, #0x010]
	ldr r0, _0813F2A4 @ =0x7FFFFFFF
	cmp r1, r0
	bne _0813F27E
	ldr r1, [r7, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r1, r0
	bgt _0813F27E
	b _0813F6A0
_0813F27E:
	movs r0, #0x92
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _0813F2A8 @ =0x0000016D
	cmp r1, r0
	bne _0813F348
	cmp r4, #0x00
	blt _0813F350
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	bne _0813F348
	ldr r0, [sp, #0x010]
	cmp r0, r3
	bne _0813F348
	b _0813F5DC
_0813F2A0: .4byte 0x00000157
_0813F2A4: .4byte 0x7FFFFFFF
_0813F2A8: .4byte 0x0000016D
_0813F2AC:
	ldr r0, _0813F304 @ =0x00000165
	cmp r1, r0
	beq _0813F2BE
	adds r0, #0x0B
	cmp r1, r0
	beq _0813F2BE
	adds r0, #0x01
	cmp r1, r0
	bne _0813F312
_0813F2BE:
	ldr r0, _0813F308 @ =0x7FFFFFFF
	ldr r4, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	cmp r4, r0
	bne _0813F2D8
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	bne _0813F2D8
	ldr r0, [sp, #0x010]
	cmp r0, r3
	bne _0813F2D8
	b _0813F6AA
_0813F2D8:
	movs r0, #0xE0
	lsls r0, r0, #0x08
	cmp r4, r0
	bne _0813F30C
	cmp r3, r4
	bne _0813F30C
	ldr r1, [sp, #0x010]
	ldr r0, _0813F308 @ =0x7FFFFFFF
	cmp r1, r0
	bne _0813F2EE
	b _0813F6A0
_0813F2EE:
	cmp r3, r4
	bne _0813F30C
	cmp r1, r0
	bne _0813F30C
	ldr r1, [r7, #0x18]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	cmp r1, r0
	bgt _0813F302
	b _0813F6A0
_0813F302:
	b _0813F348
_0813F304: .4byte 0x00000165
_0813F308: .4byte 0x7FFFFFFF
_0813F30C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	b _0813F336
_0813F312:
	ldr r0, _0813F41C @ =0x0000016B
	cmp r1, r0
	bne _0813F348
	ldr r0, _0813F420 @ =0x7FFFFFFF
	ldr r4, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	cmp r4, r0
	bne _0813F332
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	bne _0813F332
	ldr r0, [sp, #0x010]
	cmp r0, r3
	bne _0813F332
	b _0813F6AA
_0813F332:
	movs r0, #0xE0
	lsls r0, r0, #0x08
_0813F336:
	cmp r4, r0
	bne _0813F348
	cmp r3, r4
	bne _0813F348
	ldr r1, [sp, #0x010]
	ldr r0, _0813F420 @ =0x7FFFFFFF
	cmp r1, r0
	bne _0813F348
	b _0813F6A0
_0813F348:
	ldr r4, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	cmp r4, #0x00
	beq _0813F358
_0813F350:
	cmp r3, #0x00
	bne _0813F35C
	cmp r4, #0x00
	bne _0813F366
_0813F358:
	cmp r3, #0x00
	bne _0813F366
_0813F35C:
	ldr r1, [sp, #0x010]
	ldr r0, _0813F420 @ =0x7FFFFFFF
	cmp r1, r0
	bne _0813F366
	b _0813F6AA
_0813F366:
	ldr r0, _0813F424 @ =0x03001038
	mov r8, r0
	ldr r4, _0813F428 @ =0x0819832C
	ldr r0, _0813F42C @ =0x08198220
	subs r4, r4, r0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x0C]
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r5, r0, #0x0
	subs r5, #0x01
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x10]
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r2, r0, #0x0
	adds r2, #0x01
	add r1, sp, #0x00C
	str r1, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	add r3, sp, #0x008
	bl sub_80457E8
	ldr r1, [sp, #0x008]
	movs r0, #0xE0
	lsls r0, r0, #0x08
	cmp r1, r0
	bne _0813F3C4
	ldr r0, [sp, #0x00C]
	cmp r0, r1
	bne _0813F3C4
	ldr r1, [sp, #0x010]
	ldr r0, _0813F420 @ =0x7FFFFFFF
	cmp r1, r0
	bne _0813F3C4
	b _0813F6AA
_0813F3C4:
	ldr r1, _0813F424 @ =0x03001038
	mov r8, r1
	ldr r4, _0813F428 @ =0x0819832C
	ldr r0, _0813F42C @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x0C]
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r5, r0, #0x0
	adds r5, #0x01
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x10]
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r2, r0, #0x0
	adds r2, #0x01
	add r1, sp, #0x00C
	str r1, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	add r3, sp, #0x008
	bl sub_80457E8
	ldr r1, [sp, #0x008]
	movs r0, #0xE0
	lsls r0, r0, #0x08
	cmp r1, r0
	beq _0813F412
	b _0813F6A0
_0813F412:
	ldr r0, [sp, #0x00C]
	cmp r0, r1
	beq _0813F41A
	b _0813F6A0
_0813F41A:
	b _0813F698
_0813F41C: .4byte 0x0000016B
_0813F420: .4byte 0x7FFFFFFF
_0813F424: .4byte 0x03001038
_0813F428: .4byte 0x0819832C
_0813F42C: .4byte 0x08198220
_0813F430:
	.byte 0xCE, 0x21, 0x89, 0x00, 0x78, 0x18, 0x01, 0x68, 0x68, 0x31, 0x00, 0x22, 0x88, 0x5E, 0x38, 0x18
	.byte 0x49, 0x68, 0x9B, 0xF0, 0x13, 0xFB, 0x08, 0x21, 0x01, 0x40, 0x00, 0x29, 0x00, 0xD1, 0x2C, 0xE1
	.byte 0x42, 0x48, 0x80, 0x46, 0x42, 0x4C, 0x43, 0x48, 0x24, 0x1A, 0x41, 0x46, 0x0A, 0x68, 0x12, 0x19
	.byte 0xF8, 0x68, 0x80, 0x26, 0x76, 0x01, 0x31, 0x1C, 0x9B, 0xF0, 0x02, 0xFB, 0x05, 0x1C, 0x01, 0x3D
	.byte 0x40, 0x46, 0x02, 0x68, 0x12, 0x19, 0x38, 0x69, 0x31, 0x1C, 0x9B, 0xF0, 0xF9, 0xFA, 0x02, 0x1C
	.byte 0x03, 0xA8, 0x00, 0x90, 0x04, 0xA8, 0x01, 0x90, 0x38, 0x1C, 0x29, 0x1C, 0x02, 0xAB, 0x06, 0xF7
	.byte 0xAB, 0xF9, 0x06, 0x1C, 0x92, 0x20, 0x40, 0x00, 0x48, 0x44, 0x00, 0x88, 0x81, 0x28, 0x1C, 0xD1
	.byte 0x31, 0x48, 0x02, 0x9C, 0x84, 0x42, 0x12, 0xD1, 0x01, 0x20, 0x40, 0x42, 0x03, 0x9B, 0x83, 0x42
	.byte 0x0D, 0xD1, 0x04, 0x98, 0x98, 0x42, 0x0A, 0xD1, 0x39, 0x69, 0x2C, 0x48, 0x81, 0x42, 0x00, 0xDD
	.byte 0xF3, 0xE0, 0xF9, 0x68, 0xA0, 0x20, 0x00, 0x01, 0x81, 0x42, 0x00, 0xDC, 0xED, 0xE0, 0x31, 0x78
	.byte 0x80, 0x20, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD0, 0xE2, 0xE0, 0x92, 0x20, 0x40, 0x00, 0x48, 0x44
	.byte 0x01, 0x88, 0x83, 0x29, 0x48, 0xD1, 0x02, 0x9A, 0x03, 0x9B, 0x04, 0x98, 0x00, 0x90, 0x48, 0x46
	.byte 0x39, 0x1C, 0x00, 0xF0, 0x73, 0xFA, 0x00, 0x06, 0x03, 0x9B, 0x00, 0x28, 0x00, 0xD1, 0xD4, 0xE0
	.byte 0xE0, 0x20, 0x00, 0x02, 0x02, 0x9C, 0x84, 0x42, 0x00, 0xD0, 0xBD, 0xE0, 0xA3, 0x42, 0x00, 0xD0
	.byte 0xBA, 0xE0, 0x04, 0x99, 0x14, 0x48, 0x81, 0x42, 0x00, 0xD0, 0xB5, 0xE0, 0xFA, 0x68, 0xA0, 0x20
	.byte 0xC0, 0x01, 0x82, 0x42, 0x00, 0xDC, 0xBB, 0xE0, 0x39, 0x69, 0x11, 0x48, 0x81, 0x42, 0x07, 0xDD
	.byte 0x78, 0x69, 0xB9, 0x69, 0x40, 0x18, 0x80, 0x21, 0x89, 0x01, 0x88, 0x42, 0x00, 0xDC, 0xAF, 0xE0
	.byte 0x0C, 0x48, 0x82, 0x42, 0x00, 0xDC, 0x9F, 0xE0, 0x78, 0x69, 0xB9, 0x69, 0x40, 0x18, 0xC0, 0x21
	.byte 0x89, 0x01, 0x88, 0x42, 0x00, 0xDC, 0xA3, 0xE0, 0x96, 0xE0, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03
	.byte 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0xFF, 0xFF, 0xFF, 0x7F, 0xFF, 0x74, 0x02, 0x00
	.byte 0xFF, 0x6B, 0x02, 0x00, 0xFF, 0x9B, 0x01, 0x00, 0x1B, 0x48, 0x81, 0x42, 0x02, 0xD0, 0x16, 0x30
	.byte 0x81, 0x42, 0x37, 0xD1, 0x19, 0x48, 0x02, 0x9C, 0x03, 0x9B, 0x84, 0x42, 0x07, 0xD1, 0x01, 0x20
	.byte 0x40, 0x42, 0x83, 0x42, 0x03, 0xD1, 0x04, 0x98, 0x98, 0x42, 0x00, 0xD1, 0x85, 0xE0, 0xE0, 0x20
	.byte 0x00, 0x02, 0x84, 0x42, 0x0A, 0xD1, 0xA3, 0x42, 0x08, 0xD1, 0x04, 0x99, 0x0F, 0x48, 0x81, 0x42
	.byte 0x04, 0xD1, 0xB9, 0x69, 0x80, 0x20, 0x00, 0x01, 0x81, 0x42, 0x71, 0xDD, 0x92, 0x20, 0x40, 0x00
	.byte 0x48, 0x44, 0x01, 0x88, 0x0A, 0x48, 0x81, 0x42, 0x5E, 0xD1, 0x00, 0x2C, 0x5E, 0xDB, 0x01, 0x20
	.byte 0x40, 0x42, 0x83, 0x42, 0x58, 0xD1, 0x04, 0x98, 0x98, 0x42, 0x55, 0xD1
_0813F5DC:
	ldr r1, [r7, #0x18]
	movs r0, #0xC0
	lsls r0, r0, #0x04
	cmp r1, r0
	ble _0813F6A0
	b _0813F6AA
	.byte 0x57, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x7F, 0x6D, 0x01, 0x00, 0x00, 0x14, 0x48, 0x81, 0x42
	.byte 0x05, 0xD0, 0x0B, 0x30, 0x81, 0x42, 0x02, 0xD0, 0x01, 0x30, 0x81, 0x42, 0x27, 0xD1, 0x11, 0x48
	.byte 0x02, 0x9C, 0x03, 0x9B, 0x84, 0x42, 0x06, 0xD1, 0x01, 0x20, 0x40, 0x42, 0x83, 0x42, 0x02, 0xD1
	.byte 0x04, 0x98, 0x98, 0x42, 0x45, 0xD0, 0xE0, 0x20, 0x00, 0x02, 0x84, 0x42, 0x14, 0xD1, 0xA3, 0x42
	.byte 0x12, 0xD1, 0x04, 0x99, 0x07, 0x48, 0x81, 0x42, 0x36, 0xD0, 0xA3, 0x42, 0x0C, 0xD1, 0x81, 0x42
	.byte 0x0A, 0xD1, 0xB9, 0x69, 0xC0, 0x20, 0x80, 0x01, 0x81, 0x42, 0x2D, 0xDD, 0x20, 0xE0, 0x00, 0x00
	.byte 0x65, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x7F, 0x80, 0x20, 0xC0, 0x01, 0x10, 0xE0, 0x19, 0x48
	.byte 0x02, 0x9C, 0x03, 0x9B, 0x81, 0x42, 0x13, 0xD1, 0x17, 0x48, 0x84, 0x42, 0x06, 0xD1, 0x01, 0x20
	.byte 0x40, 0x42, 0x83, 0x42, 0x02, 0xD1, 0x04, 0x98, 0x98, 0x42, 0x1A, 0xD0, 0xE0, 0x20, 0x00, 0x02
	.byte 0x84, 0x42, 0x05, 0xD1, 0xA3, 0x42, 0x03, 0xD1, 0x04, 0x99, 0x0F, 0x48, 0x81, 0x42, 0x0B, 0xD0
	.byte 0x00, 0x2C, 0x03, 0xD0, 0x00, 0x2B, 0x03, 0xD1, 0x00, 0x2C, 0x05, 0xD1, 0x00, 0x2B, 0x03, 0xD1
_0813F698:
	ldr r1, [sp, #0x010]
	ldr r0, _0813F6C0 @ =0x7FFFFFFF
	cmp r1, r0
	beq _0813F6AA
_0813F6A0:
	ldr r0, _0813F6C4 @ =0x0813F6CD
	mov r1, r10
	str r0, [r1, #0x00]
	ldr r0, _0813F6C8 @ =0x0813F791
	str r0, [r1, #0x04]
_0813F6AA:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x6B, 0x01, 0x00, 0x00
_0813F6C0: .4byte 0x7FFFFFFF
_0813F6C4: .4byte sub_813F6CC
_0813F6C8: .4byte sub_813F790
