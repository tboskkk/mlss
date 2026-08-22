	.syntax unified
	.text

	thumb_func_start sub_8104A84
sub_8104A84:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x024
	adds r5, r0, #0x0
	ldr r0, _08104B20 @ =0x03000FD8
	mov r9, r0
	ldr r0, [r0, #0x00]
	ldr r1, _08104B24 @ =0x00000342
	adds r0, r0, r1
	ldrb r6, [r0, #0x00]
	lsls r7, r6, #0x01
	adds r0, r7, #0x5
	lsls r0, r0, #0x03
	mov r8, r0
	movs r2, #0x16
	ldsh r4, [r5, r2]
	adds r0, r4, #0x0
	movs r1, #0xB8
	bl sub_810D260
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	mov r2, r8
	movs r3, #0x00
	bl sub_810D34C
	ldrh r0, [r5, #0x10]
	adds r0, #0x01
	movs r3, #0x00
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x09
	bgt _08104ACE
	b _08104C54
_08104ACE:
	ldrh r0, [r5, #0x16]
	movs r2, #0x0F
	ands r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x01
	adds r2, r2, r1
	strh r2, [r5, #0x16]
	mov r1, r9
	ldr r0, [r1, #0x00]
	lsls r1, r6, #0x02
	movs r2, #0xE0
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r3, [r0, #0x04]
	movs r2, #0x16
	ldsh r0, [r5, r2]
	mov r12, r0
	ldr r0, _08104B28 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r2, _08104B2C @ =0x00008E1C
	adds r0, r0, r2
	adds r0, r0, r7
	ldrh r2, [r0, #0x00]
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	movs r0, #0x20
	str r0, [sp, #0x008]
	movs r0, #0x0C
	str r0, [sp, #0x00C]
	movs r3, #0x16
	ldsh r0, [r5, r3]
	adds r4, r1, #0x0
	cmp r0, #0x09
	bgt _08104B30
	movs r0, #0xBC
	b _08104B32
_08104B20: .4byte 0x03000FD8
_08104B24: .4byte 0x00000342
_08104B28: .4byte 0x03000FDC
_08104B2C: .4byte 0x00008E1C
_08104B30:
	movs r0, #0xC0
_08104B32:
	str r0, [sp, #0x010]
	mov r0, r8
	str r0, [sp, #0x014]
	movs r1, #0xA8
	str r1, [sp, #0x018]
	lsls r0, r6, #0x04
	adds r0, #0x2A
	str r0, [sp, #0x01C]
	str r1, [sp, #0x020]
	adds r0, r5, #0x0
	mov r1, r12
	ldr r3, _08104B80 @ =0x00000999
	bl sub_8102108
	ldr r1, _08104B84 @ =0x03000FD8
	ldr r2, [r1, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r1, r2, r3
	adds r1, r1, r4
	str r0, [r1, #0x00]
	ldr r3, _08104B88 @ =0x03000FF4
	movs r0, #0x12
	ldsh r1, [r5, r0]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	ldr r1, [r3, #0x00]
	adds r3, r1, r0
	ldr r1, _08104B8C @ =0x00000342
	adds r2, r2, r1
	ldrb r0, [r2, #0x00]
	cmp r0, #0x05
	bhi _08104C4C
	lsls r0, r0, #0x02
	ldr r1, _08104B90 @ =lbl_08104B94
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08104B80: .4byte 0x00000999
_08104B84: .4byte 0x03000FD8
_08104B88: .4byte 0x03000FF4
_08104B8C: .4byte 0x00000342
_08104B90: .4byte lbl_08104B94
lbl_08104B94:
	.4byte _08104BAC
	.4byte _08104BC8
	.4byte _08104BE4
	.4byte _08104C00
	.4byte _08104C1C
	.4byte _08104C38
_08104BAC:
	ldrh r0, [r5, #22]
	ldrh r2, [r3, #16]
	adds r0, r0, r2
	strh r0, [r3, #16]
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldr r1, [pc, #8] @ (0x8104bc4)
	cmp r0, r1
	bls.n _08104C4C
	strh r1, [r3, #16]
	b.n _08104C4C
	movs r0, r0
	lsls r7, r4, #15
	movs r0, r0
_08104BC8:
	ldrh r0, [r5, #22]
	ldrh r1, [r3, #22]
	adds r0, r0, r1
	strh r0, [r3, #22]
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldr r1, [pc, #8] @ (0x8104be0)
	cmp r0, r1
	bls.n _08104C4C
	strh r1, [r3, #22]
	b.n _08104C4C
	movs r0, r0
	lsls r7, r4, #15
	movs r0, r0
_08104BE4:
	ldrh r0, [r5, #22]
	ldrh r2, [r3, #26]
	adds r0, r0, r2
	strh r0, [r3, #26]
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldr r1, [pc, #8] @ (0x8104bfc)
	cmp r0, r1
	bls.n _08104C4C
	strh r1, [r3, #26]
	b.n _08104C4C
	movs r0, r0
	lsls r7, r4, #15
	movs r0, r0
_08104C00:
	ldrh r0, [r5, #22]
	ldrh r1, [r3, #34] @ 0x22
	adds r0, r0, r1
	strh r0, [r3, #34] @ 0x22
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldr r1, [pc, #8] @ (0x8104c18)
	cmp r0, r1
	bls.n _08104C4C
	strh r1, [r3, #34] @ 0x22
	b.n _08104C4C
	movs r0, r0
	lsls r7, r4, #15
	movs r0, r0
_08104C1C:
	ldrh r0, [r5, #22]
	ldrh r2, [r3, #30]
	adds r0, r0, r2
	strh r0, [r3, #30]
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldr r1, [pc, #8] @ (0x8104c34)
	cmp r0, r1
	bls.n _08104C4C
	strh r1, [r3, #30]
	b.n _08104C4C
	movs r0, r0
	lsls r7, r4, #15
	movs r0, r0
_08104C38:
	ldrh r0, [r5, #22]
	ldrh r1, [r3, #38] @ 0x26
	adds r0, r0, r1
	strh r0, [r3, #38] @ 0x26
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldr r1, [pc, #28] @ (0x8104c64)
	cmp r0, r1
	bls.n _08104C4C
	strh r1, [r3, #38] @ 0x26
_08104C4C:
	movs r0, #0x01
	strh r0, [r5, #0x10]
	ldr r0, _08104C68 @ =0x08104C6D
	str r0, [r5, #0x04]
_08104C54:
	add sp, #0x024
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0xE7, 0x03, 0x00, 0x00
_08104C68: .4byte sub_8104C6C
