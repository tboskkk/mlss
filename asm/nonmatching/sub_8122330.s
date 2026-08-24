	.syntax unified
	.text

	thumb_func_start sub_8122330
sub_8122330:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r7, r0, #0x0
	ldr r0, [sp, #0x048]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x01C]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x020]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, _081223A4 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xF2
	ldr r1, [sp, #0x020]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08122384
	movs r0, #0x01
	mov r1, r8
	eors r1, r0
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r2, r0
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	ldr r2, [sp, #0x020]
	cmp r0, r2
	bne _08122384
	cmp r3, #0x00
	beq _081223A0
_08122384:
	ldr r1, _081223A8 @ =0x083BE67C
	ldr r3, [sp, #0x020]
	lsls r2, r3, #0x02
	adds r0, r2, r3
	lsls r0, r0, #0x02
	adds r3, r0, r1
	ldrb r0, [r3, #0x11]
	mov r4, r8
	asrs r0, r4
	movs r1, #0x01
	ands r0, r1
	str r2, [sp, #0x024]
	cmp r0, #0x00
	bne _081223AC
_081223A0:
	adds r0, r7, #0x0
	b _081225FA
_081223A4: .4byte 0x03000FF4
_081223A8: .4byte byte_83BE67C @ =0x083BE67C
_081223AC:
	ldrb r0, [r3, #0x06]
	cmp r0, #0x64
	bne _081223CC
	ldr r0, _081223C8 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r0, r8
	lsls r2, r0, #0x04
	subs r0, r2, r0
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x10]
	ldrh r0, [r3, #0x08]
	adds r4, r1, r0
	b _081223FC
_081223C8: .4byte 0x03000FF4
_081223CC:
	ldrb r0, [r3, #0x0A]
	cmp r0, #0x64
	bne _081223EC
	ldr r0, _081223E8 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r4, r8
	lsls r2, r4, #0x04
	subs r0, r2, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x10]
	ldrh r0, [r3, #0x0C]
	adds r4, r1, r0
	b _081223FC
_081223E8: .4byte 0x03000FF4
_081223EC:
	ldr r0, _08122464 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r0, r8
	lsls r2, r0, #0x04
	subs r0, r2, r0
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r4, [r1, #0x10]
_081223FC:
	mov r9, r2
	ldr r0, _08122468 @ =0x000003E7
	cmp r4, r0
	ble _08122406
	adds r4, r0, #0x0
_08122406:
	cmp r4, #0x00
	beq _081224B8
	movs r1, #0x64
	mov r10, r1
	str r1, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	subs r0, #0x04
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x08
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	movs r3, #0x48
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r0, _08122464 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r2, r9
	mov r3, r8
	subs r0, r2, r3
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r0, [r1, #0x12]
	cmp r0, r4
	bge _08122470
	movs r6, #0x40
	movs r4, #0x02
	movs r5, #0x6C
	ldr r1, _0812246C @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	mov r1, r10
	orrs r0, r1
	strh r0, [r7, #0x00]
	strh r6, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r5, r0
	strh r5, [r7, #0x04]
	b _081224B6
	.byte 0x00, 0x00
_08122464: .4byte 0x03000FF4
_08122468: .4byte 0x000003E7
_0812246C: .4byte dword_8202F58 @ =0x08202F58
_08122470:
	cmp r0, r4
	ble _081224A0
	movs r6, #0x40
	movs r4, #0x02
	movs r5, #0x6E
	ldr r1, _0812249C @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	mov r2, r10
	orrs r0, r2
	strh r0, [r7, #0x00]
	strh r6, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r5, r0
	strh r5, [r7, #0x04]
	b _081224B6
	.byte 0x00, 0x00
_0812249C: .4byte dword_8202F58 @ =0x08202F58
_081224A0:
	movs r5, #0x40
	movs r4, #0x6C
	ldr r1, _081224E0 @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	strh r4, [r7, #0x00]
	strh r5, [r7, #0x02]
	ldr r0, _081224E4 @ =0x0000084D
	strh r0, [r7, #0x04]
_081224B6:
	adds r7, #0x08
_081224B8:
	ldr r0, _081224E8 @ =0x083BE67C
	ldr r3, [sp, #0x024]
	ldr r4, [sp, #0x020]
	adds r1, r3, r4
	lsls r1, r1, #0x02
	adds r2, r1, r0
	ldrb r0, [r2, #0x06]
	cmp r0, #0x67
	bne _081224F0
	ldr r0, _081224EC @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r3, r9
	mov r4, r8
	subs r0, r3, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x22]
	ldrh r0, [r2, #0x08]
	adds r4, r1, r0
	b _08122520
_081224E0: .4byte dword_8202F58 @ =0x08202F58
_081224E4: .4byte 0x0000084D
_081224E8: .4byte byte_83BE67C @ =0x083BE67C
_081224EC: .4byte 0x03000FF4
_081224F0:
	ldrb r0, [r2, #0x0A]
	cmp r0, #0x67
	bne _08122510
	ldr r0, _0812250C @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r3, r9
	mov r4, r8
	subs r0, r3, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x22]
	ldrh r0, [r2, #0x0C]
	adds r4, r1, r0
	b _08122520
_0812250C: .4byte 0x03000FF4
_08122510:
	ldr r0, _08122584 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r2, r9
	mov r3, r8
	subs r0, r2, r3
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r4, [r1, #0x22]
_08122520:
	ldr r0, _08122588 @ =0x000003E7
	cmp r4, r0
	ble _08122528
	adds r4, r0, #0x0
_08122528:
	cmp r4, #0x00
	beq _081225D8
	movs r0, #0x64
	mov r10, r0
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	subs r0, #0x04
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x08
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	movs r3, #0xB0
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r0, _08122584 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r2, r9
	mov r3, r8
	subs r0, r2, r3
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r0, [r1, #0x24]
	cmp r0, r4
	bge _08122590
	movs r6, #0xA8
	movs r4, #0x02
	movs r5, #0x6C
	ldr r1, _0812258C @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	mov r1, r10
	orrs r0, r1
	strh r0, [r7, #0x00]
	strh r6, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r5, r0
	strh r5, [r7, #0x04]
	b _081225D6
_08122584: .4byte 0x03000FF4
_08122588: .4byte 0x000003E7
_0812258C: .4byte dword_8202F58 @ =0x08202F58
_08122590:
	cmp r0, r4
	ble _081225C0
	movs r6, #0xA8
	movs r4, #0x02
	movs r5, #0x6E
	ldr r1, _081225BC @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	mov r2, r10
	orrs r0, r2
	strh r0, [r7, #0x00]
	strh r6, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r5, r0
	strh r5, [r7, #0x04]
	b _081225D6
	.byte 0x00, 0x00
_081225BC: .4byte dword_8202F58 @ =0x08202F58
_081225C0:
	movs r5, #0xA8
	movs r4, #0x6C
	ldr r1, _0812260C @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	strh r4, [r7, #0x00]
	strh r5, [r7, #0x02]
	ldr r0, _08122610 @ =0x0000084D
	strh r0, [r7, #0x04]
_081225D6:
	adds r7, #0x08
_081225D8:
	ldr r2, _08122614 @ =0x083BE67C
	ldr r3, [sp, #0x01C]
	lsls r0, r3, #0x02
	adds r0, r0, r3
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x0A]
	ldr r4, [sp, #0x024]
	ldr r3, [sp, #0x020]
	adds r0, r4, r3
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r2, [r0, #0x0A]
	adds r0, r7, #0x0
	bl sub_812290C
	adds r7, r0, #0x0
_081225FA:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0812260C: .4byte dword_8202F58 @ =0x08202F58
_08122610: .4byte 0x0000084D
_08122614: .4byte byte_83BE67C @ =0x083BE67C
