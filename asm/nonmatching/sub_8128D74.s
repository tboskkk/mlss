	.syntax unified
	.text

	thumb_func_start sub_8128D74
sub_8128D74:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	adds r5, r0, #0x0
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x000]
	adds r4, r5, #0x0
	adds r4, #0xAD
	ldrb r1, [r4, #0x00]
	movs r7, #0x80
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08128D98
	b _08129274
_08128D98:
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x02]
	movs r2, #0x01
	mov r8, r2
	movs r0, #0x01
	mov r9, r0
	mov r6, r9
	ands r6, r1
	cmp r6, #0x00
	bne _08128DB2
	b _081291D4
_08128DB2:
	adds r0, r5, #0x0
	adds r0, #0xAE
	ldrb r6, [r0, #0x00]
	mov r10, r0
	cmp r6, #0x00
	beq _08128DF4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	ldrb r1, [r4, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r3, #0x00
	strb r0, [r4, #0x00]
	ldr r1, [r5, #0x28]
	adds r0, r5, #0x0
	adds r0, #0xAA
	ldrb r4, [r4, #0x00]
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	movs r2, #0x00
	strh r0, [r1, #0x02]
	adds r0, r5, #0x0
	adds r0, #0x67
	mov r1, r8
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x54
	strh r3, [r0, #0x00]
	b _0812935A
_08128DF4:
	movs r0, #0x03
	bl sub_81980C8
	mov r8, r0
	ldr r0, [r5, #0x5C]
	ldrb r1, [r0, #0x06]
	ldr r4, _08128F04 @ =0x03000D40
	ldr r0, [r4, #0x00]
	lsls r2, r0, #0x1C
	lsrs r0, r2, #0x1E
	asrs r1, r0
	mov r0, r9
	ands r1, r0
	cmp r1, #0x00
	beq _08128E24
	lsrs r1, r2, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	adds r0, #0x02
	adds r2, r5, #0x0
	adds r2, #0xBA
	strh r0, [r2, #0x00]
_08128E24:
	ldr r0, [sp, #0x000]
	bl sub_8025F28
	movs r0, #0x00
	bl sub_8123BA8
	ldr r2, _08128F08 @ =0x0300034C
	ldr r1, _08128F0C @ =0x0000088A
	adds r2, r2, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r3, [r5, #0x5C]
	ldr r2, [r4, #0x00]
	lsls r2, r2, #0x1C
	lsrs r1, r2, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r3, r0
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x02
	lsrs r2, r2, #0x1E
	lsls r0, r2, #0x03
	subs r0, r0, r2
	lsls r0, r0, #0x05
	subs r0, r0, r2
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r3, r3, r1
	ldrh r1, [r3, #0x18]
	ldr r0, _08128F10 @ =0x00000113
	cmp r1, r0
	bne _08128E8A
	adds r2, r5, #0x0
	adds r2, #0xAF
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
_08128E8A:
	ldr r3, [r5, #0x5C]
	ldr r2, [r4, #0x00]
	lsls r2, r2, #0x1C
	lsrs r1, r2, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r3, r0
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x02
	lsrs r2, r2, #0x1E
	lsls r0, r2, #0x03
	subs r0, r0, r2
	lsls r0, r0, #0x05
	subs r0, r0, r2
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r3, r3, r1
	ldrh r0, [r3, #0x18]
	bl sub_8123308
	adds r3, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0xB6
	strb r6, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB5
	strb r6, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x67
	str r2, [sp, #0x00C]
	adds r2, #0x01
	str r2, [sp, #0x010]
	adds r2, #0x54
	str r2, [sp, #0x020]
	adds r4, r1, #0x0
	adds r7, r0, #0x0
	movs r0, #0xB0
	adds r0, r0, r5
	mov r9, r0
	subs r1, #0x12
	str r1, [sp, #0x014]
	subs r2, #0x59
	str r2, [sp, #0x008]
	adds r0, r5, #0x0
	adds r0, #0x62
	str r0, [sp, #0x004]
	adds r1, #0x0F
	str r1, [sp, #0x018]
	adds r2, #0x55
	str r2, [sp, #0x01C]
	cmp r3, #0x00
	beq _08128FE0
	b _08128F5C
	.byte 0x00, 0x00
_08128F04: .4byte 0x03000D40
_08128F08: .4byte 0x0300034C
_08128F0C: .4byte 0x0000088A
_08128F10: .4byte 0x00000113
_08128F14:
	cmp r1, #0x01
	ble _08128F1C
	movs r1, #0x00
	b _08128F2E
_08128F1C:
	lsls r0, r1, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08128F5C
	ldrb r2, [r3, #0x00]
	adds r3, #0x01
	cmp r1, #0x00
	bne _08128F38
_08128F2E:
	cmp r2, #0x20
	bne _08128F38
	ldrb r0, [r4, #0x00]
	adds r0, #0x02
	b _08128F5A
_08128F38:
	ldrb r0, [r4, #0x00]
	adds r6, r0, #0x1
	lsls r0, r1, #0x02
	add r0, r8
	adds r1, r2, #0x0
	asrs r1, r1, #0x03
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	movs r0, #0x07
	ands r2, r0
	lsls r2, r2, #0x02
	ldr r0, [r1, #0x04]
	lsrs r0, r2
	movs r1, #0x0F
	ands r0, r1
	adds r0, r6, r0
_08128F5A:
	strb r0, [r4, #0x00]
_08128F5C:
	ldrb r0, [r3, #0x00]
	cmp r0, #0x00
	beq _08128F72
_08128F62:
	ldrb r2, [r3, #0x00]
	adds r3, #0x01
	cmp r2, #0xFF
	beq _08128F62
	movs r0, #0xFF
	subs r1, r0, r2
	cmp r1, #0xFF
	bne _08128F14
_08128F72:
	ldrb r0, [r4, #0x00]
	strb r0, [r7, #0x00]
	adds r6, r7, #0x0
	b _08128FC4
_08128F7A:
	cmp r1, #0x01
	ble _08128F82
	movs r1, #0x00
	b _08128F94
_08128F82:
	lsls r0, r1, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08128FC4
	ldrb r2, [r3, #0x00]
	adds r3, #0x01
	cmp r1, #0x00
	bne _08128FA0
_08128F94:
	cmp r2, #0x20
	bne _08128FA0
	ldrb r0, [r6, #0x00]
	adds r0, #0x02
	strb r0, [r6, #0x00]
	b _08128FC4
_08128FA0:
	ldrb r0, [r7, #0x00]
	adds r4, r0, #0x1
	lsls r0, r1, #0x02
	add r0, r8
	adds r1, r2, #0x0
	asrs r1, r1, #0x03
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	movs r0, #0x07
	ands r2, r0
	lsls r2, r2, #0x02
	ldr r0, [r1, #0x04]
	lsrs r0, r2
	movs r1, #0x0F
	ands r0, r1
	adds r0, r4, r0
	strb r0, [r7, #0x00]
_08128FC4:
	ldrb r0, [r3, #0x00]
	cmp r0, #0x00
	beq _08128FDA
_08128FCA:
	ldrb r2, [r3, #0x00]
	adds r3, #0x01
	cmp r2, #0xFF
	beq _08128FCA
	movs r0, #0xFF
	subs r1, r0, r2
	cmp r1, #0xFF
	bne _08128F7A
_08128FDA:
	ldrb r0, [r7, #0x00]
	adds r0, #0x02
	strb r0, [r7, #0x00]
_08128FE0:
	mov r1, r9
	ldrb r0, [r1, #0x00]
	movs r6, #0x01
	ands r6, r0
	cmp r6, #0x00
	bne _0812908A
	adds r0, r5, #0x0
	adds r0, #0x82
	ldrh r0, [r0, #0x00]
	bl sub_8123308
	adds r4, r0, #0x0
	ldr r3, [r5, #0x5C]
	ldr r0, _08129044 @ =0x03000D40
	ldr r2, [r0, #0x00]
	lsls r2, r2, #0x1C
	lsrs r1, r2, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r3, r0
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x02
	lsrs r2, r2, #0x1E
	lsls r0, r2, #0x03
	subs r0, r0, r2
	lsls r0, r0, #0x05
	subs r0, r0, r2
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r3, r3, r1
	ldrh r0, [r3, #0x18]
	bl sub_8123308
	adds r3, r0, #0x0
	cmp r4, #0x00
	beq _0812908A
	cmp r3, #0x00
	beq _0812908A
	cmp r4, r3
	bne _0812907E
	mov r2, r9
	strb r6, [r2, #0x00]
	b _0812908A
_08129044: .4byte 0x03000D40
_08129048:
	mov r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	orrs r0, r1
	mov r1, r9
	strb r0, [r1, #0x00]
	b _0812908A
_08129056:
	mov r2, r9
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _0812908A
_08129062:
	ldrb r1, [r3, #0x00]
	adds r3, #0x01
	cmp r1, #0xFF
	beq _08129062
_0812906A:
	ldrb r0, [r4, #0x00]
	adds r4, #0x01
	cmp r0, #0xFF
	beq _0812906A
	cmp r1, #0x00
	bne _0812907A
	cmp r0, #0x00
	beq _08129048
_0812907A:
	cmp r1, r0
	bne _08129056
_0812907E:
	ldrb r0, [r3, #0x00]
	cmp r0, #0x00
	bne _08129062
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08129062
_0812908A:
	movs r0, #0x00
	mov r8, r0
	movs r0, #0x80
	mov r1, r10
	strb r0, [r1, #0x00]
	movs r6, #0x01
	movs r4, #0x01
	ldr r2, [sp, #0x014]
	strh r4, [r2, #0x00]
	ldr r0, [sp, #0x008]
	movs r1, #0x1E
	bl sub_81252BC
	ldr r1, [sp, #0x004]
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x28]
	bl sprite_hide_8021F20
	movs r0, #0x02
	ldr r2, [sp, #0x018]
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x00C]
	strb r6, [r0, #0x00]
	ldr r1, [sp, #0x010]
	strb r6, [r1, #0x00]
	mov r0, r8
	ldr r2, [sp, #0x020]
	strh r0, [r2, #0x00]
	mov r2, r9
	ldrb r1, [r2, #0x00]
	ands r4, r1
	cmp r4, #0x00
	beq _0812916C
	adds r2, r5, #0x0
	adds r2, #0x82
	ldrh r1, [r2, #0x00]
	ldr r0, _08129100 @ =0x0000FFFF
	cmp r1, r0
	bne _08129114
	mov r0, r8
	strh r0, [r2, #0x00]
	ldr r1, _08129104 @ =0x02000040
	adds r4, r5, #0x0
	adds r4, #0xB4
	ldrb r0, [r4, #0x00]
	adds r0, #0x20
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r3, r2, #0x0
	orrs r0, r3
	strh r0, [r1, #0x00]
	ldr r0, _08129108 @ =0x02000044
	ldr r1, _0812910C @ =0x00008090
	adds r2, r1, #0x0
	strh r2, [r0, #0x00]
	ldr r1, _08129110 @ =0x04000040
	ldrb r0, [r4, #0x00]
	b _08129130
	.byte 0x00, 0x00
_08129100: .4byte 0x0000FFFF
_08129104: .4byte 0x02000040
_08129108: .4byte 0x02000044
_0812910C: .4byte 0x00008090
_08129110: .4byte 0x04000040
_08129114:
	ldr r1, _08129154 @ =0x02000040
	ldrb r0, [r7, #0x00]
	adds r0, #0x20
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r3, r2, #0x0
	orrs r0, r3
	strh r0, [r1, #0x00]
	ldr r0, _08129158 @ =0x02000044
	ldr r1, _0812915C @ =0x00008090
	adds r2, r1, #0x0
	strh r2, [r0, #0x00]
	ldr r1, _08129160 @ =0x04000040
	ldrb r0, [r7, #0x00]
_08129130:
	adds r0, #0x20
	orrs r0, r3
	strh r0, [r1, #0x00]
	ldr r0, _08129164 @ =0x04000044
	strh r2, [r0, #0x00]
	ldr r1, _08129168 @ =0x02000048
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x1F
	strh r0, [r1, #0x00]
	movs r1, #0x01
	ldr r2, [sp, #0x01C]
	strb r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB2
	strb r1, [r0, #0x00]
	b _081291C6
_08129154: .4byte 0x02000040
_08129158: .4byte 0x02000044
_0812915C: .4byte 0x00008090
_08129160: .4byte 0x04000040
_08129164: .4byte 0x04000044
_08129168: .4byte 0x02000048
_0812916C:
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	beq _081291B4
	ldr r2, _081291A8 @ =0x02000040
	adds r3, r5, #0x0
	adds r3, #0xB4
	ldrb r1, [r3, #0x00]
	adds r1, #0x20
	lsls r0, r1, #0x08
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _081291AC @ =0x02000044
	ldr r2, _081291B0 @ =0x00008090
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x1F
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x40]
	ldrb r0, [r3, #0x00]
	adds r0, #0x20
	strh r0, [r1, #0x00]
	movs r0, #0x05
	ldr r1, [sp, #0x01C]
	strb r0, [r1, #0x00]
	b _081291C6
_081291A8: .4byte 0x02000040
_081291AC: .4byte 0x02000044
_081291B0: .4byte 0x00008090
_081291B4:
	ldr r0, [r5, #0x3C]
	ldrb r1, [r7, #0x00]
	adds r1, #0x28
	strh r1, [r0, #0x00]
	ldr r2, [sp, #0x01C]
	strb r6, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB2
	strb r6, [r0, #0x00]
_081291C6:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	movs r0, #0x02
	b _0812935C
_081291D4:
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08129210
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	ldrb r1, [r4, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r4, #0x00]
	ldr r1, [r5, #0x28]
	adds r0, r5, #0x0
	adds r0, #0xAA
	ldrb r4, [r4, #0x00]
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	movs r2, #0x00
	strh r0, [r1, #0x02]
	adds r0, r5, #0x0
	adds r0, #0x67
	mov r1, r8
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x54
	strh r6, [r0, #0x00]
	b _0812935A
_08129210:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x00
	beq _08129244
	adds r0, r5, #0x0
	adds r0, #0xAE
	ldrb r1, [r0, #0x00]
	mov r10, r0
	cmp r1, #0x00
	bne _0812922E
	mov r2, r8
	strb r2, [r0, #0x00]
	b _08129234
_0812922E:
	subs r0, r1, #0x1
	mov r1, r10
	strb r0, [r1, #0x00]
_08129234:
	ldr r2, [r5, #0x28]
	mov r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x0D
	muls r0, r1
	adds r0, #0x56
	strh r0, [r2, #0x02]
	b _0812931A
_08129244:
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0812924E
	b _0812935A
_0812924E:
	adds r0, r5, #0x0
	adds r0, #0xAE
	ldrb r1, [r0, #0x00]
	mov r10, r0
	cmp r1, #0x01
	bne _0812925E
	strb r2, [r0, #0x00]
	b _08129264
_0812925E:
	adds r0, r1, #0x1
	mov r1, r10
	strb r0, [r1, #0x00]
_08129264:
	ldr r2, [r5, #0x28]
	mov r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x0D
	muls r0, r1
	adds r0, #0x56
	strh r0, [r2, #0x02]
	b _0812931A
_08129274:
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	ldrh r2, [r0, #0x02]
	movs r0, #0x02
	mov r8, r0
	movs r0, #0x02
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x00
	beq _0812929E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	mov r1, r8
	strb r1, [r4, #0x00]
	movs r0, #0x01
	b _0812935C
_0812929E:
	movs r6, #0x01
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	beq _081292EC
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bne _081292BE
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	movs r0, #0x01
	b _0812935C
_081292BE:
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAE
	strb r6, [r0, #0x00]
	ldr r1, [r5, #0x28]
	movs r0, #0x63
	movs r2, #0x00
	strh r0, [r1, #0x02]
	adds r0, r5, #0x0
	adds r0, #0x67
	strb r6, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x54
	strh r3, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	b _0812935A
_081292EC:
	movs r0, #0x40
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x00
	beq _08129326
	lsls r0, r1, #0x18
	cmp r0, #0x00
	bne _08129304
	mov r2, r8
	strb r2, [r4, #0x00]
	b _08129308
_08129304:
	subs r0, r1, #0x1
	strb r0, [r4, #0x00]
_08129308:
	ldr r1, [r5, #0x28]
	adds r2, r5, #0x0
	adds r2, #0xAD
	adds r0, r5, #0x0
	adds r0, #0xAA
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x02]
_0812931A:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	b _0812935A
_08129326:
	adds r0, r7, #0x0
	ands r0, r2
	cmp r0, #0x00
	beq _0812935A
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bne _0812933A
	strb r3, [r4, #0x00]
	b _0812933E
_0812933A:
	adds r0, r1, #0x1
	strb r0, [r4, #0x00]
_0812933E:
	ldr r1, [r5, #0x28]
	adds r2, r5, #0x0
	adds r2, #0xAD
	adds r0, r5, #0x0
	adds r0, #0xAA
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x02]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_0812935A:
	movs r0, #0x00
_0812935C:
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
