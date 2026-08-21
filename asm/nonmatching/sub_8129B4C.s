	.syntax unified
	.text

	thumb_func_start sub_8129B4C
sub_8129B4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r0, #0xB1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08129B64
	b _08129C60
_08129B64:
	ldr r7, _08129BA8 @ =0x03001038
	ldr r0, _08129BAC @ =0x0819832C
	ldr r1, _08129BB0 @ =0x08198220
	mov r10, r1
	subs r4, r0, r1
	ldr r3, [r7, #0x00]
	adds r3, r3, r4
	ldr r2, [r5, #0x5C]
	ldr r0, _08129BB4 @ =0x03000D40
	mov r8, r0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	movs r1, #0xE0
	lsls r1, r1, #0x03
	adds r2, r2, r1
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	ldr r1, _08129BB8 @ =0x00034BC0
	bl _call_via_r3
	adds r1, r0, #0x0
	cmp r1, #0x63
	bls _08129BBC
	movs r7, #0x3B
	movs r2, #0x63
	mov r9, r2
	b _08129C04
	.byte 0x00, 0x00
_08129BA8: .4byte 0x03001038
_08129BAC: .4byte 0x0819832C
_08129BB0: .4byte 0x08198220
_08129BB4: .4byte 0x03000D40
_08129BB8: .4byte 0x00034BC0
_08129BBC:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	ldr r3, [r7, #0x00]
	adds r3, r3, r4
	ldr r2, [r5, #0x5C]
	mov r0, r8
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	movs r1, #0xE0
	lsls r1, r1, #0x03
	adds r2, r2, r1
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	movs r1, #0xE1
	lsls r1, r1, #0x04
	bl _call_via_r3
	adds r1, r0, #0x0
	ldr r0, _08129C58 @ =0x08198350
	mov r2, r10
	subs r0, r0, r2
	ldr r2, [r7, #0x00]
	adds r2, r2, r0
	adds r0, r1, #0x0
	movs r1, #0x3C
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08129C04:
	ldr r2, [r5, #0x5C]
	ldr r4, _08129C5C @ =0x03000D40
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r2, r2, r0
	adds r2, #0xB8
	ldrh r3, [r2, #0x00]
	adds r0, r6, #0x0
	mov r1, r9
	adds r2, r7, #0x0
	bl sub_8121F1C
	adds r6, r0, #0x0
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
	adds r0, #0xAC
	ldrb r1, [r0, #0x00]
	lsrs r2, r2, #0x1E
	lsls r0, r2, #0x03
	subs r0, r0, r2
	lsls r0, r0, #0x05
	subs r0, r0, r2
	lsls r0, r0, #0x03
	adds r3, r3, r0
	adds r3, #0xB4
	ldrb r2, [r3, #0x00]
	b _08129C80
	.byte 0x00, 0x00
_08129C58: .4byte 0x08198350
_08129C5C: .4byte 0x03000D40
_08129C60:
	adds r0, r5, #0x0
	adds r0, #0x86
	ldrb r1, [r0, #0x00]
	adds r0, #0x01
	ldrb r2, [r0, #0x00]
	subs r0, #0x07
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_8121F1C
	adds r6, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, #0x08
	ldrb r2, [r0, #0x00]
_08129C80:
	adds r0, r6, #0x0
	bl sub_8122098
	adds r6, r0, #0x0
	adds r0, r6, #0x0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
