	.syntax unified
	.text

	thumb_func_start sub_8103900
sub_8103900:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	str r0, [sp, #0x024]
	ldr r4, [r0, #0x0C]
	ldr r0, [r4, #0x18]
	ldr r1, _08103A08 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r2, _08103A0C @ =0x03000FD8
	mov r8, r2
	ldr r2, [r2, #0x00]
	movs r3, #0xDA
	lsls r3, r3, #0x02
	adds r7, r2, r3
	ldr r1, [r7, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, #0x03
	movs r3, #0x00
	mov r9, r3
	strh r0, [r1, #0x00]
	movs r0, #0xDC
	lsls r0, r0, #0x02
	adds r6, r2, r0
	ldr r1, [r6, #0x00]
	ldrh r0, [r1, #0x12]
	subs r0, #0x03
	strh r0, [r1, #0x12]
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r5, r2, r1
	ldr r1, [r5, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r3, _08103A10 @ =0x0200001C
	ldrh r0, [r3, #0x00]
	adds r0, #0x03
	strh r0, [r3, #0x00]
	ldr r2, [sp, #0x024]
	ldrh r0, [r2, #0x10]
	subs r0, #0x03
	strh r0, [r2, #0x10]
	movs r1, #0x10
	ldsh r0, [r2, r1]
	adds r2, r0, #0x0
	subs r2, #0x18
	cmp r2, #0x00
	ble _0810396A
	b _08103B3C
_0810396A:
	cmp r2, #0x00
	beq _0810399C
	lsls r1, r2, #0x08
	ldr r0, [r4, #0x18]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldr r1, [r7, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldrh r0, [r1, #0x12]
	subs r0, r0, r2
	strh r0, [r1, #0x12]
	ldr r1, [r5, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	ldrh r0, [r3, #0x00]
	adds r0, r0, r2
	strh r0, [r3, #0x00]
	ldr r1, [sp, #0x024]
	ldrh r0, [r1, #0x10]
	subs r0, r0, r2
	strh r0, [r1, #0x10]
_0810399C:
	mov r0, r9
	ldr r2, [sp, #0x024]
	strh r0, [r2, #0x10]
	strh r0, [r3, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r5, #0x0E
	str r5, [sp, #0x000]
	movs r6, #0x0D
	str r6, [sp, #0x004]
	movs r1, #0x01
	movs r2, #0x08
	movs r3, #0x04
	bl sub_8084E98
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08103A1C
	mov r1, r8
	ldr r0, [r1, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r5, [sp, #0x000]
	str r6, [sp, #0x004]
	ldr r1, _08103A14 @ =0x084FB588
	adds r1, #0x48
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08103A18 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x03
	movs r3, #0x04
	bl sub_8084F28
	b _08103A4E
	.byte 0x00, 0x00
_08103A08: .4byte 0xFFFFFD00
_08103A0C: .4byte 0x03000FD8
_08103A10: .4byte 0x0200001C
_08103A14: .4byte 0x084FB588
_08103A18: .4byte 0x089F808C
_08103A1C:
	mov r3, r8
	ldr r0, [r3, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r5, [sp, #0x000]
	str r6, [sp, #0x004]
	ldr r1, _08103B4C @ =0x084FB588
	adds r1, #0x4A
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08103B50 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x03
	movs r3, #0x04
	bl sub_8084F28
_08103A4E:
	movs r7, #0x00
	movs r2, #0x2A
	str r2, [sp, #0x028]
	movs r3, #0x28
	str r3, [sp, #0x02C]
	movs r0, #0x5D
	str r0, [sp, #0x030]
	movs r1, #0x20
	str r1, [sp, #0x034]
_08103A60:
	ldr r3, _08103B54 @ =0x03000FDC
	ldr r2, [r3, #0x00]
	lsls r3, r7, #0x01
	ldr r1, _08103B58 @ =0x00008E1C
	adds r0, r2, r1
	adds r0, r0, r3
	ldrh r1, [r0, #0x00]
	ldr r0, _08103B5C @ =0x00008E10
	adds r2, r2, r0
	adds r2, r2, r3
	ldrh r2, [r2, #0x00]
	subs r1, r1, r2
	ldr r3, [sp, #0x034]
	str r3, [sp, #0x000]
	ldr r0, [sp, #0x030]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r3, #0x0C
	str r3, [sp, #0x00C]
	movs r0, #0xC0
	str r0, [sp, #0x010]
	ldr r3, [sp, #0x02C]
	str r3, [sp, #0x014]
	movs r0, #0xA8
	str r0, [sp, #0x018]
	ldr r3, [sp, #0x028]
	str r3, [sp, #0x01C]
	str r0, [sp, #0x020]
	ldr r0, [sp, #0x024]
	ldr r3, _08103B60 @ =0x00000999
	bl sub_8102108
	ldr r1, _08103B64 @ =0x03000FD8
	mov r10, r1
	ldr r1, [r1, #0x00]
	lsls r2, r7, #0x02
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r2
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x028]
	adds r0, #0x10
	mov r9, r0
	ldr r1, [sp, #0x02C]
	adds r1, #0x10
	mov r8, r1
	ldr r5, [sp, #0x030]
	adds r5, #0x0C
	ldr r6, [sp, #0x034]
	adds r6, #0x0C
	adds r4, r7, #0x1
	ldr r3, _08103B54 @ =0x03000FDC
	ldr r2, [r3, #0x00]
	lsls r3, r4, #0x01
	ldr r1, _08103B58 @ =0x00008E1C
	adds r0, r2, r1
	adds r0, r0, r3
	ldrh r1, [r0, #0x00]
	ldr r0, _08103B5C @ =0x00008E10
	adds r2, r2, r0
	adds r2, r2, r3
	ldrh r2, [r2, #0x00]
	subs r1, r1, r2
	str r6, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r3, #0x0C
	str r3, [sp, #0x00C]
	movs r0, #0xC0
	str r0, [sp, #0x010]
	mov r3, r8
	str r3, [sp, #0x014]
	movs r0, #0xA8
	str r0, [sp, #0x018]
	mov r3, r9
	str r3, [sp, #0x01C]
	str r0, [sp, #0x020]
	ldr r0, [sp, #0x024]
	ldr r3, _08103B60 @ =0x00000999
	bl sub_8102108
	mov r2, r10
	ldr r1, [r2, #0x00]
	lsls r4, r4, #0x02
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r4
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x028]
	adds r0, #0x20
	str r0, [sp, #0x028]
	ldr r1, [sp, #0x02C]
	adds r1, #0x20
	str r1, [sp, #0x02C]
	ldr r2, [sp, #0x030]
	adds r2, #0x18
	str r2, [sp, #0x030]
	ldr r3, [sp, #0x034]
	adds r3, #0x18
	str r3, [sp, #0x034]
	adds r7, #0x02
	cmp r7, #0x05
	ble _08103A60
	movs r0, #0x00
	ldr r1, [sp, #0x024]
	strh r0, [r1, #0x10]
	ldr r0, _08103B68 @ =0x08106B0D
	str r0, [r1, #0x04]
_08103B3C:
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08103B4C: .4byte 0x084FB588
_08103B50: .4byte 0x089F808C
_08103B54: .4byte 0x03000FDC
_08103B58: .4byte 0x00008E1C
_08103B5C: .4byte 0x00008E10
_08103B60: .4byte 0x00000999
_08103B64: .4byte 0x03000FD8
_08103B68: .4byte sub_8106B0C
