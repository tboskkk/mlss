	.syntax unified
	.text

	thumb_func_start sub_8149C4C
sub_8149C4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r7, #0x0
	adds r0, #0x58
	str r0, [sp, #0x00C]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x010]
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x014]
	movs r3, #0xEB
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08149C8A
	b _08149E00
_08149C8A:
	movs r5, #0xA5
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08149C9E
	b _08149E34
_08149C9E:
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149CB2
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	b _08149CBE
_08149CB2:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08149CBE:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	mov r8, r0
	ldr r2, [sp, #0x00C]
	movs r3, #0xC2
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldr r1, [r0, #0x00]
	movs r4, #0xC4
	lsls r4, r4, #0x01
	adds r0, r2, r4
	ldr r2, [r0, #0x00]
	ldr r5, [sp, #0x00C]
	adds r3, #0x08
	adds r0, r5, r3
	adds r3, #0x04
	adds r4, r5, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	movs r4, #0x01
	str r4, [sp, #0x000]
	movs r5, #0x00
	str r5, [sp, #0x004]
	adds r0, r7, #0x0
	bl sub_8047F60
	mov r0, r8
	ldr r1, [r0, #0x0C]
	ldr r0, [r7, #0x0C]
	subs r1, r1, r0
	mov r9, r1
	mov r2, r8
	ldr r1, [r2, #0x10]
	ldr r0, [r7, #0x10]
	subs r6, r1, r0
	ldr r5, _08149DF4 @ =0x0819832C
	ldr r0, _08149DF8 @ =0x08198220
	subs r5, r5, r0
	ldr r3, _08149DFC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r4, r2, r5
	mov r1, r9
	mov r0, r9
	muls r0, r1
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	bl _call_via_r2
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r4
	mov r10, r0
	ldr r2, [sp, #0x014]
	ldrh r0, [r2, #0x0A]
	lsls r0, r0, #0x08
	mov r3, r8
	ldr r4, [r3, #0x14]
	adds r4, r4, r0
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	subs r4, r4, r0
	movs r1, #0xBC
	lsls r1, r1, #0x01
	ldr r0, [sp, #0x00C]
	adds r1, r0, r1
	str r1, [sp, #0x018]
	ldrh r0, [r1, #0x00]
	ldr r2, [sp, #0x010]
	adds r0, r0, r2
	ldrb r0, [r0, #0x10]
	mov r8, r0
	ldr r3, _08149DFC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	mov r0, r9
	mov r1, r10
	bl _call_via_r2
	mov r1, r8
	muls r1, r0
	mov r9, r1
	ldr r3, _08149DFC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	adds r0, r6, #0x0
	mov r1, r10
	bl _call_via_r2
	mov r6, r8
	muls r6, r0
	ldr r5, [sp, #0x018]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x010]
	adds r0, r0, r1
	ldrh r0, [r0, #0x08]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	movs r2, #0x01
	strb r2, [r0, #0x00]
	adds r0, r7, #0x0
	mov r1, r9
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	bl sub_813A44C
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r4, r7, r3
	ldr r0, [r4, #0x00]
	movs r5, #0x00
	str r5, [sp, #0x000]
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	ldr r2, [sp, #0x018]
	ldrh r0, [r2, #0x00]
	ldr r3, [sp, #0x010]
	adds r0, r0, r3
	ldrb r0, [r0, #0x04]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r4, #0x83
	lsls r4, r4, #0x02
	adds r2, r7, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r5, [sp, #0x00C]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08149E34
	.byte 0x00, 0x00
_08149DF4: .4byte 0x0819832C
_08149DF8: .4byte 0x08198220
_08149DFC: .4byte 0x03001038
_08149E00:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x2C
	ldsh r0, [r0, r2]
	cmp r0, #0xFF
	ble _08149E24
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_08149E24:
	adds r0, r7, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08149E34
	ldr r0, _08149E44 @ =0x08149E49
	str r0, [r5, #0x00]
_08149E34:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08149E44: .4byte sub_8149E48
