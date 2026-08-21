	.syntax unified
	.text

	thumb_func_start sub_816994C
sub_816994C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _08169B58 @ =0x08CDD198
	str r0, [r6, #0x18]
	adds r4, r6, #0x0
	adds r4, #0x70
	adds r0, r4, #0x0
	bl sub_8163320
	adds r0, r4, #0x0
	movs r1, #0x20
	bl sub_81632EC
	ldr r4, _08169B5C @ =0x08215788
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
	ldr r1, _08169B60 @ =0x00000474
	adds r0, r6, r1
	movs r7, #0x00
	str r7, [r0, #0x00]
	movs r2, #0x8F
	lsls r2, r2, #0x03
	adds r0, r6, r2
	str r7, [r0, #0x00]
	ldr r3, _08169B64 @ =0x0000047C
	adds r0, r6, r3
	str r7, [r0, #0x00]
	ldr r5, _08169B68 @ =0x00000484
	adds r4, r6, r5
	str r7, [r4, #0x00]
	movs r0, #0x92
	lsls r0, r0, #0x03
	adds r5, r6, r0
	str r7, [r5, #0x00]
	adds r1, #0x18
	adds r0, r6, r1
	str r7, [r0, #0x00]
	adds r2, #0x08
	adds r0, r6, r2
	str r7, [r0, #0x00]
	adds r3, #0x0C
	adds r0, r6, r3
	movs r1, #0x14
	mov r8, r1
	str r1, [r0, #0x00]
	ldr r0, _08169B6C @ =0x000001EB
	movs r1, #0x00
	bl sub_8163134
	ldr r0, _08169B70 @ =0x00001CDB
	movs r1, #0x00
	bl sub_80E9A6C
	ldr r0, _08169B74 @ =0x00001CE1
	bl sub_80E99E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r4, #0x00]
	cmp r0, #0x13
	bgt _081699F2
	mov r2, r8
	str r2, [r4, #0x00]
_081699F2:
	movs r4, #0xF7
	lsls r4, r4, #0x01
	adds r0, r4, #0x0
	bl sub_8163110
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08169A12
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8163134
	ldr r0, [r5, #0x00]
	movs r1, #0x11
	orrs r0, r1
	str r0, [r5, #0x00]
_08169A12:
	ldr r0, _08169B78 @ =0x000001EF
	bl sub_8163110
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08169A26
	ldr r0, [r5, #0x00]
	movs r1, #0x02
	orrs r0, r1
	str r0, [r5, #0x00]
_08169A26:
	ldr r4, _08169B7C @ =0x00005006
	movs r5, #0x01
	negs r5, r5
	movs r0, #0x04
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x04
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	movs r3, #0x01
	bl sub_80214A4
	str r7, [sp, #0x000]
	add r3, sp, #0x00C
	str r3, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x04
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r4, _08169B80 @ =0x0000415A
	movs r0, #0x03
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x03
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, _08169B84 @ =0x000040CF
	str r7, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r2, _08169B88 @ =0x08215790
	movs r0, #0x10
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_81638B0
	str r0, [r6, #0x1C]
	ldr r2, _08169B8C @ =0x08215798
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
	str r0, [r6, #0x38]
	movs r1, #0x6F
	adds r0, #0xA2
	strh r1, [r0, #0x00]
	ldr r5, _08169B90 @ =0x082157A0
	movs r0, #0x24
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x08
	adds r2, r5, #0x0
	bl process_add
	ldr r0, _08169B94 @ =0x08CDD1B0
	str r0, [r4, #0x18]
	str r7, [r4, #0x20]
	str r7, [r4, #0x1C]
	str r4, [r6, #0x2C]
	str r6, [r4, #0x14]
	ldr r2, _08169B98 @ =0x082157A8
	movs r0, #0x10
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_8162968
	str r0, [r6, #0x28]
	ldr r2, _08169B9C @ =0x082157B0
	movs r0, #0x04
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	str r0, [r6, #0x24]
	ldr r2, _08169BA0 @ =0x082157B8
	movs r0, #0x14
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_8169440
	str r0, [r6, #0x3C]
	ldr r2, _08169BA4 @ =0x082157C0
	movs r0, #0x10
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_8162CC0
	str r0, [r6, #0x6C]
	ldr r0, _08169BA8 @ =0x08215D9F
	movs r1, #0xC0
	lsls r1, r1, #0x13
	bl sub_8163DB8
	ldr r0, _08169BAC @ =0x082157D5
	ldr r1, _08169BB0 @ =0x06007000
	bl sub_8163DB8
	ldr r0, _08169BB4 @ =0x08215C87
	ldr r1, _08169BB8 @ =0x06007800
	bl sub_8163DB8
	ldr r0, _08169BBC @ =0x0300034C
	ldr r1, _08169BC0 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08169BCC
	ldr r0, _08169BC4 @ =0x082169FD
	ldr r1, _08169BC8 @ =0x02000080
	bl sub_8163DB8
	b _08169BD4
	.byte 0x00, 0x00
_08169B58: .4byte 0x08CDD198
_08169B5C: .4byte 0x08215788
_08169B60: .4byte 0x00000474
_08169B64: .4byte 0x0000047C
_08169B68: .4byte 0x00000484
_08169B6C: .4byte 0x000001EB
_08169B70: .4byte 0x00001CDB
_08169B74: .4byte 0x00001CE1
_08169B78: .4byte 0x000001EF
_08169B7C: .4byte 0x00005006
_08169B80: .4byte 0x0000415A
_08169B84: .4byte 0x000040CF
_08169B88: .4byte 0x08215790
_08169B8C: .4byte 0x08215798
_08169B90: .4byte 0x082157A0
_08169B94: .4byte 0x08CDD1B0
_08169B98: .4byte 0x082157A8
_08169B9C: .4byte 0x082157B0
_08169BA0: .4byte 0x082157B8
_08169BA4: .4byte 0x082157C0
_08169BA8: .4byte 0x08215D9F
_08169BAC: .4byte 0x082157D5
_08169BB0: .4byte 0x06007000
_08169BB4: .4byte 0x08215C87
_08169BB8: .4byte 0x06007800
_08169BBC: .4byte 0x0300034C
_08169BC0: .4byte 0x00000888
_08169BC4: .4byte 0x082169FD
_08169BC8: .4byte 0x02000080
_08169BCC:
	ldr r0, _08169CDC @ =0x082169A7
	ldr r1, _08169CE0 @ =0x02000080
	bl sub_8163DB8
_08169BD4:
	ldr r1, _08169CE4 @ =0x0200000C
	ldr r2, _08169CE8 @ =0x00002E02
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r3, _08169CEC @ =0x00002F03
	adds r0, r3, #0x0
	strh r0, [r1, #0x00]
	subs r1, #0x0E
	movs r5, #0xF2
	lsls r5, r5, #0x05
	adds r0, r5, #0x0
	strh r0, [r1, #0x00]
	ldr r2, _08169CF0 @ =0x082157C8
	movs r0, #0x60
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	ldr r1, [r6, #0x1C]
	movs r2, #0x80
	lsls r2, r2, #0x08
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_8168390
	str r0, [r6, #0x20]
	ldr r2, _08169CF4 @ =0x082157C0
	movs r0, #0x30
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x04
	bl sub_8163298
	str r0, [r6, #0x30]
	adds r0, r6, #0x0
	bl sub_816AE5C
	movs r4, #0x00
	movs r7, #0x74
	adds r7, r7, r6
	mov r12, r7
	movs r0, #0x76
	adds r0, r0, r6
	mov r8, r0
	ldr r1, _08169CF8 @ =0x08198504
	mov r9, r1
_08169C36:
	lsls r0, r4, #0x03
	movs r2, #0xFF
	mov r10, r2
	ands r0, r2
	lsls r1, r0, #0x01
	mov r3, r9
	adds r0, r1, r3
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	bge _08169C4E
	adds r0, #0x3F
_08169C4E:
	asrs r3, r0, #0x06
	ldr r5, _08169CFC @ =0x08198584
	adds r0, r1, r5
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	bge _08169C5E
	adds r0, #0x3F
_08169C5E:
	lsls r1, r4, #0x02
	mov r7, r12
	adds r2, r7, r1
	asrs r0, r0, #0x0C
	adds r0, #0x08
	strh r0, [r2, #0x00]
	add r1, r8
	asrs r0, r3, #0x07
	adds r0, #0x30
	strh r0, [r1, #0x00]
	adds r1, r4, #0x1
	lsls r0, r1, #0x03
	mov r2, r10
	ands r0, r2
	lsls r2, r0, #0x01
	mov r3, r9
	adds r0, r2, r3
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	bge _08169C8A
	adds r0, #0x3F
_08169C8A:
	asrs r3, r0, #0x06
	adds r0, r2, r5
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _08169C98
	adds r0, #0x3F
_08169C98:
	lsls r1, r1, #0x02
	mov r5, r12
	adds r2, r5, r1
	asrs r0, r0, #0x0C
	adds r0, #0x08
	strh r0, [r2, #0x00]
	add r1, r8
	asrs r0, r3, #0x07
	adds r0, #0x30
	strh r0, [r1, #0x00]
	adds r4, #0x02
	cmp r4, #0xFF
	ble _08169C36
	ldr r0, _08169D00 @ =0x03001030
	str r5, [r0, #0x00]
	ldr r1, _08169D04 @ =0x0816B385
	movs r0, #0x02
	bl sub_8018B78
	ldr r1, _08169CE0 @ =0x02000080
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, _08169D08 @ =0x0300034C
	ldr r0, _08169D0C @ =0x0000FFFF
	strh r0, [r1, #0x02]
	adds r0, r6, #0x0
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08169CDC: .4byte 0x082169A7
_08169CE0: .4byte 0x02000080
_08169CE4: .4byte 0x0200000C
_08169CE8: .4byte 0x00002E02
_08169CEC: .4byte 0x00002F03
_08169CF0: .4byte 0x082157C8
_08169CF4: .4byte 0x082157C0
_08169CF8: .4byte 0x08198504
_08169CFC: .4byte 0x08198584
_08169D00: .4byte 0x03001030
_08169D04: .4byte sub_816B384
_08169D08: .4byte 0x0300034C
_08169D0C: .4byte 0x0000FFFF
