	.syntax unified
	.text

	thumb_func_start sub_81446F8
sub_81446F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x028
	mov r9, r0
	adds r6, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x58
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _08144748 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814474C
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldr r3, [r2, #0x00]
	mov r0, r9
	adds r1, r6, #0x0
	bl _call_via_r3
	b _0814475A
_08144748: .4byte 0x00007FFF
_0814474C:
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r6, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814475A:
	movs r0, #0xA4
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldr r3, [r2, #0x00]
	cmp r3, #0x00
	beq _0814476E
	mov r0, r9
	adds r1, r6, #0x0
	bl _call_via_r3
_0814476E:
	movs r0, #0xBF
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08144782
	b _081448A8
_08144782:
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r6, #0x0C]
	cmp r1, r0
	bne _0814480C
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r1, [r0, #0x00]
	ldr r0, [r6, #0x10]
	cmp r1, r0
	bne _0814480C
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	subs r4, #0xC4
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0814480C
	ldr r2, _081447FC @ =0x083A05EC
	ldr r1, _08144800 @ =0x00000216
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_8047154
	adds r0, r6, #0x0
	movs r1, #0x10
	bl sub_804790C
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _08144804 @ =0x0814494D
	str r0, [r1, #0x00]
	movs r1, #0xA2
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _08144808 @ =0x081459FD
	b _08144890
	.byte 0x00, 0x00
_081447FC: .4byte dword_83A05EC @ =0x083A05EC
_08144800: .4byte 0x00000216
_08144804: .4byte sub_814494C
_08144808: .4byte sub_81459FC
_0814480C:
	ldr r4, _08144868 @ =0x00000213
	adds r0, r6, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1C
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _08144888
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xAC
	lsls r0, r0, #0x01
	add r0, r8
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x16]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	add r2, r8
	strh r0, [r2, #0x00]
	ldrh r0, [r1, #0x16]
	cmp r0, #0x00
	beq _08144878
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _0814486C @ =0x0813939D
	str r0, [r1, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _08144870 @ =0x0813B1E9
	str r0, [r1, #0x00]
	movs r1, #0xA2
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _08144874 @ =0x08145AB1
	b _08144890
_08144868: .4byte 0x00000213
_0814486C: .4byte sub_813939C
_08144870: .4byte sub_813B1E8
_08144874: .4byte sub_8145AB0
_08144878:
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _08144884 @ =0x08145AB1
	b _08144890
	.byte 0x00, 0x00
_08144884: .4byte sub_8145AB0
_08144888:
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _081448A4 @ =0x08145A59
_08144890:
	str r0, [r1, #0x00]
	movs r0, #0xA0
	lsls r0, r0, #0x01
	add r0, r8
	ldr r2, [r0, #0x00]
	mov r0, r9
	adds r1, r6, #0x0
	bl _call_via_r2
	b _08144938
_081448A4: .4byte sub_8145A58
_081448A8:
	movs r0, #0xAC
	lsls r0, r0, #0x01
	add r0, r8
	ldr r7, [r0, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x34
	add r5, sp, #0x024
	mov r0, r9
	adds r1, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081448D2
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r9
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r5, #0x00]
_081448D2:
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x02
	add r0, r9
	ldr r2, [r0, #0x28]
	add r0, sp, #0x014
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x35
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x04]
	adds r4, #0x01
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x08]
	adds r4, #0x01
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x02]
	adds r4, #0x01
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x06]
	adds r4, #0x01
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x0A]
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r4, #0x0A
	ldsh r1, [r0, r4]
	str r1, [sp, #0x000]
	adds r1, r6, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08144938
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _08144948 @ =0x08145A59
	str r0, [r1, #0x00]
_08144938:
	add sp, #0x028
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08144948: .4byte sub_8145A58
