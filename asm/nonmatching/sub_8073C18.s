	.syntax unified
	.text

	thumb_func_start sub_8073C18
sub_8073C18:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08073C34
	b _08073E1E
_08073C34:
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8B
	lsls r0, r0, #0x01
	movs r4, #0x01
	negs r4, r4
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0xD5
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08073C64
	adds r0, #0xFF
_08073C64:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08073C72
	adds r0, #0xFF
_08073C72:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08073C80
	adds r0, #0xFF
_08073C80:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08073E30 @ =0x000022E8
	bl sub_80DF024
	movs r0, #0x9C
	adds r0, r0, r6
	mov r8, r0
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08073C9A
	adds r2, #0xFF
_08073C9A:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08073CA4
	adds r0, #0xFF
_08073CA4:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x0A
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08073CB2
	adds r0, #0xFF
_08073CB2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08073E34 @ =0x0000414E
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x74
	ldrb r1, [r4, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r3, r5, #0x0
	adds r3, #0x77
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08073E38 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	str r2, [r0, #0x00]
	adds r0, #0x08
	str r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08073E3C @ =0x08073EAD
	str r0, [r5, #0x4C]
	ldr r0, _08073E40 @ =0x080740D5
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x3C]
	ldr r2, _08073E44 @ =0xFFFFF600
	adds r0, r0, r2
	str r0, [r1, #0x00]
	movs r7, #0x01
	mov r3, r8
	ldr r0, [r3, #0x00]
	mov r9, r4
	movs r1, #0xA0
	adds r1, r1, r6
	mov r10, r1
	adds r2, r6, #0x0
	adds r2, #0xA8
	str r2, [sp, #0x00C]
	cmp r7, r0
	bge _08073E0C
_08073D50:
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08073D5A
	adds r2, #0xFF
_08073D5A:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08073D64
	adds r0, #0xFF
_08073D64:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x0A
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08073D72
	adds r0, #0xFF
_08073D72:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08073E34 @ =0x0000414E
	bl sub_807BF34
	str r0, [r5, #0x30]
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r3, #0x41
	negs r3, r3
	adds r0, r3, #0x0
	ands r1, r0
	adds r3, #0x20
	adds r0, r3, #0x0
	ands r1, r0
	strb r1, [r2, #0x00]
	ldr r0, _08073E38 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	str r7, [r0, #0x00]
	adds r4, r5, #0x0
	adds r4, #0xA4
	lsls r0, r7, #0x08
	mov r2, r8
	ldr r1, [r2, #0x00]
	bl __divsi3
	lsls r0, r0, #0x08
	str r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08073E3C @ =0x08073EAD
	str r0, [r5, #0x4C]
	ldr r0, _08073E40 @ =0x080740D5
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x3C]
	ldr r3, _08073E44 @ =0xFFFFF600
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r7, #0x01
	mov r1, r8
	ldr r0, [r1, #0x00]
	cmp r7, r0
	blt _08073D50
_08073E0C:
	movs r0, #0x00
	str r0, [r5, #0x30]
	mov r2, r10
	str r0, [r2, #0x00]
	movs r0, #0x30
	ldr r3, [sp, #0x00C]
	str r0, [r3, #0x00]
	ldr r0, _08073E48 @ =0x0807413D
	str r0, [r6, #0x4C]
_08073E1E:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08073E30: .4byte 0x000022E8
_08073E34: .4byte 0x0000414E
_08073E38: .4byte sub_8087540
_08073E3C: .4byte sub_8073EAC
_08073E40: .4byte sub_80740D4
_08073E44: .4byte 0xFFFFF600
_08073E48: .4byte sub_807413C
