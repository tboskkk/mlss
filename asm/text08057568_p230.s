	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80775A4
sub_80775A4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077602
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080775FE
	ldr r5, _0807760C @ =0x000024E0
_080775CA:
	ldr r3, [r4, #0x30]
	ldr r1, [r3, #0x38]
	cmp r1, #0x00
	bge _080775D4
	adds r1, #0xFF
_080775D4:
	asrs r1, r1, #0x08
	ldr r2, [r3, #0x3C]
	cmp r2, #0x00
	bge _080775DE
	adds r2, #0xFF
_080775DE:
	asrs r2, r2, #0x08
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _080775E8
	adds r3, #0xFF
_080775E8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_80DF024
	ldr r0, [r4, #0x30]
	bl sub_807C298
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _080775CA
_080775FE:
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08077602:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807760C: .4byte 0x000024E0
	thumb_func_start sub_8077610
sub_8077610:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077658
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077636
	adds r1, #0xFF
_08077636:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077640
	adds r2, #0xFF
_08077640:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807764A
	adds r3, #0xFF
_0807764A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077660 @ =0x000024FB
	bl sub_80DF024
	ldr r0, _08077664 @ =0x08076415
	str r0, [r4, #0x4C]
_08077658:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08077660: .4byte 0x000024FB
_08077664: .4byte sub_8076414
	thumb_func_start sub_8077668
sub_8077668:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077680
	adds r1, #0xFF
_08077680:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807768A
	adds r2, #0xFF
_0807768A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077694
	adds r3, #0xFF
_08077694:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080776AC @ =0x000024BA
	bl sub_80DF024
	ldr r0, _080776B0 @ =0x080761E9
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080776AC: .4byte 0x000024BA
_080776B0: .4byte sub_80761E8
	thumb_func_start sub_80776B4
sub_80776B4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080776FA
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	strh r1, [r0, #0x00]
	movs r0, #0x32
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x14
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	str r3, [r0, #0x00]
	adds r1, #0x12
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r0, _08077700 @ =0x08076C15
	str r0, [r4, #0x4C]
_080776FA:
	pop {r4}
	pop {r0}
	bx r0
_08077700: .4byte sub_8076C14
	thumb_func_start sub_8077704
sub_8077704:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807776A
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807776A
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x89
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077744
	adds r1, #0xFF
_08077744:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807774E
	adds r2, #0xFF
_0807774E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077758
	adds r3, #0xFF
_08077758:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077774 @ =0x00002983
	bl sub_80DF024
	movs r0, #0x3C
	strh r0, [r5, #0x00]
	ldr r0, _08077778 @ =0x0807777D
	str r0, [r4, #0x4C]
_0807776A:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08077774: .4byte 0x00002983
_08077778: .4byte sub_807777C
	thumb_func_start sub_807777C
sub_807777C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807779E
	adds r0, r7, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0807779E:
	adds r1, r7, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	movs r2, #0x00
	mov r12, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080778A4
	movs r0, #0x20
	strh r0, [r1, #0x00]
	ldr r0, _080778B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r3, [r0, #0x74]
	adds r6, r3, #0x0
	adds r6, #0x08
	adds r2, #0x7E
	ldrb r4, [r2, #0x00]
	movs r1, #0x7F
	adds r0, r1, #0x0
	ands r0, r4
	strb r0, [r2, #0x00]
	adds r3, #0x7E
	ldrb r0, [r3, #0x00]
	ands r1, r0
	strb r1, [r3, #0x00]
	ldr r1, _080778B4 @ =0x03000ED4
	ldr r0, [r5, #0x4C]
	str r0, [r1, #0x00]
	ldr r1, _080778B8 @ =0x03000ED8
	ldr r0, [r6, #0x4C]
	str r0, [r1, #0x00]
	ldr r1, [r5, #0x08]
	ldrb r0, [r1, #0x12]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x12]
	ldr r1, [r6, #0x08]
	ldrb r0, [r1, #0x12]
	orrs r0, r2
	strb r0, [r1, #0x12]
	ldr r1, _080778BC @ =0x08079789
	str r1, [r5, #0x4C]
	str r1, [r6, #0x4C]
	ldr r3, _080778C0 @ =0x03000F5C
	mov r0, r12
	strb r0, [r3, #0x00]
	ldr r0, _080778C4 @ =0x03000F5D
	mov r2, r12
	strb r2, [r0, #0x00]
	ldr r2, [r5, #0x30]
	movs r5, #0xAE
	adds r5, r5, r7
	mov r8, r5
	cmp r2, #0x00
	beq _08077842
	movs r0, #0x10
	mov r12, r0
	ldr r5, _080778C8 @ =0x03000EDC
	mov r9, r5
	adds r4, r1, #0x0
_08077820:
	ldr r1, [r2, #0x08]
	ldrb r0, [r1, #0x12]
	mov r5, r12
	orrs r0, r5
	strb r0, [r1, #0x12]
	ldrb r0, [r3, #0x00]
	adds r1, r0, #0x1
	strb r1, [r3, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, r9
	ldr r1, [r2, #0x4C]
	str r1, [r0, #0x00]
	str r4, [r2, #0x4C]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _08077820
_08077842:
	ldr r2, [r6, #0x30]
	cmp r2, #0x00
	beq _08077870
	movs r6, #0x10
	ldr r5, _080778CC @ =0x03000F1C
	ldr r3, _080778C4 @ =0x03000F5D
	ldr r4, _080778BC @ =0x08079789
_08077850:
	ldr r1, [r2, #0x08]
	ldrb r0, [r1, #0x12]
	orrs r0, r6
	strb r0, [r1, #0x12]
	ldrb r0, [r3, #0x00]
	adds r1, r0, #0x1
	strb r1, [r3, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r1, [r2, #0x4C]
	str r1, [r0, #0x00]
	str r4, [r2, #0x4C]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _08077850
_08077870:
	movs r0, #0x01
	movs r1, #0x00
	movs r2, #0x00
	bl sub_80193B4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	ldr r0, _080778B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r2, #0xEE
	lsls r2, r2, #0x03
	adds r0, r0, r2
	movs r1, #0x01
	strb r1, [r0, #0x00]
	movs r0, #0x0A
	mov r5, r8
	strh r0, [r5, #0x00]
	ldr r0, _080778D0 @ =0x080778D5
	str r0, [r7, #0x4C]
_080778A4:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080778B0: .4byte 0x03000FD8
_080778B4: .4byte 0x03000ED4
_080778B8: .4byte 0x03000ED8
_080778BC: .4byte 0x08079789
_080778C0: .4byte 0x03000F5C
_080778C4: .4byte 0x03000F5D
_080778C8: .4byte 0x03000EDC
_080778CC: .4byte 0x03000F1C
_080778D0: .4byte sub_80778D4
	thumb_func_start sub_80778D4
sub_80778D4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080778F6
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	movs r0, #0x0A
	strh r0, [r4, #0x00]
_080778F6:
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807791A
	adds r0, r5, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x64
	strh r0, [r4, #0x00]
	ldr r0, _08077920 @ =0x08077925
	str r0, [r5, #0x4C]
_0807791A:
	pop {r4, r5}
	pop {r0}
	bx r0
_08077920: .4byte sub_8077924
	thumb_func_start sub_8077924
sub_8077924:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	mov r9, r0
	mov r4, r9
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08077950
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	movs r0, #0x0A
	strh r0, [r4, #0x00]
_08077950:
	mov r1, r9
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	movs r2, #0x00
	mov r8, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08077966
	b _08077E96
_08077966:
	mov r0, r9
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08077AEC @ =0x0000010B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	mov r3, r9
	ldr r1, [r3, #0x38]
	cmp r1, #0x00
	bge _08077986
	adds r1, #0xFF
_08077986:
	asrs r1, r1, #0x08
	mov r4, r9
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077992
	adds r2, #0xFF
_08077992:
	asrs r2, r2, #0x08
	mov r5, r9
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0807799E
	adds r3, #0xFF
_0807799E:
	asrs r3, r3, #0x08
	mov r7, r9
	str r7, [sp, #0x000]
	ldr r0, _08077AF0 @ =0x000029CA
	bl sub_80DF024
	ldr r1, [r7, #0x28]
	ldr r6, _08077AF4 @ =0x00004026
	ldr r0, [r7, #0x10]
	cmp r0, #0x00
	bge _080779B6
	adds r0, #0xFF
_080779B6:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1A
	mov r3, r9
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _080779C6
	adds r0, #0xFF
_080779C6:
	asrs r0, r0, #0x08
	adds r3, r0, #0x4
	mov r4, r9
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080779D4
	adds r0, #0xFF
_080779D4:
	asrs r0, r0, #0x08
	adds r0, #0x57
	str r0, [sp, #0x000]
	mov r5, r9
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	adds r1, r6, #0x0
	bl sub_807BF34
	adds r4, r0, #0x0
	mov r7, r9
	ldr r1, [r7, #0x28]
	ldr r0, [r7, #0x10]
	cmp r0, #0x00
	bge _08077A00
	adds r0, #0xFF
_08077A00:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0E
	mov r3, r9
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _08077A10
	adds r0, #0xFF
_08077A10:
	asrs r0, r0, #0x08
	adds r3, r0, #0x5
	mov r7, r9
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bge _08077A1E
	adds r0, #0xFF
_08077A1E:
	asrs r0, r0, #0x08
	adds r0, #0x5A
	str r0, [sp, #0x000]
	mov r7, r9
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	adds r1, r6, #0x0
	bl sub_807BF34
	str r0, [sp, #0x00C]
	str r4, [r7, #0x30]
	ldr r0, [sp, #0x00C]
	str r0, [r4, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	mov r2, r8
	strb r2, [r0, #0x00]
	ldr r2, [sp, #0x00C]
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x00C]
	adds r0, #0x74
	mov r3, r8
	strb r3, [r0, #0x00]
	ldr r0, _08077AF8 @ =0x08079775
	str r0, [r4, #0x4C]
	ldr r4, [sp, #0x00C]
	str r0, [r4, #0x4C]
	ldr r0, _08077AFC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	str r0, [sp, #0x014]
	ldr r5, [r7, #0x10]
	ldr r7, _08077B00 @ =0xFFFFE600
	adds r5, r5, r7
	mov r0, r9
	ldr r4, [r0, #0x14]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r4, r4, r1
	ldr r2, [sp, #0x010]
	ldr r2, [r2, #0x28]
	mov r8, r2
	mov r3, r8
	adds r3, #0xDC
	str r3, [sp, #0x01C]
	ldr r0, [r3, #0x00]
	subs r0, r0, r4
	ldr r7, _08077B04 @ =0xFFFFF000
	subs r6, r7, r5
	muls r0, r6
	mov r1, r8
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	mov r10, r1
	subs r1, r1, r5
	bl __divsi3
	adds r0, r0, r4
	str r0, [sp, #0x018]
	ldr r0, [sp, #0x014]
	ldr r7, [r0, #0x28]
	adds r1, r7, #0x0
	adds r1, #0xDC
	str r1, [sp, #0x020]
	ldr r0, [r1, #0x00]
	subs r0, r0, r4
	muls r0, r6
	adds r6, r7, #0x0
	adds r6, #0xD8
	ldr r1, [r6, #0x00]
	subs r1, r1, r5
	bl __divsi3
	adds r4, r0, r4
	mov r0, r9
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	str r0, [sp, #0x024]
	cmp r1, #0x01
	beq _08077B48
	cmp r1, #0x01
	bgt _08077B08
	cmp r1, #0x00
	beq _08077B0E
	b _08077BB0
_08077AEC: .4byte 0x0000010B
_08077AF0: .4byte 0x000029CA
_08077AF4: .4byte 0x00004026
_08077AF8: .4byte sub_8079774
_08077AFC: .4byte 0x03000FD8
_08077B00: .4byte 0xFFFFE600
_08077B04: .4byte 0xFFFFF000
_08077B08:
	cmp r1, #0x02
	beq _08077B7C
	b _08077BB0
_08077B0E:
	ldr r1, _08077B38 @ =0x03000EB0
	ldr r2, _08077B3C @ =0xFFFFF000
	str r2, [r1, #0x00]
	ldr r2, _08077B40 @ =0x03000EB8
	ldr r3, [sp, #0x018]
	str r3, [r2, #0x00]
	ldr r3, _08077B44 @ =0x03000EC0
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r3, #0x00]
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x04]
	ldr r4, [sp, #0x020]
	ldr r0, [r4, #0x00]
	str r0, [r2, #0x04]
	adds r0, r7, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x04]
	b _08077BEE
	.byte 0x00, 0x00
_08077B38: .4byte 0x03000EB0
_08077B3C: .4byte 0xFFFFF000
_08077B40: .4byte 0x03000EB8
_08077B44: .4byte 0x03000EC0
_08077B48:
	ldr r3, _08077B6C @ =0x03000EB0
	mov r5, r10
	str r5, [r3, #0x00]
	ldr r2, _08077B70 @ =0x03000EB8
	ldr r7, [sp, #0x01C]
	ldr r0, [r7, #0x00]
	str r0, [r2, #0x00]
	ldr r1, _08077B74 @ =0x03000EC0
	mov r0, r8
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08077B78 @ =0xFFFFF000
	str r0, [r3, #0x04]
	str r4, [r2, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x05
	b _08077BEC
_08077B6C: .4byte 0x03000EB0
_08077B70: .4byte 0x03000EB8
_08077B74: .4byte 0x03000EC0
_08077B78: .4byte 0xFFFFF000
_08077B7C:
	ldr r3, _08077BA0 @ =0x03000EB0
	ldr r1, _08077BA4 @ =0xFFFFF000
	str r1, [r3, #0x00]
	ldr r1, _08077BA8 @ =0x03000EB8
	ldr r2, [sp, #0x018]
	str r2, [r1, #0x00]
	ldr r2, _08077BAC @ =0x03000EC0
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r2, #0x00]
	ldr r5, _08077BA4 @ =0xFFFFF000
	str r5, [r3, #0x04]
	str r4, [r1, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x05
	str r0, [r2, #0x04]
	b _08077BEE
	.byte 0x00, 0x00
_08077BA0: .4byte 0x03000EB0
_08077BA4: .4byte 0xFFFFF000
_08077BA8: .4byte 0x03000EB8
_08077BAC: .4byte 0x03000EC0
_08077BB0:
	ldr r3, _08077EA8 @ =0x03000EB0
	ldr r7, [sp, #0x010]
	ldr r4, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	ldr r2, _08077EAC @ =0x03000EB8
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	ldr r1, _08077EB0 @ =0x03000EC0
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x014]
	ldr r4, [r0, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x04]
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x04]
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
_08077BEC:
	str r0, [r1, #0x04]
_08077BEE:
	mov r2, r9
	ldr r1, [r2, #0x28]
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08077BFA
	adds r0, #0xFF
_08077BFA:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1A
	mov r3, r9
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _08077C0A
	adds r0, #0xFF
_08077C0A:
	asrs r0, r0, #0x08
	adds r3, r0, #0x5
	mov r4, r9
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08077C18
	adds r0, #0xFF
_08077C18:
	asrs r0, r0, #0x08
	adds r0, #0x57
	str r0, [sp, #0x000]
	mov r5, r9
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08077EB4 @ =0x00004025
	bl sub_807BF34
	mov r8, r0
	ldr r7, [sp, #0x00C]
	str r0, [r7, #0x30]
	mov r1, r8
	adds r1, #0xAE
	movs r2, #0x00
	movs r0, #0x00
	strh r0, [r1, #0x00]
	mov r3, r8
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r8
	adds r1, #0x84
	mov r3, r8
	ldr r0, [r3, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r3, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r3, #0x40]
	str r0, [r1, #0x00]
	mov r0, r8
	adds r0, #0x74
	strb r2, [r0, #0x00]
	mov r2, r8
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x2C]
	str r0, [r3, #0x2C]
	mov r4, r8
	adds r4, #0x0C
	bl sub_807FA50
	mov r5, r8
	str r0, [r5, #0x04]
	ldr r1, [r5, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	ldr r1, _08077EB8 @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldrb r5, [r6, #0x07]
	lsls r4, r5, #0x1B
	lsrs r3, r4, #0x1B
	subs r3, #0x01
	movs r1, #0x1F
	ands r3, r1
	movs r2, #0x20
	negs r2, r2
	adds r1, r2, #0x0
	ands r1, r5
	orrs r1, r3
	strb r1, [r6, #0x07]
	lsrs r4, r4, #0x1B
	ldrb r1, [r0, #0x0C]
	ands r2, r1
	orrs r2, r4
	strb r2, [r0, #0x0C]
	mov r7, r8
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r7, #0x0C]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	movs r5, #0x07
_08077CE4:
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	mov r3, r8
	ldr r2, [r3, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	mov r7, r8
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	subs r5, #0x04
	cmp r5, #0x00
	bge _08077CE4
	movs r4, #0x00
	str r4, [r0, #0x00]
	mov r0, r8
	adds r0, #0x9C
	str r4, [r0, #0x00]
	mov r1, r8
	adds r1, #0xA0
	ldr r2, [sp, #0x024]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08077EBC @ =0x08078001
	str r0, [r7, #0x4C]
	mov r3, r9
	ldr r1, [r3, #0x28]
	ldr r0, [r3, #0x10]
	cmp r0, #0x00
	bge _08077D4C
	adds r0, #0xFF
_08077D4C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0E
	mov r5, r9
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bge _08077D5C
	adds r0, #0xFF
_08077D5C:
	asrs r0, r0, #0x08
	adds r3, r0, #0x6
	mov r7, r9
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bge _08077D6A
	adds r0, #0xFF
_08077D6A:
	asrs r0, r0, #0x08
	adds r0, #0x5A
	str r0, [sp, #0x000]
	mov r5, r9
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08077EB4 @ =0x00004025
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r0, r8
	str r7, [r0, #0x30]
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	strh r4, [r0, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r7, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r2, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x2C]
	str r0, [r7, #0x2C]
	adds r4, r7, #0x0
	adds r4, #0x0C
	bl sub_807FA50
	str r0, [r7, #0x04]
	ldr r1, [r7, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	ldr r1, _08077EB8 @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldrb r5, [r6, #0x07]
	lsls r4, r5, #0x1B
	lsrs r3, r4, #0x1B
	subs r3, #0x01
	movs r1, #0x1F
	ands r3, r1
	movs r2, #0x20
	negs r2, r2
	adds r1, r2, #0x0
	ands r1, r5
	orrs r1, r3
	strb r1, [r6, #0x07]
	lsrs r4, r4, #0x1B
	ldrb r1, [r0, #0x0C]
	ands r2, r1
	orrs r2, r4
	strb r2, [r0, #0x0C]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r7, #0x0C]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	movs r5, #0x07
_08077E2E:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	subs r5, #0x04
	cmp r5, #0x00
	bge _08077E2E
	movs r2, #0x00
	str r2, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r3, [sp, #0x024]
	ldr r0, [r3, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08077EBC @ =0x08078001
	str r0, [r7, #0x4C]
	ldr r0, _08077EC0 @ =0x03000EC8
	strh r2, [r0, #0x02]
	strh r2, [r0, #0x00]
	ldr r0, _08077EC4 @ =0x03000ECC
	strh r2, [r0, #0x02]
	strh r2, [r0, #0x00]
	ldr r0, _08077EC8 @ =0x0807972D
	mov r4, r9
	str r0, [r4, #0x4C]
_08077E96:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08077EA8: .4byte 0x03000EB0
_08077EAC: .4byte 0x03000EB8
_08077EB0: .4byte 0x03000EC0
_08077EB4: .4byte 0x00004025
_08077EB8: .4byte 0x03000FD8
_08077EBC: .4byte sub_8078000
_08077EC0: .4byte 0x03000EC8
_08077EC4: .4byte 0x03000ECC
_08077EC8: .4byte sub_807972C
	thumb_func_start sub_8077ECC
sub_8077ECC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	adds r4, r7, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	movs r6, #0x00
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08077EF4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	movs r0, #0x0A
	strh r0, [r4, #0x00]
_08077EF4:
	ldr r0, [r7, #0x30]
	cmp r0, #0x00
	bne _08077FD4
	movs r0, #0x01
	movs r1, #0xFF
	movs r2, #0x00
	bl sub_80193B4
	ldr r1, _08077FE0 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r2, #0xEE
	lsls r2, r2, #0x03
	adds r0, r0, r2
	strb r6, [r0, #0x00]
	ldr r1, [r1, #0x00]
	ldr r0, [r1, #0x70]
	adds r3, r0, #0x0
	adds r3, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r3, #0x4C]
	ldr r4, _08077FE4 @ =0x08079789
	cmp r0, r4
	bne _08077F40
	ldr r0, _08077FE8 @ =0x03000ED4
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x4C]
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08077F40:
	ldr r0, [r5, #0x4C]
	cmp r0, r4
	bne _08077F58
	ldr r0, _08077FEC @ =0x03000ED8
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x4C]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08077F58:
	ldr r1, _08077FF0 @ =0x03000F5C
	strb r6, [r1, #0x00]
	ldr r0, _08077FF4 @ =0x03000F5D
	strb r6, [r0, #0x00]
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	beq _08077F98
	mov r12, r4
	movs r0, #0x11
	negs r0, r0
	mov r8, r0
	ldr r6, _08077FF8 @ =0x03000EDC
	adds r4, r1, #0x0
_08077F72:
	ldr r0, [r3, #0x4C]
	cmp r0, r12
	bne _08077F92
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x12]
	ldrb r0, [r4, #0x00]
	adds r1, r0, #0x1
	strb r1, [r4, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x4C]
_08077F92:
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	bne _08077F72
_08077F98:
	ldr r3, [r5, #0x30]
	cmp r3, #0x00
	beq _08077FD0
	ldr r6, _08077FE4 @ =0x08079789
	movs r2, #0x11
	negs r2, r2
	mov r8, r2
	ldr r5, _08077FFC @ =0x03000F1C
	ldr r4, _08077FF4 @ =0x03000F5D
_08077FAA:
	ldr r0, [r3, #0x4C]
	cmp r0, r6
	bne _08077FCA
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x12]
	ldrb r0, [r4, #0x00]
	adds r1, r0, #0x1
	strb r1, [r4, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x4C]
_08077FCA:
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	bne _08077FAA
_08077FD0:
	movs r0, #0x00
	str r0, [r7, #0x4C]
_08077FD4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08077FE0: .4byte 0x03000FD8
_08077FE4: .4byte 0x08079789
_08077FE8: .4byte 0x03000ED4
_08077FEC: .4byte 0x03000ED8
_08077FF0: .4byte 0x03000F5C
_08077FF4: .4byte 0x03000F5D
_08077FF8: .4byte 0x03000EDC
_08077FFC: .4byte 0x03000F1C
	thumb_func_start sub_8078000
sub_8078000:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	bl sub_807830C
	ldr r5, [r6, #0x28]
	movs r0, #0x08
	adds r0, r0, r5
	mov r8, r0
	ldr r1, _08078124 @ =0x03000EB0
	adds r7, r6, #0x0
	adds r7, #0x9C
	ldr r0, [r7, #0x00]
	lsls r4, r0, #0x02
	adds r1, r4, r1
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bge _0807803C
	adds r1, #0xFF
_0807803C:
	asrs r2, r1, #0x08
	ldr r0, _08078128 @ =0x03000EB8
	adds r0, r4, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807804A
	adds r0, #0xFF
_0807804A:
	asrs r3, r0, #0x08
	ldr r0, _0807812C @ =0x03000EC0
	adds r0, r4, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08078058
	adds r0, #0xFF
_08078058:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	ldr r1, _08078130 @ =0x00004025
	bl sub_807BF34
	adds r5, r0, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x03
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x2C]
	str r0, [r5, #0x2C]
	ldr r0, [r1, #0x6C]
	str r0, [r5, #0x6C]
	movs r2, #0x77
	adds r2, r2, r6
	mov r12, r2
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	adds r0, #0x1A
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08078134 @ =0x08078235
	str r0, [r5, #0x4C]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	subs r1, #0x10
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	str r5, [r6, #0x30]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x28
	strh r0, [r1, #0x00]
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	bne _08078138
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08078142
	cmp r0, #0x02
	bne _08078148
	b _08078142
	.byte 0x00, 0x00
_08078124: .4byte 0x03000EB0
_08078128: .4byte 0x03000EB8
_0807812C: .4byte 0x03000EC0
_08078130: .4byte 0x00004025
_08078134: .4byte sub_8078234
_08078138:
	ldr r0, [r2, #0x00]
	cmp r0, #0x02
	bgt _08078148
	cmp r0, #0x01
	blt _08078148
_08078142:
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r5, #0x10]
_08078148:
	ldr r0, _08078158 @ =0x0807815D
	str r0, [r6, #0x4C]
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08078158: .4byte sub_807815C
	thumb_func_start sub_807815C
sub_807815C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	bl sub_807830C
	adds r7, r6, #0x0
	adds r7, #0xAC
	ldrh r0, [r7, #0x00]
	subs r0, #0x01
	strh r0, [r7, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x12
	bgt _0807820A
	ldr r0, _08078218 @ =0x03001038
	mov r9, r0
	ldr r4, _0807821C @ =0x0819832C
	ldr r0, _08078220 @ =0x08198220
	subs r4, r4, r0
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	ldr r1, _08078224 @ =0x03000EC8
	adds r5, r6, #0x0
	adds r5, #0x9C
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r3, #0x00
	ldsh r1, [r7, r3]
	bl _call_via_r2
	mov r8, r0
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r1, _08078228 @ =0x03000ECC
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r3, #0x00
	ldsh r1, [r7, r3]
	bl _call_via_r2
	ldr r3, _0807822C @ =0x0300034C
	ldr r2, _08078230 @ =0x00000888
	adds r1, r3, r2
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0A
	ldr r1, [r6, #0x04]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x16
	adds r3, #0x80
	adds r1, r1, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x06]
	mov r3, r8
	strh r3, [r2, #0x06]
	ldrh r1, [r2, #0x0E]
	strh r0, [r2, #0x0E]
	negs r0, r0
	ldrh r1, [r2, #0x16]
	strh r0, [r2, #0x16]
	ldrh r0, [r2, #0x1E]
	strh r3, [r2, #0x1E]
	movs r1, #0x00
	ldsh r0, [r7, r1]
	cmp r0, #0x01
	bne _0807820A
	adds r0, r6, #0x0
	bl sub_807C298
_0807820A:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08078218: .4byte 0x03001038
_0807821C: .4byte 0x0819832C
_08078220: .4byte 0x08198220
_08078224: .4byte 0x03000EC8
_08078228: .4byte 0x03000ECC
_0807822C: .4byte 0x0300034C
_08078230: .4byte 0x00000888
	thumb_func_start sub_8078234
sub_8078234:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08078280 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r3, r1, #0x0
	adds r3, #0x08
	ldr r5, [r0, #0x74]
	adds r2, r5, #0x0
	adds r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807829E
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08078260
	cmp r0, #0x02
	bne _08078284
_08078260:
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080782EE
	ldr r1, [r3, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x05
	cmp r1, r0
	ble _080782EE
	adds r0, r4, #0x0
	adds r1, r3, #0x0
	b _080782C8
	.byte 0x00, 0x00
_08078280: .4byte 0x03000FD8
_08078284:
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080782EE
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bne _080782EE
	adds r0, r4, #0x0
	adds r1, r3, #0x0
	b _080782C8
_0807829E:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x02
	bgt _080782D0
	cmp r0, #0x01
	blt _080782D0
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080782EE
	ldr r1, [r2, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x05
	cmp r1, r0
	ble _080782EE
	adds r0, r4, #0x0
	adds r1, r2, #0x0
_080782C8:
	movs r2, #0xFF
	bl sub_810DD7C
	b _080782EE
_080782D0:
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080782EE
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	bne _080782EE
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_080782EE:
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	subs r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bgt _08078304
	adds r0, r4, #0x0
	bl sub_807C298
_08078304:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807830C
sub_807830C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	adds r7, r0, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08078324
	adds r0, #0xFF
_08078324:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r1, [r0, #0x00]
	str r0, [sp, #0x02C]
	cmp r1, #0x00
	bge _08078336
	adds r1, #0xFF
_08078336:
	asrs r0, r1, #0x08
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	mov r10, r0
	cmp r1, #0x00
	bge _08078348
	adds r1, #0xFF
_08078348:
	asrs r0, r1, #0x08
	str r0, [sp, #0x008]
	ldr r0, [r7, #0x30]
	ldr r0, _080784FC @ =0x03000EB0
	adds r2, r7, #0x0
	adds r2, #0x9C
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	mov r9, r2
	cmp r0, #0x00
	bge _08078364
	adds r0, #0xFF
_08078364:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	ldr r0, _08078500 @ =0x03000EB8
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08078374
	adds r0, #0xFF
_08078374:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, _08078504 @ =0x03000EC0
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08078384
	adds r0, #0xFF
_08078384:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	add r0, sp, #0x00C
	add r1, sp, #0x010
	add r2, sp, #0x014
	movs r3, #0x00
	bl sub_807FC08
	ldr r4, [sp, #0x000]
	ldr r0, [sp, #0x00C]
	subs r4, r4, r0
	ldr r5, [sp, #0x004]
	ldr r0, [sp, #0x010]
	subs r5, r5, r0
	adds r0, r4, #0x0
	muls r0, r4
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r2, _08078508 @ =0x03001038
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	ldr r1, _0807850C @ =0x0819832C
	ldr r0, _08078510 @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
	ldr r3, _08078508 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	lsls r4, r4, #0x08
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r0, _08078508 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r8
	lsls r5, r5, #0x08
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	ldr r2, _08078514 @ =0x03000EC8
	mov r3, r9
	ldr r1, [r3, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	strh r4, [r1, #0x00]
	ldr r2, _08078518 @ =0x03000ECC
	ldr r1, [r3, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	ldr r3, _0807851C @ =0x0300034C
	ldr r2, _08078520 @ =0x00000888
	adds r1, r3, r2
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0A
	ldr r1, [r7, #0x04]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x16
	adds r3, #0x80
	adds r1, r1, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x06]
	strh r4, [r2, #0x06]
	ldrh r1, [r2, #0x0E]
	strh r0, [r2, #0x0E]
	negs r0, r0
	ldrh r1, [r2, #0x16]
	strh r0, [r2, #0x16]
	ldrh r0, [r2, #0x1E]
	strh r4, [r2, #0x1E]
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x01C]
	ldr r3, [sp, #0x02C]
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x020]
	mov r0, r10
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x024]
	ldr r0, _080784FC @ =0x03000EB0
	mov r2, r9
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r0, r1, r0
	ldr r3, [r0, #0x00]
	ldr r0, _08078500 @ =0x03000EB8
	adds r0, r1, r0
	ldr r2, [r0, #0x00]
	ldr r0, _08078504 @ =0x03000EC0
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r1, [sp, #0x01C]
	subs r3, r3, r1
	str r3, [sp, #0x028]
	ldr r3, [sp, #0x020]
	subs r3, r2, r3
	mov r10, r3
	ldr r1, [sp, #0x024]
	subs r1, r0, r1
	mov r9, r1
	adds r4, r7, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	beq _080784E8
	mov r7, r8
	mov r8, r9
	mov r6, r10
	ldr r5, [sp, #0x028]
_0807847C:
	ldr r3, _08078508 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	adds r0, r5, #0x0
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x01C]
	adds r0, r1, r0
	str r0, [r4, #0x04]
	ldr r3, _08078508 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	adds r0, r6, #0x0
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x020]
	adds r0, r1, r0
	str r0, [r4, #0x08]
	ldr r3, _08078508 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	mov r0, r8
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x024]
	adds r0, r1, r0
	str r0, [r4, #0x0C]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _080784C0
	adds r1, #0xFF
_080784C0:
	asrs r1, r1, #0x08
	movs r0, #0x08
	negs r0, r0
	cmp r1, r0
	bge _080784D0
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r4, #0x04]
_080784D0:
	ldr r4, [r4, #0x00]
	mov r2, r9
	lsls r0, r2, #0x01
	add r8, r0
	mov r3, r10
	lsls r0, r3, #0x01
	adds r6, r6, r0
	ldr r1, [sp, #0x028]
	lsls r0, r1, #0x01
	adds r5, r5, r0
	cmp r4, #0x00
	bne _0807847C
_080784E8:
	ldr r0, [sp, #0x018]
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080784FC: .4byte 0x03000EB0
_08078500: .4byte 0x03000EB8
_08078504: .4byte 0x03000EC0
_08078508: .4byte 0x03001038
_0807850C: .4byte 0x0819832C
_08078510: .4byte 0x08198220
_08078514: .4byte 0x03000EC8
_08078518: .4byte 0x03000ECC
_0807851C: .4byte 0x0300034C
_08078520: .4byte 0x00000888
	thumb_func_start sub_8078524
sub_8078524:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08078538
	b _08078652
_08078538:
	adds r0, r6, #0x0
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0807854C
	adds r1, #0xFF
_0807854C:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08078556
	adds r2, #0xFF
_08078556:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08078560
	adds r3, #0xFF
_08078560:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0807865C @ =0x000029DB
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08078574
	adds r0, #0xFF
_08078574:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08078582
	adds r0, #0xFF
_08078582:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0807858E
	adds r0, #0xFF
_0807858E:
	asrs r0, r0, #0x08
	adds r0, #0x50
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08078660 @ =0x0000402B
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08078664 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08078668 @ =0x080796B1
	str r0, [r5, #0x58]
	ldr r0, _0807866C @ =0x08078769
	str r0, [r5, #0x60]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0xC0
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r4, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08078670 @ =0x080796C5
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0xAE
	strh r4, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	ldr r0, _08078674 @ =0x08079705
	str r0, [r6, #0x4C]
_08078652:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807865C: .4byte 0x000029DB
_08078660: .4byte 0x0000402B
_08078664: .4byte sub_8087540
_08078668: .4byte 0x080796B1
_0807866C: .4byte sub_8078768
_08078670: .4byte sub_80796C4
_08078674: .4byte sub_8079704
	thumb_func_start sub_8078678
sub_8078678:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x8C
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _080786AE
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078694
	adds r1, #0xFF
_08078694:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807869E
	adds r2, #0xFF
_0807869E:
	asrs r2, r2, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080786FC @ =0x000029E8
	movs r3, #0x00
	bl sub_80DF024
	movs r0, #0x10
	str r0, [r5, #0x00]
_080786AE:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	adds r0, #0x4C
	str r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x02
	cmp r0, r2
	ble _080786C2
	str r2, [r1, #0x00]
_080786C2:
	ldr r0, [r4, #0x18]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x06
	cmp r0, r1
	bgt _08078758
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x01
	cmp r1, r2
	bgt _08078700
	ldr r0, [r4, #0x28]
	subs r1, r2, r1
	adds r2, #0x24
	adds r0, r0, r2
	b _0807870A
	.byte 0x00, 0x00
_080786FC: .4byte 0x000029E8
_08078700:
	ldr r0, [r4, #0x28]
	movs r1, #0x92
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r1, #0x00
_0807870A:
	strh r1, [r0, #0x00]
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3B
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078736
	adds r1, #0xFF
_08078736:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078740
	adds r2, #0xFF
_08078740:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807874A
	adds r3, #0xFF
_0807874A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078760 @ =0x00002A0C
	bl sub_80DF024
	ldr r0, _08078764 @ =0x080796B9
	str r0, [r4, #0x4C]
_08078758:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08078760: .4byte 0x00002A0C
_08078764: .4byte sub_80796B8
	thumb_func_start sub_8078768
sub_8078768:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	beq _08078778
	b _0807887E
_08078778:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08078848
	movs r0, #0x01
	strh r0, [r1, #0x00]
	adds r1, #0x06
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x01
	beq _080787BC
	cmp r1, #0x01
	bgt _080787AC
	cmp r1, #0x00
	beq _080787B2
	b _08078800
_080787AC:
	cmp r1, #0x02
	beq _080787C4
	b _08078800
_080787B2:
	ldr r2, _080787B8 @ =0x0000402C
	b _080787C6
	.byte 0x00, 0x00
_080787B8: .4byte 0x0000402C
_080787BC:
	ldr r2, _080787C0 @ =0x0000402D
	b _080787C6
_080787C0: .4byte 0x0000402D
_080787C4:
	ldr r2, _080787F8 @ =0x0000402E
_080787C6:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080787D8
	adds r1, #0xFF
_080787D8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080787E2
	adds r2, #0xFF
_080787E2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080787EC
	adds r3, #0xFF
_080787EC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080787FC @ =0x000029F1
	bl sub_80DF024
	b _08078840
_080787F8: .4byte 0x0000402E
_080787FC: .4byte 0x000029F1
_08078800:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078808
	adds r1, #0xFF
_08078808:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078812
	adds r2, #0xFF
_08078812:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807881C
	adds r3, #0xFF
_0807881C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0807883C @ =0x00002A32
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3B
	bl play_sfx_80195B4
	movs r0, #0x00
	b _0807887E
	.byte 0x00, 0x00
_0807883C: .4byte 0x00002A32
_08078840:
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	b _0807886E
_08078848:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078850
	adds r1, #0xFF
_08078850:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807885A
	adds r2, #0xFF
_0807885A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08078864
	adds r3, #0xFF
_08078864:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078888 @ =0x000029F1
	bl sub_80DF024
_0807886E:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, _0807888C @ =0xFFFFF900
	str r1, [r0, #0x00]
	ldr r0, _08078890 @ =0x08078679
	str r0, [r4, #0x4C]
	movs r0, #0x01
	negs r0, r0
_0807887E:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08078888: .4byte 0x000029F1
_0807888C: .4byte 0xFFFFF900
_08078890: .4byte sub_8078678
	thumb_func_start sub_8078894
sub_8078894:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _080788AA
	b _080789A8
_080788AA:
	movs r0, #0x50
	str r0, [r1, #0x00]
	adds r1, #0x10
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	blt _08078998
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080788CE
	adds r1, #0xFF
_080788CE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080788D8
	adds r2, #0xFF
_080788D8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080788E2
	adds r3, #0xFF
_080788E2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078984 @ =0x00002A61
	bl sub_80DF024
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080788F6
	adds r0, #0xFF
_080788F6:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08078904
	adds r0, #0xFF
_08078904:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08078910
	adds r0, #0xFF
_08078910:
	asrs r0, r0, #0x08
	adds r0, #0x30
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08078988 @ =0x0000402F
	bl sub_807BF34
	adds r3, r0, #0x0
	ldr r0, [r4, #0x30]
	str r0, [r3, #0x30]
	str r3, [r4, #0x30]
	adds r2, r3, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0807898C @ =0x08087541
	str r0, [r3, #0x68]
	ldr r0, [r4, #0x6C]
	str r0, [r3, #0x6C]
	ldr r0, [r4, #0x2C]
	str r0, [r3, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08078990 @ =0x08079655
	str r0, [r3, #0x4C]
	adds r1, r3, #0x0
	adds r1, #0xB2
	ldr r0, _08078994 @ =0x00001111
	strh r0, [r1, #0x00]
	subs r1, #0x06
	movs r0, #0x03
	strh r0, [r1, #0x00]
	b _080789A8
	.byte 0x00, 0x00
_08078984: .4byte 0x00002A61
_08078988: .4byte 0x0000402F
_0807898C: .4byte sub_8087540
_08078990: .4byte sub_8079654
_08078994: .4byte 0x00001111
_08078998:
	adds r0, r4, #0x0
	movs r1, #0x17
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080789B0 @ =0x08079689
	str r0, [r4, #0x4C]
_080789A8:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
_080789B0: .4byte sub_8079688
	thumb_func_start sub_80789B4
sub_80789B4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08078A4A
	adds r1, #0x10
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _080789E8
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080789E4 @ =0x080795D5
	b _08078A3E
_080789E4: .4byte sub_80795D4
_080789E8:
	movs r5, #0x00
	bl sub_8199F30
	adds r2, r0, #0x0
	movs r0, #0x01
	ands r2, r0
	adds r3, r4, #0x0
	adds r3, #0xA8
	b _080789FE
_080789FA:
	cmp r5, #0x02
	bhi _08078A2C
_080789FE:
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r2, #0x1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0x01
	ands r2, r0
	ldr r0, _08078A50 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x30]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _080789FA
	cmp r5, #0x02
	bls _08078A2E
_08078A2C:
	movs r2, #0x00
_08078A2E:
	str r2, [r3, #0x00]
	adds r1, r2, #0x3
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08078A54 @ =0x08079569
_08078A3E:
	str r0, [r4, #0x4C]
	ldr r0, _08078A58 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08078A4A:
	pop {r4, r5}
	pop {r0}
	bx r0
_08078A50: .4byte 0x03000FD8
_08078A54: .4byte sub_8079568
_08078A58: .4byte 0x00000119
	thumb_func_start sub_8078A5C
sub_8078A5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	mov r8, r0
	mov r1, r8
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08078B6C
	mov r0, r8
	bl sub_807F4FC
	ldr r0, _08078B78 @ =0x08079485
	mov r1, r8
	str r0, [r1, #0x58]
	ldr r0, _08078B7C @ =0x08078B95
	str r0, [r1, #0x60]
	ldr r1, [r1, #0x28]
	mov r3, r8
	ldr r2, [r3, #0x38]
	cmp r2, #0x00
	bge _08078A92
	adds r2, #0xFF
_08078A92:
	asrs r2, r2, #0x08
	mov r4, r8
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08078A9E
	adds r0, #0xFF
_08078A9E:
	asrs r0, r0, #0x08
	subs r3, r0, #0x2
	mov r4, r8
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08078AAC
	adds r0, #0xFF
_08078AAC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	mov r4, r8
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08078B80 @ =0x00004030
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r0, r8
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r0, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	str r0, [r7, #0x30]
	str r7, [r4, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r0, r8
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08078B84 @ =0x080794FD
	str r0, [r7, #0x4C]
	adds r1, r7, #0x0
	adds r1, #0xB2
	ldr r0, _08078B88 @ =0x00002222
	strh r0, [r1, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x0C
	bl sub_807FA50
	str r0, [r7, #0x04]
	ldr r1, [r7, #0x08]
	str r1, [r0, #0x04]
	str r5, [r0, #0x08]
	ldr r1, _08078B8C @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldrb r5, [r6, #0x07]
	lsls r4, r5, #0x1B
	lsrs r3, r4, #0x1B
	subs r3, #0x01
	movs r1, #0x1F
	ands r3, r1
	movs r2, #0x20
	negs r2, r2
	adds r1, r2, #0x0
	ands r1, r5
	orrs r1, r3
	strb r1, [r6, #0x07]
	lsrs r4, r4, #0x1B
	ldrb r1, [r0, #0x0C]
	ands r2, r1
	orrs r2, r4
	strb r2, [r0, #0x0C]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r7, #0x0C]
	adds r5, r0, #0x0
	movs r4, #0x00
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x00]
	str r4, [r0, #0x00]
	ldr r0, _08078B90 @ =0x0807953D
	mov r1, r8
	str r0, [r1, #0x4C]
_08078B6C:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08078B78: .4byte sub_8079484
_08078B7C: .4byte sub_8078B94
_08078B80: .4byte 0x00004030
_08078B84: .4byte sub_80794FC
_08078B88: .4byte 0x00002222
_08078B8C: .4byte 0x03000FD8
_08078B90: .4byte sub_807953C
	thumb_func_start sub_8078B94
sub_8078B94:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	bl sub_8086D80
	adds r2, r0, #0x0
	cmp r2, #0x00
	beq _08078BB0
	b _08078CFE
_08078BB0:
	ldr r0, _08078BCC @ =0x03000F64
	str r4, [r0, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08078BD4
	ldr r0, _08078BD0 @ =0x03000F68
	strb r2, [r0, #0x00]
	b _08078BDA
	.byte 0x00, 0x00
_08078BCC: .4byte 0x03000F64
_08078BD0: .4byte 0x03000F68
_08078BD4:
	ldr r1, _08078D10 @ =0x03000F68
	movs r0, #0x01
	strb r0, [r1, #0x00]
_08078BDA:
	ldr r0, [r5, #0x28]
	ldr r4, [r0, #0x38]
	movs r7, #0x84
	adds r7, r7, r5
	mov r9, r7
	movs r0, #0x88
	adds r0, r0, r5
	mov r10, r0
	adds r1, r5, #0x0
	adds r1, #0x8C
	str r1, [sp, #0x00C]
	movs r2, #0x79
	adds r2, r2, r5
	mov r8, r2
	adds r3, r5, #0x0
	adds r3, #0x7C
	str r3, [sp, #0x008]
	adds r7, r5, #0x0
	adds r7, #0x7A
	str r7, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0xAC
	str r0, [sp, #0x010]
	cmp r4, #0x00
	beq _08078C26
	ldr r7, _08078D14 @ =0x00002222
_08078C0E:
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r7
	bne _08078C20
	adds r0, r4, #0x0
	bl sub_807C298
_08078C20:
	ldr r4, [r4, #0x30]
	cmp r4, #0x00
	bne _08078C0E
_08078C26:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08078C2E
	adds r1, #0xFF
_08078C2E:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08078C38
	adds r2, #0xFF
_08078C38:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08078C42
	adds r3, #0xFF
_08078C42:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08078D18 @ =0x00002A6E
	bl sub_80DF024
	bl sub_8199F30
	movs r2, #0x03
	ands r2, r0
	ldr r1, _08078D1C @ =0x03000F60
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x28]
	ldr r3, [r0, #0x00]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r4, [r0, r7]
	mov r12, r4
	movs r0, #0x00
	adds r2, #0x01
	cmp r0, r2
	bge _08078C90
	adds r4, #0x01
_08078C70:
	adds r1, r0, #0x1
_08078C72:
	ldr r3, [r3, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r6, [r0, r7]
	adds r0, #0x0A
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	beq _08078C72
	cmp r6, r4
	beq _08078C72
	adds r0, r1, #0x0
	cmp r0, r2
	blt _08078C70
_08078C90:
	ldr r1, _08078D1C @ =0x03000F60
	adds r0, r3, #0x0
	adds r0, #0x08
	str r0, [r1, #0x00]
	mov r0, r12
	subs r2, r6, r0
	lsls r2, r2, #0x18
	ldr r4, [r5, #0x28]
	adds r3, r4, #0x0
	adds r3, #0xD8
	ldr r0, _08078D20 @ =0x083B87EC
	lsrs r2, r2, #0x16
	adds r0, r2, r0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	mov r1, r9
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	mov r3, r10
	str r0, [r3, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xE0
	ldr r0, _08078D24 @ =0x083B87FC
	adds r2, r2, r0
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	ldr r4, [sp, #0x00C]
	str r0, [r4, #0x00]
	mov r7, r8
	ldrb r0, [r7, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7, #0x00]
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r2, [sp, #0x008]
	strh r0, [r2, #0x00]
	ldr r3, [sp, #0x004]
	strh r1, [r3, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	movs r0, #0x08
	ldr r4, [sp, #0x010]
	strh r0, [r4, #0x00]
	ldr r0, _08078D28 @ =0x08078D2D
	str r0, [r5, #0x4C]
	movs r0, #0x00
_08078CFE:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08078D10: .4byte 0x03000F68
_08078D14: .4byte 0x00002222
_08078D18: .4byte 0x00002A6E
_08078D1C: .4byte 0x03000F60
_08078D20: .4byte 0x083B87EC
_08078D24: .4byte 0x083B87FC
_08078D28: .4byte sub_8078D2C
	thumb_func_start sub_8078D2C
sub_8078D2C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08078D6C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078D4A
	adds r1, #0xFF
_08078D4A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078D54
	adds r2, #0xFF
_08078D54:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08078D5E
	adds r3, #0xFF
_08078D5E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078DCC @ =0x00002A86
	bl sub_80DF024
	movs r0, #0x08
	strh r0, [r5, #0x00]
_08078D6C:
	ldr r1, [r4, #0x08]
	movs r2, #0x90
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r7, [r1, #0x0C]
	adds r0, r0, r7
	strh r0, [r1, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08078E1C
	ldr r0, _08078DD0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, _08078DD4 @ =0x03000F68
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, _08078DD8 @ =0x03000F60
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08078DE8
	adds r5, r1, #0x0
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _08078DAC
	adds r2, #0xFF
_08078DAC:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _08078DB6
	adds r3, #0xFF
_08078DB6:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08078DDC
	movs r0, #0x13
	b _08078DDE
_08078DCC: .4byte 0x00002A86
_08078DD0: .4byte 0x03000FD8
_08078DD4: .4byte 0x03000F68
_08078DD8: .4byte 0x03000F60
_08078DDC:
	movs r0, #0x12
_08078DDE:
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_810D738
_08078DE8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xCC
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078DFA
	adds r1, #0xFF
_08078DFA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078E04
	adds r2, #0xFF
_08078E04:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08078E0E
	adds r3, #0xFF
_08078E0E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078E24 @ =0x00002A76
	bl sub_80DF024
	ldr r0, _08078E28 @ =0x08079479
	str r0, [r4, #0x4C]
_08078E1C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08078E24: .4byte 0x00002A76
_08078E28: .4byte sub_8079478
	thumb_func_start sub_8078E2C
sub_8078E2C:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08078E40
	b _08078F76
_08078E40:
	adds r0, r6, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8A
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08078E60
	adds r1, #0xFF
_08078E60:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08078E6A
	adds r2, #0xFF
_08078E6A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08078E74
	adds r3, #0xFF
_08078E74:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08078F20 @ =0x00002A94
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08078E88
	adds r0, #0xFF
_08078E88:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08078E96
	adds r0, #0xFF
_08078E96:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08078EA2
	adds r0, #0xFF
_08078EA2:
	asrs r0, r0, #0x08
	adds r0, #0x40
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08078F24 @ =0x00004028
	bl sub_807BF34
	adds r5, r0, #0x0
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08078F28 @ =0x08078F85
	str r0, [r5, #0x4C]
	subs r2, #0x02
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08078F2C @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	bl sub_8199F30
	ands r0, r4
	ldr r1, _08078F30 @ =0x03000F6C
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08078F34
	adds r1, r5, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _08078F44
_08078F20: .4byte 0x00002A94
_08078F24: .4byte 0x00004028
_08078F28: .4byte sub_8078F84
_08078F2C: .4byte sub_8087540
_08078F30: .4byte 0x03000F6C
_08078F34:
	adds r1, r5, #0x0
	adds r1, #0x84
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x07
_08078F44:
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xA0
	lsls r0, r0, #0x06
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _08078F80 @ =0x08079451
	str r0, [r6, #0x4C]
_08078F76:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08078F80: .4byte sub_8079450
	thumb_func_start sub_8078F84
sub_8078F84:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08078FFE
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078F9A
	adds r1, #0xFF
_08078F9A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078FA4
	adds r2, #0xFF
_08078FA4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08078FAE
	adds r3, #0xFF
_08078FAE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08079008 @ =0x00002A9D
	bl sub_80DF024
	ldr r2, _0807900C @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08079010 @ =0x03000F6C
	ldr r0, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r4, #0x18]
	movs r0, #0x00
	str r0, [r4, #0x4C]
	ldr r1, _08079014 @ =0x03000ED0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
_08078FFE:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079008: .4byte 0x00002A9D
_0807900C: .4byte 0x00004029
_08079010: .4byte 0x03000F6C
_08079014: .4byte 0x03000ED0
	thumb_func_start sub_8079018
sub_8079018:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080790C4
	ldr r2, _08079068 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _080790C0
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r1, #0x01
	movs r2, #0x01
	ands r1, r2
	str r1, [r0, #0x00]
	cmp r1, #0x00
	bne _0807906C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _0807907C
	.byte 0x00, 0x00
_08079068: .4byte 0x00004029
_0807906C:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x07
_0807907C:
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _080790BC @ =0x080793F5
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD7
	bl play_sfx_80195B4
	b _080790C4
	.byte 0x00, 0x00
_080790BC: .4byte sub_80793F4
_080790C0:
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080790C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80790CC
sub_80790CC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r0, #0xA8
	ldr r2, [r0, #0x00]
	ldr r0, _080791BC @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080790E2
	movs r0, #0x05
	subs r2, r0, r2
_080790E2:
	ldr r0, _080791C0 @ =0xFFFFFB34
	ldr r1, _080791C4 @ =0x00000B33
	muls r0, r2
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r6, r0, r3
	adds r0, r2, #0x0
	muls r0, r1
	movs r1, #0xA0
	lsls r1, r1, #0x07
	adds r7, r0, r1
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08079102
	adds r0, #0xFF
_08079102:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08079110
	adds r0, #0xFF
_08079110:
	asrs r0, r0, #0x08
	adds r3, r0, #0x4
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0807911C
	adds r0, #0xFF
_0807911C:
	asrs r0, r0, #0x08
	adds r0, #0x38
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080791C8 @ =0x00004059
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r3, #0x20
	orrs r0, r3
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	ldr r0, _080791CC @ =0x080793C5
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x84
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r1, #0x03
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080791D0 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080791BC: .4byte 0x03000F6C
_080791C0: .4byte 0xFFFFFB34
_080791C4: .4byte 0x00000B33
_080791C8: .4byte 0x00004059
_080791CC: .4byte sub_80793C4
_080791D0: .4byte sub_8087540
	thumb_func_start sub_80791D4
sub_80791D4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079278
	adds r0, r5, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079208 @ =0x08079395
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	movs r6, #0x00
	str r6, [r0, #0x00]
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	bne _0807920C
	str r0, [r5, #0x4C]
	b _08079278
	.byte 0x00, 0x00
_08079208: .4byte sub_8079394
_0807920C:
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r6, [r0, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807926C
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r6, [r0, #0x00]
	b _08079274
_0807926C:
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x01
	strh r0, [r1, #0x00]
_08079274:
	ldr r0, _08079280 @ =0x08079349
	str r0, [r4, #0x4C]
_08079278:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079280: .4byte sub_8079348
	thumb_func_start sub_8079284
sub_8079284:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079316
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08079316
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080792D0 @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080792D4
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _080792E4
_080792D0: .4byte 0x03000F6C
_080792D4:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x07
_080792E4:
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0807931C @ =0x08079321
	str r0, [r4, #0x4C]
_08079316:
	pop {r4}
	pop {r0}
	bx r0
_0807931C: .4byte sub_8079320
