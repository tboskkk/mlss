	.syntax unified
	.text

	thumb_func_start sub_8104350
sub_8104350:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x170
	mov r9, r0
	str r1, [sp, #0x14C]
	ldr r6, [sp, #0x190]
	ldr r4, [sp, #0x194]
	lsls r0, r6, #0x01
	adds r2, r0, r2
	ldrh r2, [r2, #0x00]
	str r2, [sp, #0x150]
	adds r0, r0, r3
	ldrh r7, [r0, #0x00]
	movs r0, #0x00
	mov r8, r0
	ldr r1, _08104394 @ =0x08200F7C
	movs r2, #0xA0
	lsls r2, r2, #0x01
	mov r0, sp
	bl memcpy
	cmp r4, #0x00
	bne _081043CC
	cmp r6, #0x05
	bhi _08104430
	lsls r0, r6, #0x02
	ldr r1, _08104398 @ =0x0810439C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08104394: .4byte dword_8200F7C @ =0x08200F7C
_08104398: .4byte dword_810439C @ =0x0810439C
	.byte 0xB4, 0x43, 0x10, 0x08, 0x1C, 0x44, 0x10, 0x08, 0xBA, 0x43, 0x10, 0x08, 0xC4, 0x43, 0x10, 0x08
	.byte 0x1C, 0x44, 0x10, 0x08, 0x28, 0x44, 0x10, 0x08, 0xA6, 0x25, 0x6D, 0x00, 0x1F, 0xE0, 0x01, 0x48
	.byte 0x36, 0xE0, 0x00, 0x00, 0x33, 0x01, 0x00, 0x00, 0x00, 0x49, 0x24, 0xE0, 0x33, 0x01, 0x00, 0x00
_081043CC:
	cmp r6, #0x05
	bhi _08104430
	lsls r0, r6, #0x02
	ldr r1, _081043DC @ =0x081043E0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_081043DC: .4byte dword_81043E0 @ =0x081043E0
	.byte 0xF8, 0x43, 0x10, 0x08, 0x1C, 0x44, 0x10, 0x08, 0x08, 0x44, 0x10, 0x08, 0x10, 0x44, 0x10, 0x08
	.byte 0x1C, 0x44, 0x10, 0x08, 0x28, 0x44, 0x10, 0x08, 0x01, 0x4D, 0x02, 0x49, 0x55, 0x91, 0x17, 0xE0
	.byte 0x19, 0x01, 0x00, 0x00, 0x33, 0x01, 0x00, 0x00, 0x00, 0x48, 0x0F, 0xE0, 0x33, 0x01, 0x00, 0x00
	.byte 0x01, 0x49, 0x55, 0x91, 0x0D, 0x1C, 0x0B, 0xE0, 0x19, 0x01, 0x00, 0x00, 0x01, 0x4A, 0x55, 0x92
	.byte 0x15, 0x1C, 0x05, 0xE0, 0x33, 0x01, 0x00, 0x00, 0xA6, 0x20, 0x40, 0x00, 0x55, 0x90, 0x05, 0x1C
_08104430:
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, sp
	mov r10, r1
	adds r0, r7, #0x0
	bl sub_81DB964
	str r0, [sp, #0x158]
	str r1, [sp, #0x15C]
	ldr r3, _08104770 @ =0x00000000
	ldr r2, _0810476C @ =0x3FE80000
	bl sub_81DB240
	ldr r2, _08104774 @ =0x40700000
	ldr r3, _08104778 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r0, #0x0
	ldr r2, [sp, #0x14C]
	adds r0, r2, r7
	muls r0, r5
	bl sub_81DB964
	str r0, [sp, #0x160]
	str r1, [sp, #0x164]
	ldr r2, _0810477C @ =0x3FD00000
	ldr r3, _08104780 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r4, r0
	mov r0, r10
	str r4, [r0, #0x00]
	ldr r5, _08104784 @ =0x3FE00000
	ldr r6, _08104788 @ =0x00000000
	ldr r0, [sp, #0x158]
	ldr r1, [sp, #0x15C]
	adds r3, r6, #0x0
	adds r2, r5, #0x0
	bl sub_81DB240
	ldr r2, _08104774 @ =0x40700000
	ldr r3, _08104778 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r0, #0x0
	ldr r0, [sp, #0x160]
	ldr r1, [sp, #0x164]
	adds r3, r6, #0x0
	adds r2, r5, #0x0
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r4, r0
	mov r1, r10
	str r4, [r1, #0x04]
	ldr r0, [sp, #0x158]
	ldr r1, [sp, #0x15C]
	ldr r2, _0810477C @ =0x3FD00000
	ldr r3, _08104780 @ =0x00000000
	bl sub_81DB240
	ldr r2, _08104774 @ =0x40700000
	ldr r3, _08104778 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r0, #0x0
	ldr r0, [sp, #0x160]
	ldr r1, [sp, #0x164]
	ldr r3, _08104770 @ =0x00000000
	ldr r2, _0810476C @ =0x3FE80000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r4, r0
	mov r2, r10
	str r4, [r2, #0x08]
	movs r7, #0x00
	ldr r0, [sp, #0x150]
	lsls r1, r0, #0x08
	add r0, sp, #0x140
	ldr r0, [r0, #0x00]
	ldr r2, [sp, #0x14C]
	lsls r3, r2, #0x08
	cmp r1, r0
	blt _08104500
	adds r2, r1, #0x0
	mov r1, r10
_081044F2:
	adds r1, #0x04
	adds r7, #0x01
	cmp r7, #0x02
	bgt _08104500
	ldr r0, [r1, #0x00]
	cmp r2, r0
	bge _081044F2
_08104500:
	adds r0, r3, #0x0
	movs r1, #0x05
	bl __divsi3
	cmp r0, #0xFF
	bgt _08104510
	movs r0, #0x80
	lsls r0, r0, #0x01
_08104510:
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _0810451A
	adds r0, #0xFF
_0810451A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x154]
	cmp r7, #0x01
	bne _08104536
	ldr r2, _0810478C @ =0xFFFFFF00
	adds r0, r0, r2
	lsls r0, r0, #0x01
	movs r1, #0x03
	bl __divsi3
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r0, r1
	str r1, [sp, #0x154]
_08104536:
	cmp r7, #0x02
	bne _0810454E
	ldr r2, [sp, #0x154]
	ldr r1, _0810478C @ =0xFFFFFF00
	adds r0, r2, r1
	movs r1, #0x03
	bl __divsi3
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r2, r0, r2
	str r2, [sp, #0x154]
_0810454E:
	cmp r7, #0x03
	bne _08104558
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x154]
_08104558:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r1, r0, #0x02
	adds r1, r1, r0
	mov r10, r1
	lsls r1, r7, #0x02
	str r1, [sp, #0x168]
	mov r5, r9
	mov r2, r10
	lsls r1, r2, #0x02
	ldr r2, [sp, #0x168]
	adds r0, r2, r7
	lsls r0, r0, #0x04
	movs r2, #0x04
	add r0, sp
	adds r6, r1, r0
	ldr r0, [r6, #0x00]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _0810458E
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_0810458E:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	mov r1, r9
	strb r0, [r1, #0x00]
	ldrb r4, [r1, #0x00]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r4, r0
	bgt _081045AE
	cmp r4, #0x05
	bls _081045C6
_081045AE:
	movs r1, #0x01
	add r8, r1
	cmp r4, r0
	ble _081045BA
	mov r1, r9
	strb r0, [r1, #0x00]
_081045BA:
	mov r1, r9
	ldrb r0, [r1, #0x00]
	cmp r0, #0x05
	bls _081045C6
	movs r0, #0x05
	strb r0, [r1, #0x00]
_081045C6:
	adds r5, #0x01
	adds r6, #0x04
	subs r2, #0x01
	cmp r2, #0x00
	blt _0810465A
_081045D0:
	ldr r0, [r6, #0x00]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _081045DE
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_081045DE:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	strb r0, [r5, #0x00]
	ldrb r4, [r5, #0x00]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r4, r0
	bgt _081045FC
	cmp r4, #0x05
	bls _08104610
_081045FC:
	movs r1, #0x01
	add r8, r1
	cmp r4, r0
	ble _08104606
	strb r0, [r5, #0x00]
_08104606:
	ldrb r0, [r5, #0x00]
	cmp r0, #0x05
	bls _08104610
	movs r0, #0x05
	strb r0, [r5, #0x00]
_08104610:
	ldr r0, [r6, #0x04]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _0810461E
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_0810461E:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	strb r0, [r5, #0x01]
	ldrb r4, [r5, #0x01]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r4, r0
	bgt _0810463C
	cmp r4, #0x05
	bls _08104650
_0810463C:
	movs r1, #0x01
	add r8, r1
	cmp r4, r0
	ble _08104646
	strb r0, [r5, #0x01]
_08104646:
	ldrb r0, [r5, #0x01]
	cmp r0, #0x05
	bls _08104650
	movs r0, #0x05
	strb r0, [r5, #0x01]
_08104650:
	adds r5, #0x02
	adds r6, #0x08
	subs r2, #0x02
	cmp r2, #0x00
	bge _081045D0
_0810465A:
	mov r4, r10
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r1, r0, #0x02
	adds r1, r1, r0
	mov r10, r1
	cmp r4, r10
	bne _08104684
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r1, r0, #0x02
	adds r1, r1, r0
	mov r10, r1
_08104684:
	mov r4, r9
	adds r4, #0x05
	mov r2, r10
	lsls r1, r2, #0x02
	ldr r2, [sp, #0x168]
	adds r0, r2, r7
	lsls r0, r0, #0x04
	movs r2, #0x04
	add r0, sp
	adds r6, r1, r0
	ldr r0, [r6, #0x00]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _081046A6
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_081046A6:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	mov r1, r9
	strb r0, [r1, #0x05]
	ldrb r5, [r1, #0x05]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r5, r0
	bgt _081046C6
	cmp r5, #0x05
	bls _081046DE
_081046C6:
	movs r1, #0x01
	add r8, r1
	cmp r5, r0
	ble _081046D2
	mov r1, r9
	strb r0, [r1, #0x05]
_081046D2:
	mov r1, r9
	ldrb r0, [r1, #0x05]
	cmp r0, #0x05
	bls _081046DE
	movs r0, #0x05
	strb r0, [r1, #0x05]
_081046DE:
	adds r4, #0x01
	adds r6, #0x04
	subs r2, #0x01
	cmp r2, #0x00
	blt _0810479C
_081046E8:
	ldr r0, [r6, #0x00]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _081046F6
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_081046F6:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldrb r5, [r4, #0x00]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r5, r0
	bgt _08104714
	cmp r5, #0x05
	bls _08104728
_08104714:
	movs r1, #0x01
	add r8, r1
	cmp r5, r0
	ble _0810471E
	strb r0, [r4, #0x00]
_0810471E:
	ldrb r0, [r4, #0x00]
	cmp r0, #0x05
	bls _08104728
	movs r0, #0x05
	strb r0, [r4, #0x00]
_08104728:
	ldr r0, [r6, #0x04]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _08104736
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_08104736:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	strb r0, [r4, #0x01]
	ldrb r5, [r4, #0x01]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r5, r0
	bgt _08104754
	cmp r5, #0x05
	bls _08104768
_08104754:
	movs r1, #0x01
	add r8, r1
	cmp r5, r0
	ble _0810475E
	strb r0, [r4, #0x01]
_0810475E:
	ldrb r0, [r4, #0x01]
	cmp r0, #0x05
	bls _08104768
	movs r0, #0x05
	strb r0, [r4, #0x01]
_08104768:
	adds r4, #0x02
	b _08104794
_0810476C: .4byte 0x3FE80000
_08104770: .4byte 0x00000000
_08104774: .4byte 0x40700000
_08104778: .4byte 0x00000000
_0810477C: .4byte 0x3FD00000
_08104780: .4byte 0x00000000
_08104784: .4byte 0x3FE00000
_08104788: .4byte 0x00000000
_0810478C: .4byte 0xFFFFFF00
_08104790: .4byte 0x000003FF
_08104794:
	adds r6, #0x08
	subs r2, #0x02
	cmp r2, #0x00
	bge _081046E8
_0810479C:
	mov r2, r8
	cmp r2, #0x03
	ble _081047EE
	lsrs r0, r2, #0x1F
	add r0, r8
	asrs r0, r0, #0x01
	mov r8, r0
	cmp r0, #0x00
	ble _081047EE
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	bl __divsi3
	adds r5, r0, #0x3
_081047B8:
	movs r7, #0x00
	mov r4, r8
	subs r4, #0x01
_081047BE:
	adds r7, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x0A
	bl sub_81DD77C
	adds r2, r0, #0x0
	mov r0, r9
	adds r1, r0, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x05
	beq _081047DC
	cmp r0, r5
	bne _081047E4
_081047DC:
	ldrb r0, [r1, #0x00]
	lsrs r0, r0, #0x01
	strb r0, [r1, #0x00]
	movs r7, #0x64
_081047E4:
	cmp r7, #0x1F
	ble _081047BE
	mov r8, r4
	cmp r4, #0x00
	bgt _081047B8
_081047EE:
	add sp, #0x170
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
