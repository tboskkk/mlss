	.syntax unified
	.text

	thumb_func_start sub_8119C38
sub_8119C38:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x044
	adds r7, r0, #0x0
	ldr r0, [r7, #0x14]
	str r0, [sp, #0x030]
	ldr r0, _08119CBC @ =0x08202F18
	ldr r1, [r0, #0x04]
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x028]
	str r1, [sp, #0x02C]
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrb r6, [r0, #0x00]
	cmp r6, #0x00
	bne _08119CC8
	ldr r2, _08119CC0 @ =0x0000019B
	adds r1, r7, r2
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	movs r3, #0xFF
	mov r8, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x06
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08119C80
	b _08119E50
_08119C80:
	ldr r0, _08119CC4 @ =0x00000199
	adds r4, r7, r0
	ldrb r0, [r4, #0x00]
	movs r1, #0xCD
	lsls r1, r1, #0x01
	adds r5, r7, r1
	strb r0, [r5, #0x00]
	bl sub_8199F30
	movs r1, #0x06
	bl __umodsi3
	adds r1, r0, #0x0
	strb r1, [r4, #0x00]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	ldrb r5, [r5, #0x00]
	cmp r0, r5
	beq _08119CA8
	b _08119E50
_08119CA8:
	adds r0, r1, #0x1
	strb r0, [r4, #0x00]
	mov r2, r8
	ands r0, r2
	cmp r0, #0x05
	bhi _08119CB6
	b _08119E50
_08119CB6:
	strb r6, [r4, #0x00]
	b _08119E50
	.byte 0x00, 0x00
_08119CBC: .4byte dword_8202F18 @ =0x08202F18
_08119CC0: .4byte 0x0000019B
_08119CC4: .4byte 0x00000199
_08119CC8:
	cmp r6, #0x02
	beq _08119CCE
	b _08119E50
_08119CCE:
	ldr r3, _08119D58 @ =0x0000019B
	adds r1, r7, r3
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	movs r4, #0x00
	mov r10, r4
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3C
	bhi _08119CE8
	bl _0811AB70
_08119CE8:
	movs r0, #0xCA
	lsls r0, r0, #0x01
	adds r0, r0, r7
	mov r8, r0
	ldrb r1, [r0, #0x00]
	ldr r2, _08119D5C @ =0x00000191
	adds r4, r7, r2
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x034]
	subs r3, #0x10
	adds r3, r3, r7
	mov r9, r3
	add r1, r9
	ldrb r1, [r1, #0x00]
	movs r0, #0x7F
	ands r0, r1
	adds r5, r7, #0x0
	adds r5, #0x8C
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	movs r1, #0xCB
	lsls r1, r1, #0x01
	adds r6, r7, r1
	ldrb r1, [r6, #0x00]
	ldr r3, _08119D60 @ =0x00000199
	adds r2, r7, r3
	ldrb r2, [r2, #0x00]
	bl sub_8117270
	mov r0, r10
	strb r0, [r6, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	bl sub_8116B48
	mov r2, r8
	ldrb r1, [r2, #0x00]
	adds r1, r4, r1
	strb r0, [r1, #0x00]
	ldrb r0, [r2, #0x00]
	adds r4, r4, r0
	ldrb r1, [r4, #0x00]
	cmp r1, #0x00
	bne _08119D64
	mov r3, r9
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x30]
	bl sprite_hide_8021F20
	b _08119DCE
_08119D58: .4byte 0x0000019B
_08119D5C: .4byte 0x00000191
_08119D60: .4byte 0x00000199
_08119D64:
	ldr r4, [sp, #0x034]
	cmp r4, #0x07
	bne _08119D82
	cmp r1, #0x06
	bne _08119D82
	add r0, r9
	mov r1, r10
	strb r1, [r0, #0x00]
	movs r2, #0xC7
	lsls r2, r2, #0x01
	adds r0, r7, r2
	mov r3, r8
	ldrb r3, [r3, #0x00]
	adds r0, r0, r3
	b _08119DCC
_08119D82:
	movs r4, #0xCA
	lsls r4, r4, #0x01
	adds r3, r7, r4
	ldrb r1, [r3, #0x00]
	ldr r0, _08119E40 @ =0x0000018B
	adds r4, r7, r0
	adds r1, r4, r1
	ldrb r2, [r1, #0x00]
	movs r0, #0x7F
	ands r0, r2
	strb r0, [r1, #0x00]
	ldrb r1, [r3, #0x00]
	ldr r2, _08119E44 @ =0x00000191
	adds r5, r7, r2
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r4, r1
	ldrb r2, [r1, #0x00]
	cmp r0, r2
	bge _08119DCE
	strb r0, [r1, #0x00]
	ldrb r2, [r3, #0x00]
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	cmp r0, #0x05
	bgt _08119DCE
	adds r1, r4, r2
	movs r3, #0xC7
	lsls r3, r3, #0x01
	adds r0, r7, r3
	adds r0, r0, r2
	ldrb r1, [r1, #0x00]
	ldrb r4, [r0, #0x00]
	cmp r1, r4
	bcs _08119DCE
_08119DCC:
	strb r1, [r0, #0x00]
_08119DCE:
	ldr r0, [r7, #0x30]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	movs r0, #0xCA
	lsls r0, r0, #0x01
	adds r5, r7, r0
	ldr r1, _08119E44 @ =0x00000191
	adds r0, r7, r1
	ldrb r2, [r5, #0x00]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08119DF6
	ldr r0, [r7, #0x30]
	bl sprite_show_8020CBC
_08119DF6:
	ldr r1, [r7, #0x30]
	movs r4, #0x00
	movs r0, #0x4E
	strh r0, [r1, #0x00]
	ldr r2, [r7, #0x30]
	movs r3, #0xC7
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrb r5, [r5, #0x00]
	adds r0, r0, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x0C
	strh r0, [r2, #0x02]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x67
	bl play_sfx_80195B4
	movs r1, #0xA9
	lsls r1, r1, #0x01
	adds r0, r7, r1
	movs r1, #0x01
	strb r1, [r0, #0x00]
	ldr r2, _08119E48 @ =0x00000153
	adds r0, r7, r2
	strb r1, [r0, #0x00]
	movs r3, #0xCC
	lsls r3, r3, #0x01
	adds r0, r7, r3
	strb r1, [r0, #0x00]
	ldr r1, _08119E4C @ =0x0000019B
	adds r0, r7, r1
	strb r4, [r0, #0x00]
	bl _0811AB70
_08119E40:
	lsls r3, r1, #0x06
	lsls r0, r0, #0x00
_08119E44:
	lsls r1, r2, #0x06
	lsls r0, r0, #0x00
_08119E48:
	lsls r3, r2, #0x05
	lsls r0, r0, #0x00
_08119E4C:
	lsls r3, r3, #0x06
	lsls r0, r0, #0x00
_08119E50:
	ldr r2, _08119EE0 @ =0x00000197
	adds r2, r7, r2
	str r2, [sp, #0x038]
	ldrb r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08119EEC
	movs r3, #0xA9
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrb r0, [r0, #0x00]
	mov r10, r0
	cmp r0, #0x00
	bne _08119EEC
	ldr r0, [r7, #0x40]
	ldr r4, _08119EE4 @ =0x083BCA64
	mov r8, r4
	movs r1, #0xCA
	lsls r1, r1, #0x01
	adds r1, r1, r7
	mov r9, r1
	ldrb r1, [r1, #0x00]
	ldr r2, _08119EE8 @ =0x0000018B
	adds r6, r7, r2
	adds r1, r6, r1
	ldrb r1, [r1, #0x00]
	adds r5, r7, #0x0
	adds r5, #0xA6
	adds r1, r5, r1
	ldrb r2, [r1, #0x00]
	lsls r1, r2, #0x01
	adds r1, r1, r2
	lsls r1, r1, #0x02
	add r1, r8
	ldrh r2, [r1, #0x04]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r1, #0x07
	movs r3, #0x01
	bl sub_80210A8
	ldr r0, [r7, #0x40]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	adds r6, r6, r1
	ldrb r1, [r6, #0x00]
	adds r5, r5, r1
	ldrb r2, [r5, #0x00]
	lsls r1, r2, #0x01
	adds r1, r1, r2
	lsls r1, r1, #0x02
	movs r2, #0x08
	add r8, r2
	add r1, r8
	ldr r1, [r1, #0x00]
	mov r3, r10
	str r3, [sp, #0x000]
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x40]
	bl sprite_show_8020CBC
	mov r0, r10
	ldr r4, [sp, #0x038]
	strb r0, [r4, #0x00]
	bl _0811AB70
_08119EE0:
	lsls r7, r2, #0x06
	lsls r0, r0, #0x00
_08119EE4:
	.inst 0xCA64
	lsrs r3, r7, #0x20
_08119EE8:
	lsls r3, r1, #0x06
	lsls r0, r0, #0x00
_08119EEC:
	movs r1, #0xCA
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrb r2, [r0, #0x00]
	ldr r3, _08119F44 @ =0x0000018B
	adds r0, r7, r3
	adds r3, r0, r2
	ldrb r4, [r3, #0x00]
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0x00
	bne _08119F06
	b _0811A354
_08119F06:
	movs r4, #0xC0
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x02]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08119F48
	movs r0, #0xCB
	lsls r0, r0, #0x01
	adds r4, r7, r0
	ldrb r0, [r4, #0x00]
	cmp r0, #0xFD
	beq _08119F48
	cmp r0, #0x01
	bne _08119F2C
	bl _0811AB70
_08119F2C:
	movs r0, #0x01
	strb r0, [r4, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	ldr r2, [r7, #0x30]
	ldrb r0, [r4, #0x00]
	bl _0811A8A6
	lsls r0, r0, #0x00
_08119F44:
	lsls r3, r1, #0x06
	lsls r0, r0, #0x00
_08119F48:
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x02]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08119F84
	movs r2, #0xCB
	lsls r2, r2, #0x01
	adds r4, r7, r2
	ldrb r0, [r4, #0x00]
	cmp r0, #0xFD
	beq _08119F84
	cmp r0, #0x00
	bne _08119F6E
	bl _0811AB70
_08119F6E:
	movs r0, #0x00
	strb r0, [r4, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	ldr r2, [r7, #0x30]
	ldrb r0, [r4, #0x00]
	bl _0811A8A6
_08119F84:
	movs r3, #0xC0
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x02]
	movs r6, #0x01
	movs r5, #0x01
	ands r5, r1
	cmp r5, #0x00
	bne _08119F9A
	b _0811A2DC
_08119F9A:
	ldr r0, _0811A068 @ =0x03000FF4
	ldr r3, [r0, #0x00]
	movs r0, #0xCB
	lsls r0, r0, #0x01
	adds r4, r7, r0
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r3, r0
	ldrh r0, [r0, #0x10]
	add r1, sp, #0x01C
	strh r0, [r1, #0x00]
	ldrb r2, [r4, #0x00]
	lsls r0, r2, #0x04
	subs r0, r0, r2
	lsls r0, r0, #0x02
	adds r0, r3, r0
	ldrh r2, [r0, #0x1E]
	mov r0, sp
	adds r0, #0x1E
	strh r2, [r0, #0x00]
	ldrb r2, [r4, #0x00]
	lsls r0, r2, #0x04
	subs r0, r0, r2
	lsls r0, r0, #0x02
	adds r0, r3, r0
	ldrh r2, [r0, #0x26]
	add r0, sp, #0x020
	strh r2, [r0, #0x00]
	ldrb r2, [r4, #0x00]
	lsls r0, r2, #0x04
	subs r0, r0, r2
	lsls r0, r0, #0x02
	adds r0, r3, r0
	ldrh r2, [r0, #0x16]
	mov r0, sp
	adds r0, #0x22
	strh r2, [r0, #0x00]
	ldrb r2, [r4, #0x00]
	lsls r0, r2, #0x04
	subs r0, r0, r2
	lsls r0, r0, #0x02
	adds r0, r3, r0
	ldrh r2, [r0, #0x1A]
	add r0, sp, #0x024
	strh r2, [r0, #0x00]
	ldrb r2, [r4, #0x00]
	lsls r0, r2, #0x04
	subs r0, r0, r2
	lsls r0, r0, #0x02
	adds r3, r3, r0
	ldrh r2, [r3, #0x22]
	mov r0, sp
	adds r0, #0x26
	strh r2, [r0, #0x00]
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	movs r1, #0x00
	mov r10, r1
	ldr r2, _0811A06C @ =0x083BBDD0
	movs r3, #0xCA
	lsls r3, r3, #0x01
	adds r6, r7, r3
	ldrb r0, [r6, #0x00]
	ldr r1, _0811A070 @ =0x0000018B
	adds r5, r7, r1
	adds r0, r5, r0
	ldrb r1, [r0, #0x00]
	movs r3, #0x7F
	mov r8, r3
	mov r0, r8
	ands r0, r1
	adds r1, r7, #0x0
	adds r1, #0x8C
	adds r0, r1, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	mov r9, r1
	cmp r0, #0x0A
	bne _0811A134
	ldr r1, [sp, #0x030]
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0811A084
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1F
	ldrb r4, [r4, #0x00]
	cmp r0, r4
	bne _0811A084
	ldr r3, _0811A074 @ =0x00000199
	adds r1, r7, r3
	b _0811A0F0
	.byte 0x00, 0x00
_0811A068: .4byte 0x03000FF4
_0811A06C: .4byte byte_83BBDD0 @ =0x083BBDD0
_0811A070: .4byte 0x0000018B
_0811A074: .4byte 0x00000199
_0811A078:
	movs r4, #0xCC
	lsls r4, r4, #0x01
	adds r1, r7, r4
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _0811A0E8
_0811A084:
	movs r3, #0x00
	ldr r0, _0811A128 @ =0x00000199
	adds r1, r7, r0
	ldr r6, _0811A12C @ =0x000003E6
	movs r5, #0xFF
_0811A08E:
	ldrb r2, [r1, #0x00]
	lsls r0, r2, #0x01
	add r0, sp
	adds r0, #0x10
	ldrh r0, [r0, #0x00]
	cmp r0, r6
	bls _0811A078
	adds r0, r2, #0x1
	movs r4, #0x00
	strb r0, [r1, #0x00]
	ands r0, r5
	cmp r0, #0x06
	bne _0811A0AA
	strb r4, [r1, #0x00]
_0811A0AA:
	adds r3, #0x01
	ldrb r2, [r1, #0x00]
	lsls r0, r2, #0x01
	add r0, sp
	adds r0, #0x10
	ldrh r0, [r0, #0x00]
	cmp r0, r6
	bls _0811A078
	adds r0, r2, #0x1
	strb r0, [r1, #0x00]
	ands r0, r5
	cmp r0, #0x06
	bne _0811A0C6
	strb r4, [r1, #0x00]
_0811A0C6:
	adds r3, #0x01
	ldrb r2, [r1, #0x00]
	lsls r0, r2, #0x01
	add r0, sp
	adds r0, #0x10
	ldrh r0, [r0, #0x00]
	cmp r0, r6
	bls _0811A078
	adds r0, r2, #0x1
	strb r0, [r1, #0x00]
	ands r0, r5
	cmp r0, #0x06
	bne _0811A0E2
	strb r4, [r1, #0x00]
_0811A0E2:
	adds r3, #0x01
	cmp r3, #0x05
	ble _0811A08E
_0811A0E8:
	cmp r3, #0x06
	bne _0811A0F4
	ldr r2, _0811A128 @ =0x00000199
	adds r1, r7, r2
_0811A0F0:
	movs r0, #0xFF
	strb r0, [r1, #0x00]
_0811A0F4:
	ldr r3, _0811A128 @ =0x00000199
	adds r0, r7, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	bne _0811A100
	b _0811A7D8
_0811A100:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x67
	bl play_sfx_80195B4
	ldr r0, [r7, #0x30]
	bl sprite_hide_8021F20
	movs r4, #0xCC
	lsls r4, r4, #0x01
	adds r1, r7, r4
	movs r2, #0x00
	movs r0, #0x02
	strb r0, [r1, #0x00]
	ldr r1, _0811A130 @ =0x0000019B
	adds r0, r7, r1
	strb r2, [r0, #0x00]
	bl _0811AB70
	lsls r0, r0, #0x00
_0811A128:
	lsls r1, r3, #0x06
	lsls r0, r0, #0x00
_0811A12C:
	lsls r6, r4, #0x0F
	lsls r0, r0, #0x00
_0811A130:
	lsls r3, r3, #0x06
	lsls r0, r0, #0x00
_0811A134:
	ldr r3, _0811A16C @ =0x00000199
	adds r2, r7, r3
	movs r0, #0xFF
	strb r0, [r2, #0x00]
	ldr r1, [sp, #0x030]
	adds r3, #0x6F
	adds r0, r1, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0811A170
	lsls r0, r1, #0x1D
	lsrs r3, r0, #0x1F
	ldrb r4, [r4, #0x00]
	cmp r3, r4
	bne _0811A1B4
	ldrb r0, [r6, #0x00]
	adds r0, r5, r0
	ldrb r1, [r0, #0x00]
	mov r0, r8
	ands r0, r1
	add r0, r9
	ldrb r0, [r0, #0x00]
	ldrb r2, [r2, #0x00]
	adds r1, r3, #0x0
	b _0811A190
	.byte 0x00, 0x00
_0811A16C: .4byte 0x00000199
_0811A170:
	ldrb r0, [r6, #0x00]
	adds r0, r5, r0
	ldrb r1, [r0, #0x00]
	mov r0, r8
	ands r0, r1
	mov r3, r9
	adds r1, r3, r0
	ldrb r0, [r1, #0x00]
	subs r0, #0x04
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	bhi _0811A19E
	ldrb r0, [r1, #0x00]
	ldrb r1, [r4, #0x00]
	ldrb r2, [r2, #0x00]
_0811A190:
	bl sub_8117270
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0811A1B4
	b _0811A1BC
_0811A19E:
	ldrb r0, [r1, #0x00]
	ldrb r1, [r4, #0x00]
	ldrb r2, [r2, #0x00]
	bl sub_8117270
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0811A1B4
	movs r4, #0x01
	mov r10, r4
_0811A1B4:
	mov r0, r10
	cmp r0, #0x00
	bne _0811A1BC
	b _0811A7D8
_0811A1BC:
	movs r1, #0xCA
	lsls r1, r1, #0x01
	adds r5, r7, r1
	ldrb r0, [r5, #0x00]
	ldr r2, _0811A208 @ =0x00000191
	adds r4, r7, r2
	adds r0, r4, r0
	ldrb r0, [r0, #0x00]
	mov r8, r0
	movs r3, #0xCB
	lsls r3, r3, #0x01
	adds r0, r7, r3
	movs r6, #0x00
	strb r6, [r0, #0x00]
	mov r0, r9
	movs r1, #0x03
	movs r2, #0x00
	bl sub_8116B48
	ldrb r1, [r5, #0x00]
	adds r1, r4, r1
	strb r0, [r1, #0x00]
	ldrb r2, [r5, #0x00]
	adds r4, r4, r2
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0811A210
	ldr r4, _0811A20C @ =0x0000018B
	adds r1, r7, r4
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x7F
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x30]
	bl sprite_hide_8021F20
	b _0811A280
_0811A208: .4byte 0x00000191
_0811A20C: .4byte 0x0000018B
_0811A210:
	mov r1, r8
	cmp r1, #0x07
	bne _0811A234
	cmp r0, #0x06
	bne _0811A234
	ldr r3, _0811A230 @ =0x0000018B
	adds r0, r7, r3
	adds r0, r0, r2
	strb r6, [r0, #0x00]
	movs r4, #0xC7
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldrb r5, [r5, #0x00]
	adds r0, r0, r5
	strb r6, [r0, #0x00]
	b _0811A280
_0811A230: .4byte 0x0000018B
_0811A234:
	movs r0, #0xCA
	lsls r0, r0, #0x01
	adds r3, r7, r0
	ldrb r1, [r3, #0x00]
	ldr r2, _0811A2D0 @ =0x0000018B
	adds r4, r7, r2
	adds r1, r4, r1
	ldrb r2, [r1, #0x00]
	movs r0, #0x7F
	ands r0, r2
	strb r0, [r1, #0x00]
	ldrb r1, [r3, #0x00]
	ldr r0, _0811A2D4 @ =0x00000191
	adds r5, r7, r0
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r4, r1
	ldrb r2, [r1, #0x00]
	cmp r0, r2
	bge _0811A280
	strb r0, [r1, #0x00]
	ldrb r2, [r3, #0x00]
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	cmp r0, #0x05
	bgt _0811A280
	adds r1, r4, r2
	movs r3, #0xC7
	lsls r3, r3, #0x01
	adds r0, r7, r3
	adds r0, r0, r2
	ldrb r1, [r1, #0x00]
	ldrb r4, [r0, #0x00]
	cmp r1, r4
	bcs _0811A280
	strb r1, [r0, #0x00]
_0811A280:
	ldr r0, [r7, #0x30]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r1, [r7, #0x30]
	movs r0, #0x4E
	strh r0, [r1, #0x00]
	ldr r2, [r7, #0x30]
	movs r0, #0xCA
	lsls r0, r0, #0x01
	adds r1, r7, r0
	movs r3, #0xC7
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x0C
	strh r0, [r2, #0x02]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x67
	bl play_sfx_80195B4
	movs r4, #0xA9
	lsls r4, r4, #0x01
	adds r1, r7, r4
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, _0811A2D8 @ =0x00000153
	adds r1, r7, r2
	strb r0, [r1, #0x00]
	bl _0811AB70
	lsls r0, r0, #0x00
_0811A2D0:
	lsls r3, r1, #0x06
	lsls r0, r0, #0x00
_0811A2D4:
	lsls r1, r2, #0x06
	lsls r0, r0, #0x00
_0811A2D8:
	lsls r3, r2, #0x05
	lsls r0, r0, #0x00
_0811A2DC:
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0811A2E8
	bl _0811AB70
_0811A2E8:
	movs r3, #0xCA
	lsls r3, r3, #0x01
	adds r4, r7, r3
	ldr r0, _0811A34C @ =0x0000018B
	adds r1, r7, r0
	ldrb r2, [r4, #0x00]
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x7F
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r3, #0x02
	adds r0, r7, r3
	strb r5, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	ldr r0, [r7, #0x30]
	str r5, [sp, #0x000]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r1, [r7, #0x30]
	movs r0, #0x4E
	strh r0, [r1, #0x00]
	ldr r2, [r7, #0x30]
	movs r1, #0xC7
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrb r4, [r4, #0x00]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x0C
	strh r0, [r2, #0x02]
	movs r2, #0xA9
	lsls r2, r2, #0x01
	adds r0, r7, r2
	strb r6, [r0, #0x00]
	ldr r3, _0811A350 @ =0x00000153
	adds r0, r7, r3
	strb r6, [r0, #0x00]
	bl _0811AB70
	lsls r0, r0, #0x00
_0811A34C:
	lsls r3, r1, #0x06
	lsls r0, r0, #0x00
_0811A350:
	lsls r3, r2, #0x05
	lsls r0, r0, #0x00
_0811A354:
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x06]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0811A368
	b _0811A524
_0811A368:
	ldr r1, _0811A39C @ =0x00000191
	adds r0, r7, r1
	adds r0, r0, r2
	ldrb r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0811A376
	b _0811A524
_0811A376:
	cmp r2, #0x01
	bne _0811A392
	ldr r2, _0811A3A0 @ =0x083BCA64
	adds r0, r7, #0x0
	adds r0, #0xA6
	ldrb r1, [r3, #0x00]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrh r0, [r0, #0x04]
	mov r9, r0
_0811A392:
	lsls r0, r4, #0x18
	cmp r0, #0x00
	bne _0811A3A4
	subs r0, r5, #0x1
	b _0811A3A6
_0811A39C: .4byte 0x00000191
_0811A3A0: .4byte dword_83BCA64 @ =0x083BCA64
_0811A3A4:
	subs r0, r4, #0x1
_0811A3A6:
	strb r0, [r3, #0x00]
	movs r2, #0xCA
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	ldr r3, _0811A3D8 @ =0x00000191
	adds r0, r7, r3
	adds r3, r0, r1
	ldrb r0, [r3, #0x00]
	cmp r0, #0x06
	bhi _0811A3E0
	ldr r4, _0811A3DC @ =0x0000018B
	adds r0, r7, r4
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x01
	cmp r2, r0
	bne _0811A3E0
	movs r3, #0xC7
	lsls r3, r3, #0x01
	adds r0, r7, r3
	adds r0, r0, r1
	strb r2, [r0, #0x00]
	b _0811A3FA
_0811A3D8: .4byte 0x00000191
_0811A3DC: .4byte 0x0000018B
_0811A3E0:
	movs r4, #0xCA
	lsls r4, r4, #0x01
	adds r1, r7, r4
	movs r2, #0xC7
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrb r1, [r1, #0x00]
	adds r1, r0, r1
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0811A3FA
	subs r0, #0x01
	strb r0, [r1, #0x00]
_0811A3FA:
	movs r3, #0xCA
	lsls r3, r3, #0x01
	adds r4, r7, r3
	ldr r1, _0811A484 @ =0x00000191
	adds r0, r7, r1
	ldrb r2, [r4, #0x00]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0811A418
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_0811A418:
	ldr r1, [r7, #0x30]
	movs r0, #0x4E
	strh r0, [r1, #0x00]
	ldr r2, [r7, #0x30]
	movs r3, #0xC7
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrb r1, [r4, #0x00]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x0C
	strh r0, [r2, #0x02]
	ldrb r2, [r4, #0x00]
	cmp r2, #0x00
	bne _0811A4AC
	ldr r2, _0811A488 @ =0x083BBDD0
	subs r3, #0x03
	adds r0, r7, r3
	ldrb r4, [r4, #0x00]
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	ands r1, r0
	adds r0, r7, #0x0
	adds r0, #0x8C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	subs r0, #0x04
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x05
	bhi _0811A490
	movs r4, #0xBE
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldrh r1, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r1, r2
	asrs r0, r0, #0x0B
	movs r1, #0x1F
	ands r0, r1
	lsls r0, r0, #0x08
	movs r1, #0x02
	orrs r0, r1
	ldr r1, _0811A48C @ =0x0200000C
	strh r0, [r1, #0x00]
	b _0811A504
	.byte 0x00, 0x00
_0811A484: .4byte 0x00000191
_0811A488: .4byte byte_83BBDD0 @ =0x083BBDD0
_0811A48C: .4byte 0x0200000C
_0811A490:
	ldr r2, _0811A4A8 @ =0x0200000C
	movs r4, #0xBE
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	b _0811A504
	.byte 0x00, 0x00
_0811A4A8: .4byte 0x0200000C
_0811A4AC:
	cmp r2, #0x01
	bne _0811A504
	ldr r5, _0811A4DC @ =0x083BCA64
	ldr r0, _0811A4E0 @ =0x0000018B
	adds r1, r7, r0
	ldrb r4, [r4, #0x00]
	adds r1, r1, r4
	adds r0, r7, #0x0
	adds r0, #0xA6
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r3, r0, #0x02
	adds r0, r3, r5
	ldrh r0, [r0, #0x04]
	cmp r9, r0
	beq _0811A4E8
	ldr r1, _0811A4E4 @ =0x00000197
	adds r0, r7, r1
	strb r2, [r0, #0x00]
	b _0811A504
	.byte 0x00, 0x00
_0811A4DC: .4byte dword_83BCA64 @ =0x083BCA64
_0811A4E0: .4byte 0x0000018B
_0811A4E4: .4byte 0x00000197
_0811A4E8:
	ldr r0, [r7, #0x40]
	adds r1, r5, #0x0
	adds r1, #0x08
	adds r1, r3, r1
	ldr r1, [r1, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	str r3, [sp, #0x000]
	bl sub_801E150
	ldr r0, [r7, #0x40]
	bl sprite_show_8020CBC
_0811A504:
	movs r3, #0xA9
	lsls r3, r3, #0x01
	adds r2, r7, r3
	movs r1, #0x00
	movs r0, #0x01
	strb r0, [r2, #0x00]
	ldr r4, _0811A520 @ =0x00000153
	adds r2, r7, r4
	strb r0, [r2, #0x00]
	movs r2, #0xCC
	lsls r2, r2, #0x01
	adds r0, r7, r2
	strb r1, [r0, #0x00]
	b _0811AB70
_0811A520: .4byte 0x00000153
_0811A524:
	movs r3, #0xC0
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x06]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0811A538
	b _0811A70C
_0811A538:
	movs r4, #0xCA
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldrb r3, [r0, #0x00]
	ldr r1, _0811A584 @ =0x00000191
	adds r0, r7, r1
	adds r4, r0, r3
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0811A54E
	b _0811A70C
_0811A54E:
	cmp r3, #0x01
	bne _0811A570
	ldr r2, _0811A588 @ =0x083BCA64
	ldr r0, _0811A58C @ =0x0000018B
	adds r1, r7, r0
	adds r1, r1, r3
	adds r0, r7, #0x0
	adds r0, #0xA6
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrh r0, [r0, #0x04]
	str r0, [sp, #0x03C]
_0811A570:
	ldr r1, _0811A58C @ =0x0000018B
	adds r0, r7, r1
	adds r1, r0, r3
	ldrb r2, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	subs r0, #0x01
	cmp r2, r0
	bne _0811A590
	movs r0, #0x00
	b _0811A592
_0811A584: .4byte 0x00000191
_0811A588: .4byte dword_83BCA64 @ =0x083BCA64
_0811A58C: .4byte 0x0000018B
_0811A590:
	adds r0, r2, #0x1
_0811A592:
	strb r0, [r1, #0x00]
	movs r2, #0xCA
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrb r2, [r0, #0x00]
	ldr r3, _0811A5C0 @ =0x00000191
	adds r0, r7, r3
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _0811A5C8
	ldr r4, _0811A5C4 @ =0x0000018B
	adds r0, r7, r4
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	cmp r1, #0x00
	bne _0811A5C8
	subs r3, #0x03
	adds r0, r7, r3
	adds r0, r0, r2
	strb r1, [r0, #0x00]
	b _0811A5E2
	.byte 0x00, 0x00
_0811A5C0: .4byte 0x00000191
_0811A5C4: .4byte 0x0000018B
_0811A5C8:
	movs r4, #0xCA
	lsls r4, r4, #0x01
	adds r1, r7, r4
	movs r2, #0xC7
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrb r1, [r1, #0x00]
	adds r1, r0, r1
	ldrb r0, [r1, #0x00]
	cmp r0, #0x05
	beq _0811A5E2
	adds r0, #0x01
	strb r0, [r1, #0x00]
_0811A5E2:
	movs r3, #0xCA
	lsls r3, r3, #0x01
	adds r4, r7, r3
	ldr r1, _0811A66C @ =0x00000191
	adds r0, r7, r1
	ldrb r2, [r4, #0x00]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0811A600
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_0811A600:
	ldr r1, [r7, #0x30]
	movs r0, #0x4E
	strh r0, [r1, #0x00]
	ldr r2, [r7, #0x30]
	movs r3, #0xC7
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrb r1, [r4, #0x00]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x0C
	strh r0, [r2, #0x02]
	ldrb r2, [r4, #0x00]
	cmp r2, #0x00
	bne _0811A694
	ldr r2, _0811A670 @ =0x083BBDD0
	subs r3, #0x03
	adds r0, r7, r3
	ldrb r4, [r4, #0x00]
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	ands r1, r0
	adds r0, r7, #0x0
	adds r0, #0x8C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	subs r0, #0x04
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x05
	bhi _0811A678
	movs r4, #0xBE
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldrh r1, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r1, r2
	asrs r0, r0, #0x0B
	movs r1, #0x1F
	ands r0, r1
	lsls r0, r0, #0x08
	movs r1, #0x02
	orrs r0, r1
	ldr r1, _0811A674 @ =0x0200000C
	strh r0, [r1, #0x00]
	b _0811A6EC
	.byte 0x00, 0x00
_0811A66C: .4byte 0x00000191
_0811A670: .4byte byte_83BBDD0 @ =0x083BBDD0
_0811A674: .4byte 0x0200000C
_0811A678:
	ldr r2, _0811A690 @ =0x0200000C
	movs r4, #0xBE
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	b _0811A6EC
	.byte 0x00, 0x00
_0811A690: .4byte 0x0200000C
_0811A694:
	cmp r2, #0x01
	bne _0811A6EC
	ldr r5, _0811A6C4 @ =0x083BCA64
	ldr r0, _0811A6C8 @ =0x0000018B
	adds r1, r7, r0
	ldrb r4, [r4, #0x00]
	adds r1, r1, r4
	adds r0, r7, #0x0
	adds r0, #0xA6
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r3, r0, #0x02
	adds r0, r3, r5
	ldr r1, [sp, #0x03C]
	ldrh r0, [r0, #0x04]
	cmp r1, r0
	beq _0811A6D0
	ldr r3, _0811A6CC @ =0x00000197
	adds r0, r7, r3
	strb r2, [r0, #0x00]
	b _0811A6EC
_0811A6C4: .4byte dword_83BCA64 @ =0x083BCA64
_0811A6C8: .4byte 0x0000018B
_0811A6CC: .4byte 0x00000197
_0811A6D0:
	ldr r0, [r7, #0x40]
	adds r1, r5, #0x0
	adds r1, #0x08
	adds r1, r3, r1
	ldr r1, [r1, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	str r3, [sp, #0x000]
	bl sub_801E150
	ldr r0, [r7, #0x40]
	bl sprite_show_8020CBC
_0811A6EC:
	movs r4, #0xA9
	lsls r4, r4, #0x01
	adds r2, r7, r4
	movs r1, #0x00
	movs r0, #0x01
	strb r0, [r2, #0x00]
	ldr r3, _0811A708 @ =0x00000153
	adds r2, r7, r3
	strb r0, [r2, #0x00]
	adds r4, #0x46
	adds r0, r7, r4
	strb r1, [r0, #0x00]
	b _0811AB70
	.byte 0x00, 0x00
_0811A708: .4byte 0x00000153
_0811A70C:
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x02]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0811A720
	b _0811A8BC
_0811A720:
	movs r2, #0xCA
	lsls r2, r2, #0x01
	adds r2, r2, r7
	mov r8, r2
	ldrb r3, [r2, #0x00]
	mov r10, r3
	cmp r3, #0x00
	beq _0811A732
	b _0811A8BC
_0811A732:
	movs r4, #0x00
	str r4, [sp, #0x040]
	ldr r0, [sp, #0x030]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r0, r1
	mov r9, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0811A766
	ldr r0, _0811A7E4 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	movs r3, #0x01
	eors r1, r3
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r4, [r2, #0x0E]
	str r4, [sp, #0x040]
	mov r0, r10
	strh r0, [r2, #0x0E]
_0811A766:
	mov r1, r8
	ldrb r0, [r1, #0x00]
	ldr r2, _0811A7E8 @ =0x0000018B
	adds r6, r7, r2
	adds r0, r6, r0
	ldrb r0, [r0, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x8C
	adds r0, r4, r0
	ldrb r0, [r0, #0x00]
	bl sub_8116E84
	adds r3, r0, #0x0
	movs r0, #0xCB
	lsls r0, r0, #0x01
	adds r5, r7, r0
	strb r3, [r5, #0x00]
	ldr r2, _0811A7EC @ =0x083BBDD0
	mov r1, r8
	ldrb r0, [r1, #0x00]
	adds r0, r6, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	adds r4, r4, r0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x04
	adds r0, r0, r2
	ldrb r1, [r0, #0x04]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0811A7AE
	movs r0, #0xFF
	orrs r3, r0
	strb r3, [r5, #0x00]
_0811A7AE:
	ldr r0, _0811A7E4 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	mov r3, r9
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r4, #0x01
	eors r0, r4
	lsls r1, r0, #0x04
	subs r1, r1, r0
	lsls r1, r1, #0x02
	adds r2, r2, r1
	ldrh r0, [r2, #0x0E]
	cmp r0, #0x00
	bne _0811A7D2
	add r0, sp, #0x040
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x0E]
_0811A7D2:
	ldrb r0, [r5, #0x00]
	cmp r0, #0xFF
	bne _0811A7F0
_0811A7D8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x50
	bl play_sfx_80195B4
	b _0811AB70
_0811A7E4: .4byte 0x03000FF4
_0811A7E8: .4byte 0x0000018B
_0811A7EC: .4byte byte_83BBDD0 @ =0x083BBDD0
_0811A7F0:
	cmp r0, #0xFD
	bne _0811A870
	mov r2, r9
	ldrb r1, [r2, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0811A81C
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r5, #0x00]
	ldr r2, [r7, #0x30]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x02
	add r1, sp, #0x028
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	ldr r1, [r7, #0x30]
	movs r0, #0x5D
	strh r0, [r1, #0x02]
	b _0811A838
_0811A81C:
	ldr r1, [r7, #0x30]
	movs r0, #0x66
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x30]
	movs r0, #0x35
	strh r0, [r1, #0x02]
	ldr r0, [r7, #0x30]
	mov r3, r10
	str r3, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
_0811A838:
	movs r4, #0xCA
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldr r2, _0811A86C @ =0x0000018B
	adds r1, r7, r2
	ldrb r0, [r0, #0x00]
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	movs r3, #0xA9
	lsls r3, r3, #0x01
	adds r1, r7, r3
	movs r0, #0x01
	strb r0, [r1, #0x00]
	subs r4, #0x41
	adds r1, r7, r4
	strb r0, [r1, #0x00]
	b _0811AB70
	.byte 0x00, 0x00
_0811A86C: .4byte 0x0000018B
_0811A870:
	mov r0, r8
	ldrb r1, [r0, #0x00]
	adds r1, r6, r1
	ldrb r0, [r1, #0x00]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	movs r1, #0xA9
	lsls r1, r1, #0x01
	adds r0, r7, r1
	movs r2, #0x01
	strb r2, [r0, #0x00]
	ldr r3, _0811A8B8 @ =0x00000153
	adds r0, r7, r3
	strb r2, [r0, #0x00]
	movs r4, #0xCC
	lsls r4, r4, #0x01
	adds r0, r7, r4
	mov r1, r10
	strb r1, [r0, #0x00]
	ldr r2, [r7, #0x30]
	ldrb r0, [r5, #0x00]
_0811A8A6:
	lsls r0, r0, #0x02
	add r1, sp, #0x028
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	ldr r1, [r7, #0x30]
	movs r0, #0x5D
	strh r0, [r1, #0x02]
	b _0811AB70
_0811A8B8: .4byte 0x00000153
_0811A8BC:
	movs r2, #0xC0
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x02]
	movs r3, #0x02
	mov r9, r3
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0811A9C4
	ldr r0, [r7, #0x20]
	ldr r1, _0811A9B4 @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r4, #0x00
	mov r8, r4
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x08
	bl sub_81151E4
	movs r1, #0xAB
	lsls r1, r1, #0x01
	adds r0, r7, r1
	movs r6, #0x01
	strb r6, [r0, #0x00]
	movs r2, #0xCA
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0811A908
	ldr r0, [r7, #0x40]
	bl sprite_hide_8021F20
_0811A908:
	ldr r3, _0811A9B8 @ =0x0000014F
	adds r0, r7, r3
	movs r5, #0x06
	strb r5, [r0, #0x00]
	movs r4, #0xBF
	lsls r4, r4, #0x01
	adds r1, r7, r4
	movs r4, #0x00
	movs r0, #0xF9
	lsls r0, r0, #0x06
	strh r0, [r1, #0x00]
	movs r1, #0xAA
	lsls r1, r1, #0x01
	adds r0, r7, r1
	strb r6, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	adds r1, r7, #0x0
	adds r1, #0x88
	ldr r2, [r1, #0x00]
	movs r0, #0x03
	strb r0, [r2, #0x0C]
	ldr r2, [r1, #0x00]
	movs r3, #0xE5
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x14]
	ldr r0, [r1, #0x00]
	strb r6, [r0, #0x1C]
	ldr r2, [r1, #0x00]
	ldr r0, _0811A9BC @ =0x0000FF80
	strh r0, [r2, #0x18]
	ldr r2, [r1, #0x00]
	movs r0, #0x10
	strb r0, [r2, #0x1B]
	ldr r2, [r1, #0x00]
	ldr r0, _0811A9C0 @ =0x0000FFB0
	strh r0, [r2, #0x16]
	ldr r2, [r1, #0x00]
	movs r0, #0xF8
	strb r0, [r2, #0x1A]
	ldr r0, [r1, #0x00]
	strb r6, [r0, #0x1D]
	ldr r0, [r1, #0x00]
	mov r2, r8
	strh r2, [r0, #0x24]
	ldr r0, [r1, #0x00]
	adds r0, #0x2C
	strb r6, [r0, #0x00]
	ldr r2, [r1, #0x00]
	movs r0, #0x50
	strh r0, [r2, #0x26]
	ldr r0, [r1, #0x00]
	adds r0, #0x2A
	strb r5, [r0, #0x00]
	ldr r0, [r1, #0x00]
	mov r3, r8
	strh r3, [r0, #0x28]
	ldr r0, [r1, #0x00]
	adds r0, #0x2B
	strb r4, [r0, #0x00]
	ldr r0, [r1, #0x00]
	adds r0, #0x2D
	strb r6, [r0, #0x00]
	movs r1, #0xA9
	lsls r1, r1, #0x01
	adds r0, r7, r1
	mov r2, r9
	strb r2, [r0, #0x00]
	movs r3, #0xB2
	lsls r3, r3, #0x01
	adds r0, r7, r3
	strh r6, [r0, #0x00]
	adds r1, #0x15
	adds r0, r7, r1
	strb r4, [r0, #0x00]
	movs r2, #0xCC
	lsls r2, r2, #0x01
	adds r0, r7, r2
	strb r4, [r0, #0x00]
	movs r0, #0x02
	b _0811AB72
_0811A9B4: .4byte 0x0000FFFF
_0811A9B8: .4byte 0x0000014F
_0811A9BC: .4byte 0x0000FF80
_0811A9C0: .4byte 0x0000FFB0
_0811A9C4:
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x00
	beq _0811AA5C
	movs r3, #0xCA
	lsls r3, r3, #0x01
	adds r4, r7, r3
	ldrb r0, [r4, #0x00]
	cmp r0, #0x01
	bne _0811A9E4
	ldr r0, [r7, #0x40]
	bl sprite_hide_8021F20
_0811A9E4:
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0811A9EE
	mov r0, r9
	b _0811A9F0
_0811A9EE:
	subs r0, #0x01
_0811A9F0:
	strb r0, [r4, #0x00]
	movs r1, #0xCA
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r2, _0811AA10 @ =0x00000191
	adds r1, r7, r2
	ldrb r0, [r0, #0x00]
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0811AA14
	ldr r0, [r7, #0x30]
	bl sprite_hide_8021F20
	b _0811AA1A
	.byte 0x00, 0x00
_0811AA10: .4byte 0x00000191
_0811AA14:
	ldr r0, [r7, #0x30]
	bl sprite_show_8020CBC
_0811AA1A:
	movs r3, #0xCA
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldrb r0, [r1, #0x00]
	cmp r0, #0x01
	beq _0811AABA
	cmp r0, #0x00
	bne _0811AB18
	ldr r2, _0811AA54 @ =0x083BBDD0
	ldr r4, _0811AA58 @ =0x0000018B
	adds r0, r7, r4
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	ands r1, r0
	adds r0, r7, #0x0
	adds r0, #0x8C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bls _0811AB18
	cmp r0, #0x09
	bls _0811AAEC
	b _0811AB18
	.byte 0x00, 0x00
_0811AA54: .4byte byte_83BBDD0 @ =0x083BBDD0
_0811AA58: .4byte 0x0000018B
_0811AA5C:
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0811AA68
	b _0811AB70
_0811AA68:
	movs r0, #0xCA
	lsls r0, r0, #0x01
	adds r4, r7, r0
	ldrb r0, [r4, #0x00]
	cmp r0, #0x01
	bne _0811AA7A
	ldr r0, [r7, #0x40]
	bl sprite_hide_8021F20
_0811AA7A:
	ldrb r0, [r4, #0x00]
	cmp r0, #0x02
	bne _0811AA84
	strb r5, [r4, #0x00]
	b _0811AA88
_0811AA84:
	adds r0, #0x01
	strb r0, [r4, #0x00]
_0811AA88:
	movs r1, #0xCA
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r2, _0811AAA4 @ =0x00000191
	adds r1, r7, r2
	ldrb r0, [r0, #0x00]
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0811AAA8
	ldr r0, [r7, #0x30]
	bl sprite_hide_8021F20
	b _0811AAAE
_0811AAA4: .4byte 0x00000191
_0811AAA8:
	ldr r0, [r7, #0x30]
	bl sprite_show_8020CBC
_0811AAAE:
	movs r3, #0xCA
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldrb r0, [r1, #0x00]
	cmp r0, #0x01
	bne _0811AAC2
_0811AABA:
	ldr r0, [r7, #0x40]
	bl sprite_show_8020CBC
	b _0811AB2C
_0811AAC2:
	cmp r0, #0x00
	bne _0811AB18
	ldr r2, _0811AB0C @ =0x083BBDD0
	ldr r4, _0811AB10 @ =0x0000018B
	adds r0, r7, r4
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	ands r1, r0
	adds r0, r7, #0x0
	adds r0, #0x8C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bls _0811AB18
	cmp r0, #0x09
	bhi _0811AB18
_0811AAEC:
	movs r1, #0xBE
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrh r1, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r1, r2
	asrs r0, r0, #0x0B
	movs r1, #0x1F
	ands r0, r1
	lsls r0, r0, #0x08
	movs r1, #0x02
	orrs r0, r1
	ldr r1, _0811AB14 @ =0x0200000C
	strh r0, [r1, #0x00]
	b _0811AB2C
_0811AB0C: .4byte byte_83BBDD0 @ =0x083BBDD0
_0811AB10: .4byte 0x0000018B
_0811AB14: .4byte 0x0200000C
_0811AB18:
	ldr r2, _0811AB84 @ =0x0200000C
	movs r4, #0xBE
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
_0811AB2C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	ldr r1, [r7, #0x30]
	movs r3, #0x00
	movs r0, #0x4E
	strh r0, [r1, #0x00]
	ldr r2, [r7, #0x30]
	movs r0, #0xCA
	lsls r0, r0, #0x01
	adds r1, r7, r0
	movs r4, #0xC7
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x0C
	strh r0, [r2, #0x02]
	movs r0, #0xA9
	lsls r0, r0, #0x01
	adds r1, r7, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, _0811AB88 @ =0x00000153
	adds r1, r7, r2
	strb r0, [r1, #0x00]
	adds r4, #0x0A
	adds r0, r7, r4
	strb r3, [r0, #0x00]
_0811AB70:
	movs r0, #0x00
_0811AB72:
	add sp, #0x044
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0811AB84: .4byte 0x0200000C
_0811AB88: .4byte 0x00000153
