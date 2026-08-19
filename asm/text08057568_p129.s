	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_805F604
sub_805F604:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _0805F62C
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8C
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0805F634 @ =0x0805F639
	str r0, [r4, #0x4C]
_0805F62C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F634: .4byte sub_805F638
	thumb_func_start sub_805F638
sub_805F638:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F680
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0805F65E
	adds r1, #0xFF
_0805F65E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0805F668
	adds r2, #0xFF
_0805F668:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0805F672
	adds r3, #0xFF
_0805F672:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0805F688 @ =0x000012D5
	bl sub_80DF024
	ldr r0, _0805F68C @ =0x0805F691
	str r0, [r4, #0x4C]
_0805F680:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0805F688: .4byte 0x000012D5
_0805F68C: .4byte sub_805F690
	thumb_func_start sub_805F690
sub_805F690:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F6B0
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805F6B8 @ =0x0805DF89
	str r0, [r4, #0x4C]
_0805F6B0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F6B8: .4byte sub_805DF88
	thumb_func_start sub_805F6BC
sub_805F6BC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F766
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3A
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0805F72C
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F700
	adds r0, #0xFF
_0805F700:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F70E
	adds r0, #0xFF
_0805F70E:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F71C
	adds r0, #0xFF
_0805F71C:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0805F728 @ =0x00000DCE
	bl sub_80DF024
	b _0805F762
_0805F728: .4byte 0x00000DCE
_0805F72C:
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F73C
	adds r0, #0xFF
_0805F73C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F74A
	adds r0, #0xFF
_0805F74A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F758
	adds r0, #0xFF
_0805F758:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0805F770 @ =0x00000E1F
	bl sub_80DF024
_0805F762:
	ldr r0, _0805F774 @ =0x0805F779
	str r0, [r4, #0x4C]
_0805F766:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F770: .4byte 0x00000E1F
_0805F774: .4byte sub_805F778
	thumb_func_start sub_805F778
sub_805F778:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0805F78C
	b _0805F8FE
_0805F78C:
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0805F7A0
	adds r1, #0xFF
_0805F7A0:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0805F7AA
	adds r2, #0xFF
_0805F7AA:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0805F7B4
	adds r3, #0xFF
_0805F7B4:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0805F8CC @ =0x00000E64
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805F7C8
	adds r0, #0xFF
_0805F7C8:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x20
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805F7D6
	adds r0, #0xFF
_0805F7D6:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805F7E2
	adds r0, #0xFF
_0805F7E2:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805F8D0 @ =0x00004132
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
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
	ldr r0, _0805F8D4 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0805F8D8 @ =0x0805FC81
	str r0, [r5, #0x5C]
	str r0, [r5, #0x60]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x38
	strh r2, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x38]
	ldr r2, _0805F8DC @ =0xFFFFE000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x3C]
	str r0, [r1, #0x00]
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
	adds r0, r6, #0x0
	adds r0, #0xB0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0805F8E4
	ldr r0, _0805F8E0 @ =0x0805FAE9
	str r0, [r5, #0x4C]
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r0, #0x40
	b _0805F8EE
	.byte 0x00, 0x00
_0805F8CC: .4byte 0x00000E64
_0805F8D0: .4byte 0x00004132
_0805F8D4: .4byte sub_8087540
_0805F8D8: .4byte sub_805FC80
_0805F8DC: .4byte 0xFFFFE000
_0805F8E0: .4byte sub_805FAE8
_0805F8E4:
	ldr r0, _0805F908 @ =0x0805FBB5
	str r0, [r5, #0x4C]
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r0, #0x02
_0805F8EE:
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r0, _0805F90C @ =0x0805FDB9
	str r0, [r6, #0x4C]
_0805F8FE:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F908: .4byte sub_805FBB4
_0805F90C: .4byte sub_805FDB8
	thumb_func_start sub_805F910
sub_805F910:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F9FC
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r6, #0x01
	strh r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0805FA04 @ =0x0805FCC9
	str r0, [r4, #0x5C]
	str r0, [r4, #0x60]
	adds r5, r4, #0x0
	adds r5, #0x77
	ldrb r0, [r5, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _0805F958
	adds r2, #0xFF
_0805F958:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x3C]
	cmp r3, #0x00
	bge _0805F962
	adds r3, #0xFF
_0805F962:
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0805F96C
	adds r0, #0xFF
_0805F96C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805FA08 @ =0x00004131
	bl sub_807BF34
	adds r3, r0, #0x0
	adds r2, r3, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r1, #0x77
	adds r1, r1, r3
	mov r12, r1
	adds r2, r6, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r0, r12
	strb r1, [r0, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	adds r2, r6, #0x0
	ands r2, r0
	lsls r2, r2, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r2
	mov r0, r12
	strb r1, [r0, #0x00]
	ldr r0, _0805FA0C @ =0x08087541
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
	ldr r0, _0805FA10 @ =0x0805FD41
	str r0, [r3, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	ldr r0, _0805FA14 @ =0x0805FA19
	str r0, [r4, #0x4C]
_0805F9FC:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0805FA04: .4byte sub_805FCC8
_0805FA08: .4byte 0x00004131
_0805FA0C: .4byte sub_8087540
_0805FA10: .4byte sub_805FD40
_0805FA14: .4byte sub_805FA18
	thumb_func_start sub_805FA18
sub_805FA18:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x9C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	subs r3, r2, r0
	adds r0, r4, #0x0
	adds r0, #0xA0
	adds r1, #0x04
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	subs r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0805FA4C
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x10
	b _0805FA54
_0805FA4C:
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x13
_0805FA54:
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	muls r0, r2
	adds r1, r3, #0x0
	bl __divsi3
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r5, r2, #0x0
	cmp r0, #0x07
	ble _0805FAB8
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0805FA9A
	adds r1, #0xFF
_0805FA9A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0805FAA4
	adds r2, #0xFF
_0805FAA4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0805FAAE
	adds r3, #0xFF
_0805FAAE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0805FAE0 @ =0x00000E72
	bl sub_80DF024
_0805FAB8:
	ldr r1, [r4, #0x10]
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _0805FAD6
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x88
	lsls r0, r0, #0x09
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x14]
	ldr r0, _0805FAE4 @ =0x0805FD5D
	str r0, [r4, #0x4C]
_0805FAD6:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805FAE0: .4byte 0x00000E72
_0805FAE4: .4byte sub_805FD5C
	thumb_func_start sub_805FAE8
sub_805FAE8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r3, r6, #0x0
	adds r3, #0xA4
	adds r0, #0x84
	ldr r1, [r3, #0x00]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r5, r6, #0x0
	adds r5, #0xA8
	adds r0, r6, #0x0
	adds r0, #0x88
	ldr r2, [r5, #0x00]
	ldr r0, [r0, #0x00]
	subs r2, r2, r0
	adds r4, r6, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	adds r0, #0x0C
	strh r0, [r4, #0x00]
	movs r7, #0x00
	ldsh r0, [r4, r7]
	ldr r4, [r6, #0x10]
	subs r4, r4, r0
	str r4, [r6, #0x10]
	ldr r0, [r3, #0x00]
	subs r0, r4, r0
	muls r0, r2
	bl __divsi3
	ldr r1, [r5, #0x00]
	adds r1, r0, r1
	str r1, [r6, #0x14]
	cmp r4, #0x00
	bge _0805FB32
	adds r4, #0xFF
_0805FB32:
	asrs r0, r4, #0x08
	str r0, [sp, #0x004]
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _0805FB3E
	adds r0, #0xFF
_0805FB3E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _0805FB4A
	adds r0, #0xFF
_0805FB4A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	add r1, sp, #0x008
	add r2, sp, #0x00C
	add r0, sp, #0x004
	movs r3, #0x00
	bl sub_807FC08
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0B
	ble _0805FB96
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0805FB78
	adds r1, #0xFF
_0805FB78:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0805FB82
	adds r2, #0xFF
_0805FB82:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0805FB8C
	adds r3, #0xFF
_0805FB8C:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0805FBB0 @ =0x00000E7A
	bl sub_80DF024
_0805FB96:
	ldr r1, [sp, #0x004]
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _0805FBA6
	adds r0, r6, #0x0
	bl sub_807C298
_0805FBA6:
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805FBB0: .4byte 0x00000E7A
	thumb_func_start sub_805FBB4
sub_805FBB4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r3, r6, #0x0
	adds r3, #0xA4
	adds r0, #0x84
	ldr r1, [r3, #0x00]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r5, r6, #0x0
	adds r5, #0xA8
	adds r0, r6, #0x0
	adds r0, #0x88
	ldr r2, [r5, #0x00]
	ldr r0, [r0, #0x00]
	subs r2, r2, r0
	adds r4, r6, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	strh r0, [r4, #0x00]
	movs r7, #0x00
	ldsh r0, [r4, r7]
	ldr r4, [r6, #0x10]
	subs r4, r4, r0
	str r4, [r6, #0x10]
	ldr r0, [r3, #0x00]
	subs r0, r4, r0
	muls r0, r2
	bl __divsi3
	ldr r1, [r5, #0x00]
	adds r1, r0, r1
	str r1, [r6, #0x14]
	cmp r4, #0x00
	bge _0805FBFE
	adds r4, #0xFF
_0805FBFE:
	asrs r0, r4, #0x08
	str r0, [sp, #0x004]
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _0805FC0A
	adds r0, #0xFF
_0805FC0A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _0805FC16
	adds r0, #0xFF
_0805FC16:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	add r1, sp, #0x008
	add r2, sp, #0x00C
	add r0, sp, #0x004
	movs r3, #0x00
	bl sub_807FC08
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0B
	ble _0805FC62
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0805FC44
	adds r1, #0xFF
_0805FC44:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0805FC4E
	adds r2, #0xFF
_0805FC4E:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0805FC58
	adds r3, #0xFF
_0805FC58:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0805FC7C @ =0x00000E7A
	bl sub_80DF024
_0805FC62:
	ldr r1, [sp, #0x004]
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _0805FC72
	adds r0, r6, #0x0
	bl sub_807C298
_0805FC72:
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805FC7C: .4byte 0x00000E7A
	thumb_func_start sub_805FC80
sub_805FC80:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _0805FCC0
	adds r3, r4, #0x0
	adds r3, #0xAE
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r2, [r0, #0x00]
	adds r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805FCBC @ =0x0805FE75
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _0805FCC2
_0805FCBC: .4byte sub_805FE74
_0805FCC0:
	adds r0, r2, #0x0
_0805FCC2:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_805FCC8
sub_805FCC8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0805FD38
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	adds r1, r4, #0x0
	adds r1, #0x84
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
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
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805FD34 @ =0x0805FEF5
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _0805FD3A
_0805FD34: .4byte sub_805FEF4
_0805FD38:
	adds r0, r5, #0x0
_0805FD3A:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_805FD40
sub_805FD40:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x28]
	adds r0, #0xBA
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _0805FD56
	adds r0, r1, #0x0
	bl sub_807C298
_0805FD56:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805FD5C
sub_805FD5C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xB0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0805FD74
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x10
	b _0805FD7C
_0805FD74:
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x13
_0805FD7C:
	strh r0, [r1, #0x00]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	ldr r1, [r4, #0x10]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	cmp r1, r0
	bge _0805FDAE
	adds r1, r4, #0x0
	adds r1, #0xB2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, [r2, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805FDB4 @ =0x0805FF31
	str r0, [r4, #0x4C]
_0805FDAE:
	pop {r4}
	pop {r0}
	bx r0
_0805FDB4: .4byte sub_805FF30
	thumb_func_start sub_805FDB8
sub_805FDB8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805FDD8
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805FDE0 @ =0x0805F911
	str r0, [r4, #0x4C]
_0805FDD8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805FDE0: .4byte sub_805F910
	.byte 0x03, 0x1C, 0x19, 0x1C, 0xAE, 0x31, 0x80, 0x20, 0x40, 0x00, 0x08, 0x80, 0x1A, 0x1C, 0x84, 0x32
	.byte 0xD8, 0x6A, 0x81, 0x6A, 0x08, 0x1C, 0xD8, 0x30, 0x00, 0x68, 0x10, 0x60, 0x04, 0x32, 0xDC, 0x31
	.byte 0x08, 0x68, 0x10, 0x60, 0x19, 0x1C, 0x9C, 0x31, 0x18, 0x69, 0x08, 0x60, 0x04, 0x31, 0x58, 0x69
	.byte 0x08, 0x60, 0x10, 0x31, 0x01, 0x20, 0x08, 0x80, 0x01, 0x48, 0xD8, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x59, 0xFF, 0x05, 0x08, 0x84, 0x46, 0x61, 0x46, 0xAE, 0x31, 0x00, 0x23, 0x80, 0x20, 0x40, 0x00
	.byte 0x08, 0x80, 0x62, 0x46, 0x84, 0x32, 0x61, 0x46, 0xC8, 0x6A, 0x81, 0x6A, 0x08, 0x1C, 0xD8, 0x30
	.byte 0x00, 0x68, 0x10, 0x60, 0x04, 0x32, 0xDC, 0x31, 0x08, 0x68, 0x10, 0x60, 0x61, 0x46, 0x9C, 0x31
	.byte 0x62, 0x46, 0x10, 0x69, 0x08, 0x60, 0x04, 0x31, 0x50, 0x69, 0x08, 0x60, 0x60, 0x46, 0xB0, 0x30
	.byte 0x03, 0x80, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x70, 0x47, 0x00, 0x00, 0x59, 0xFF, 0x05, 0x08
	thumb_func_start sub_805FE74
sub_805FE74:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0xB2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldrh r0, [r2, #0x00]
	adds r0, #0x20
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0805FEA2
	adds r0, #0xFF
_0805FEA2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0805FEAE
	adds r0, #0xFF
_0805FEAE:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0805FEBA
	adds r0, #0xFF
_0805FEBA:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r1, [sp, #0x004]
	movs r0, #0x88
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _0805FEDC
	adds r0, r4, #0x0
	bl sub_807C298
	b _0805FEEC
_0805FEDC:
	ldr r1, [sp, #0x000]
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	bge _0805FEEC
	adds r0, r4, #0x0
	bl sub_807C298
_0805FEEC:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_805FEF4
sub_805FEF4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _0805FF26
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	adds r0, r4, #0x0
	adds r0, #0xB2
	strh r3, [r0, #0x00]
	subs r0, #0x16
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805FF2C @ =0x0805FF31
	str r0, [r4, #0x4C]
_0805FF26:
	pop {r4}
	pop {r0}
	bx r0
_0805FF2C: .4byte sub_805FF30
	thumb_func_start sub_805FF30
sub_805FF30:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805FF50
	ldr r1, [r4, #0x68]
	cmp r1, #0x00
	beq _0805FF4C
	adds r0, r4, #0x0
	bl _call_via_r1
_0805FF4C:
	movs r0, #0x00
	str r0, [r4, #0x6C]
_0805FF50:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805FF58
sub_805FF58:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _0805FF74
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805FF7C @ =0x0805F6BD
	str r0, [r4, #0x4C]
_0805FF74:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805FF7C: .4byte sub_805F6BC
	thumb_func_start sub_805FF80
sub_805FF80:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08060086
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r5, r0, #0x0
	cmp r1, #0x01
	beq _0805FFCE
	cmp r1, #0x01
	bgt _0805FFA6
	cmp r1, #0x00
	beq _0805FFAC
	b _08060016
_0805FFA6:
	cmp r1, #0x02
	beq _0805FFF0
	b _08060016
_0805FFAC:
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	subs r0, #0x02
	b _0806000A
_0805FFCE:
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	subs r0, #0x02
	b _0806000A
_0805FFF0:
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	adds r0, #0x02
_0806000A:
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
_08060016:
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
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bne _08060060
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5C
	bl play_sfx_80195B4
	ldr r0, _0806005C @ =0x08060325
	b _08060084
	.byte 0x00, 0x00
_0806005C: .4byte sub_8060324
_08060060:
	cmp r0, #0x01
	bne _08060078
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5C
	bl play_sfx_80195B4
	ldr r0, _08060074 @ =0x08060289
	b _08060084
	.byte 0x00, 0x00
_08060074: .4byte sub_8060288
_08060078:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5C
	bl play_sfx_80195B4
	ldr r0, _0806008C @ =0x0806025D
_08060084:
	str r0, [r4, #0x4C]
_08060086:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806008C: .4byte sub_806025C
	thumb_func_start sub_8060090
sub_8060090:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806016C
	adds r0, r6, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080600B8
	adds r0, #0xFF
_080600B8:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _080600C6
	adds r3, #0xFF
_080600C6:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080600D0
	adds r0, #0xFF
_080600D0:
	asrs r0, r0, #0x08
	adds r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08060174 @ =0x0000410E
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r6, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r4, #0x0
	adds r3, #0x77
	adds r2, r5, #0x0
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
	ands r5, r0
	lsls r5, r5, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r5
	strb r1, [r3, #0x00]
	ldr r0, _08060178 @ =0x0806021D
	str r0, [r4, #0x4C]
	ldr r0, _0806017C @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08060180 @ =0x080601D5
	str r0, [r4, #0x58]
	ldr r0, _08060184 @ =0x0806018D
	str r0, [r4, #0x5C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r4, #0x74
	strb r0, [r4, #0x00]
	movs r0, #0x8A
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08060188 @ =0x080602B5
	str r0, [r6, #0x4C]
_0806016C:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08060174: .4byte 0x0000410E
_08060178: .4byte sub_806021C
_0806017C: .4byte sub_8087540
_08060180: .4byte sub_80601D4
_08060184: .4byte sub_806018C
_08060188: .4byte sub_80602B4
	thumb_func_start sub_806018C
sub_806018C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _080601C8
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080601A2
	adds r1, #0xFF
_080601A2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080601AC
	adds r2, #0xFF
_080601AC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080601B6
	adds r3, #0xFF
_080601B6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080601D0 @ =0x0000110F
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
_080601C8:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_080601D0: .4byte 0x0000110F
	thumb_func_start sub_80601D4
sub_80601D4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080601E8
	adds r1, #0xFF
_080601E8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080601F2
	adds r2, #0xFF
_080601F2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080601FC
	adds r3, #0xFF
_080601FC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08060218 @ =0x00001118
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08060218: .4byte 0x00001118
	thumb_func_start sub_806021C
sub_806021C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x10]
	ldr r1, _08060254 @ =0xFFFFFE9A
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0806024C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _08060258 @ =0x080603D9
	str r0, [r4, #0x4C]
_0806024C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060254: .4byte 0xFFFFFE9A
_08060258: .4byte sub_80603D8
	thumb_func_start sub_806025C
sub_806025C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806027E
	movs r0, #0x5C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08060284 @ =0x08060405
	str r0, [r4, #0x4C]
_0806027E:
	pop {r4}
	pop {r0}
	bx r0
_08060284: .4byte sub_8060404
	thumb_func_start sub_8060288
sub_8060288:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080602AA
	movs r0, #0x5C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080602B0 @ =0x08060439
	str r0, [r4, #0x4C]
_080602AA:
	pop {r4}
	pop {r0}
	bx r0
_080602B0: .4byte sub_8060438
	thumb_func_start sub_80602B4
sub_80602B4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806031A
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
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
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08060320 @ =0x08060465
	str r0, [r4, #0x4C]
_0806031A:
	pop {r4}
	pop {r0}
	bx r0
_08060320: .4byte sub_8060464
	thumb_func_start sub_8060324
sub_8060324:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08060350
	movs r0, #0x5C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08060358 @ =0x08060361
	str r0, [r4, #0x60]
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806035C @ =0x0806048D
	str r0, [r4, #0x4C]
_08060350:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060358: .4byte sub_8060360
_0806035C: .4byte sub_806048C
	thumb_func_start sub_8060360
sub_8060360:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	adds r1, r0, #0x0
	cmp r1, #0x00
	bne _08060394
	adds r0, r4, #0x0
	adds r0, #0x80
	str r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08060390 @ =0x080604E1
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _08060396
_08060390: .4byte sub_80604E0
_08060394:
	adds r0, r1, #0x0
_08060396:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x02, 0x1C, 0x9C, 0x32, 0x02, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0xB9, 0x04, 0x06, 0x08, 0x02, 0x1C, 0x9C, 0x32, 0x01, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xB9, 0x04, 0x06, 0x08, 0x02, 0x1C, 0x9C, 0x32, 0x00, 0x21, 0x11, 0x60
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xB9, 0x04, 0x06, 0x08
	thumb_func_start sub_80603D8
sub_80603D8:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _08060400 @ =0xFFFFFE9A
	adds r0, r1, r3
	str r0, [r2, #0x10]
	cmp r0, #0x00
	bge _080603EC
	adds r0, r1, #0x0
	subs r0, #0x67
_080603EC:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _080603FC
	adds r0, r2, #0x0
	bl sub_807C298
_080603FC:
	pop {r0}
	bx r0
_08060400: .4byte 0xFFFFFE9A
	thumb_func_start sub_8060404
sub_8060404:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0806042C
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _08060434 @ =0x08060501
	str r0, [r4, #0x4C]
_0806042C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060434: .4byte sub_8060500
	thumb_func_start sub_8060438
sub_8060438:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08060458
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08060460 @ =0x08060545
	str r0, [r4, #0x4C]
_08060458:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060460: .4byte sub_8060544
	thumb_func_start sub_8060464
sub_8060464:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08060480
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08060488 @ =0x080605A5
	str r0, [r4, #0x4C]
_08060480:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060488: .4byte sub_80605A4
	thumb_func_start sub_806048C
sub_806048C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080604AC
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080604B4 @ =0x080605F9
	str r0, [r4, #0x4C]
_080604AC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080604B4: .4byte sub_80605F8
	thumb_func_start sub_80604B8
sub_80604B8:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080604D4
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080604DC @ =0x0805FF81
	str r0, [r4, #0x4C]
_080604D4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080604DC: .4byte sub_805FF80
