	.syntax unified
	.text

	thumb_func_start sub_814F06C
sub_814F06C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r9, r0
	adds r5, r1, #0x0
	str r2, [sp, #0x010]
	adds r0, r5, #0x0
	adds r0, #0x58
	str r0, [sp, #0x014]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r5
	mov r10, r1
	mov r0, r9
	add r1, sp, #0x00C
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814F09C
	b _0814F24C
_0814F09C:
	add r0, sp, #0x00C
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	add r0, r9
	ldr r4, [r0, #0x28]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_8150270
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814F0B6
	b _0814F24C
_0814F0B6:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r1, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _0814F174
	ldr r2, _0814F104 @ =0x03001038
	ldr r0, _0814F108 @ =0x0819832C
	ldr r1, _0814F10C @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	mov r8, r1
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814F110
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _0814F114
_0814F104: .4byte 0x03001038
_0814F108: .4byte 0x0819832C
_0814F10C: .4byte 0x08198220
_0814F110:
	movs r1, #0x01
	negs r1, r1
_0814F114:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r8
	cmp r0, #0x01
	beq _0814F14C
	cmp r0, #0x01
	bgt _0814F12A
	cmp r0, #0x00
	beq _0814F134
	b _0814F1F8
_0814F12A:
	cmp r0, #0x02
	beq _0814F160
	cmp r0, #0x03
	beq _0814F168
	b _0814F1F8
_0814F134:
	ldr r0, [r5, #0x0C]
	ldr r1, _0814F144 @ =0xFFFFFA00
	adds r7, r0, r1
	ldr r0, [r5, #0x10]
	ldr r2, _0814F148 @ =0xFFFFEB00
	adds r6, r0, r2
	b _0814F1F8
	.byte 0x00, 0x00
_0814F144: .4byte 0xFFFFFA00
_0814F148: .4byte 0xFFFFEB00
_0814F14C:
	ldr r0, [r5, #0x0C]
	movs r1, #0x90
	lsls r1, r1, #0x05
	adds r7, r0, r1
	ldr r0, [r5, #0x10]
	ldr r2, _0814F15C @ =0xFFFFFA00
	adds r6, r0, r2
	b _0814F1F8
_0814F15C: .4byte 0xFFFFFA00
_0814F160:
	ldr r0, [r5, #0x0C]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	b _0814F1F4
_0814F168:
	ldr r0, [r5, #0x0C]
	ldr r2, _0814F170 @ =0xFFFFEE00
	adds r7, r0, r2
	b _0814F1F6
_0814F170: .4byte 0xFFFFEE00
_0814F174:
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814F1A0
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _0814F1A4
_0814F1A0:
	movs r1, #0x01
	negs r1, r1
_0814F1A4:
	cmp r1, #0x01
	beq _0814F1D4
	cmp r1, #0x01
	bgt _0814F1B2
	cmp r1, #0x00
	beq _0814F1BC
	b _0814F1F8
_0814F1B2:
	cmp r1, #0x02
	beq _0814F1DE
	cmp r1, #0x03
	beq _0814F1F0
	b _0814F1F8
_0814F1BC:
	ldr r0, [r5, #0x0C]
	ldr r2, _0814F1CC @ =0xFFFFFA00
	adds r7, r0, r2
	ldr r0, [r5, #0x10]
	ldr r1, _0814F1D0 @ =0xFFFFEB00
	adds r6, r0, r1
	b _0814F1F8
	.byte 0x00, 0x00
_0814F1CC: .4byte 0xFFFFFA00
_0814F1D0: .4byte 0xFFFFEB00
_0814F1D4:
	ldr r0, [r5, #0x0C]
	movs r2, #0x90
	lsls r2, r2, #0x05
	adds r7, r0, r2
	b _0814F1F6
_0814F1DE:
	ldr r0, [r5, #0x0C]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r7, r0, r1
	ldr r0, [r5, #0x10]
	movs r2, #0xA0
	lsls r2, r2, #0x04
	adds r6, r0, r2
	b _0814F1F8
_0814F1F0:
	ldr r0, [r5, #0x0C]
	ldr r1, _0814F244 @ =0xFFFFEE00
_0814F1F4:
	adds r7, r0, r1
_0814F1F6:
	ldr r6, [r5, #0x10]
_0814F1F8:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r2, #0x44
	adds r1, r5, r2
	ldr r1, [r1, #0x00]
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	mov r0, r9
	adds r2, r7, #0x0
	adds r3, r6, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0814F24C
	mov r0, r9
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x01
	bl sub_814FDEC
	ldr r1, [sp, #0x014]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r0, r1, r2
	strh r4, [r0, #0x00]
	ldr r0, _0814F248 @ =0x0814F299
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
	b _0814F286
_0814F244: .4byte 0xFFFFEE00
_0814F248: .4byte sub_814F298
_0814F24C:
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814F286
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r4, [r0, #0x30]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r10
	movs r1, #0x00
	ldsh r2, [r0, r1]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_813A5C8
_0814F286:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
