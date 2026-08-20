	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80EB248
sub_80EB248:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x044
	mov r8, r0
	ldr r0, [r0, #0x14]
	ldr r2, _080EB2DC @ =0x0000010B
	adds r1, r0, r2
	ldrb r1, [r1, #0x00]
	str r1, [sp, #0x03C]
	movs r6, #0x00
	adds r7, r0, #0x0
	adds r7, #0x28
	cmp r6, r1
	bge _080EB344
_080EB26A:
	mov r10, r7
	mov r3, r10
	adds r3, #0x04
	mov r10, r3
	subs r3, #0x04
	ldm r3!, {r2}
	ldr r4, _080EB2E0 @ =0x00000216
	adds r0, r2, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	ldr r1, [sp, #0x03C]
	lsls r1, r1, #0x10
	str r1, [sp, #0x040]
	lsls r6, r6, #0x10
	mov r9, r6
	cmp r0, #0x00
	bne _080EB330
	adds r5, r2, #0x0
	adds r5, #0x58
	adds r6, r2, #0x0
	adds r6, #0xF8
	ldrh r1, [r6, #0x00]
	movs r3, #0xDB
	lsls r3, r3, #0x01
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080EB330
	ldr r0, _080EB2E4 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r4, #0x96
	lsls r4, r4, #0x03
	adds r0, r0, r4
	adds r1, r2, #0x0
	adds r1, #0x70
	ldr r2, _080EB2E8 @ =0x03000FC0
	ldr r2, [r2, #0x00]
	movs r3, #0xE3
	lsls r3, r3, #0x02
	adds r2, r2, r3
	movs r3, #0x33
	str r3, [sp, #0x000]
	mov r4, r9
	asrs r3, r4, #0x10
	str r3, [sp, #0x004]
	movs r3, #0x00
	bl sub_80E9C4C
	ldr r4, [r7, #0x00]
	ldrb r0, [r6, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080EB330
	b _080EB31E
_080EB2DC: .4byte 0x0000010B
_080EB2E0: .4byte 0x00000216
_080EB2E4: .4byte 0x03000FD0
_080EB2E8: .4byte 0x03000FC0
_080EB2EC:
	ldr r0, _080EB398 @ =0x03000FC0
	ldr r2, [r0, #0x00]
	ldr r0, _080EB39C @ =0x03000FD0
	ldr r3, [r0, #0x00]
	movs r6, #0x96
	lsls r6, r6, #0x03
	adds r3, r3, r6
	movs r6, #0xE3
	lsls r6, r6, #0x02
	adds r0, r2, r6
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	adds r0, r5, #0x0
	add r1, sp, #0x008
	bl script_read_next_line
	mov r0, r8
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	add r3, sp, #0x008
	bl fld_script_execute_next_command
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080EB330
_080EB31E:
	mov r0, r8
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl sub_80EB838
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	beq _080EB2EC
_080EB330:
	movs r1, #0x80
	lsls r1, r1, #0x09
	add r1, r9
	mov r7, r10
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x040]
	asrs r0, r2, #0x10
	cmp r1, r0
	blt _080EB26A
_080EB344:
	mov r3, r8
	ldr r0, [r3, #0x14]
	ldr r4, _080EB3A0 @ =0x0000010B
	adds r2, r0, r4
	ldrb r6, [r2, #0x00]
	adds r7, r0, #0x0
	adds r7, #0x28
	cmp r6, #0x00
	bne _080EB358
	b _080EB478
_080EB358:
	ldr r4, [r7, #0x00]
	adds r5, r4, #0x0
	adds r5, #0x58
	adds r0, r4, #0x0
	bl sub_8046D18
	adds r4, #0xF8
	ldrh r4, [r4, #0x00]
	movs r0, #0x42
	ands r0, r4
	cmp r0, #0x00
	beq _080EB3A8
	movs r0, #0x84
	ands r0, r4
	cmp r0, #0x00
	bne _080EB3A8
	ldr r2, [r7, #0x00]
	ldr r1, _080EB3A4 @ =0x00000216
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080EB468
	mov r3, r8
	ldr r1, [r3, #0x14]
	adds r1, #0x28
	adds r0, r2, #0x0
	bl sub_80461B4
	b _080EB468
	.byte 0x00, 0x00
_080EB398: .4byte 0x03000FC0
_080EB39C: .4byte 0x03000FD0
_080EB3A0: .4byte 0x0000010B
_080EB3A4: .4byte 0x00000216
_080EB3A8:
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldrh r2, [r0, #0x00]
	ldr r4, _080EB438 @ =0x00000484
	adds r0, r4, #0x0
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x03
	cmp r0, r1
	bne _080EB444
	ldr r3, [r7, #0x00]
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	movs r4, #0x01
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080EB468
	ldr r1, _080EB43C @ =0x00000216
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080EB404
	ldr r1, _080EB440 @ =0x0000020E
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _080EB468
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080EB468
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080EB468
_080EB404:
	ldr r2, _080EB440 @ =0x0000020E
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _080EB422
	movs r4, #0xCF
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x01
	bne _080EB468
_080EB422:
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r3, r0
	mov r2, r8
	ldr r0, [r2, #0x14]
	ldr r2, [r1, #0x00]
	adds r1, r3, #0x0
	bl _call_via_r2
	b _080EB468
	.byte 0x00, 0x00
_080EB438: .4byte 0x00000484
_080EB43C: .4byte 0x00000216
_080EB440: .4byte 0x0000020E
_080EB444:
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r3, #0x0
	ands r0, r2
	cmp r0, #0x00
	beq _080EB468
	ldr r0, [r7, #0x00]
	ldr r4, _080EB488 @ =0x00000216
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080EB468
	mov r1, r8
	ldr r0, [r1, #0x14]
	bl sub_8028C40
_080EB468:
	lsls r0, r6, #0x10
	ldr r2, _080EB48C @ =0xFFFF0000
	adds r0, r0, r2
	adds r7, #0x04
	lsrs r6, r0, #0x10
	cmp r0, #0x00
	ble _080EB478
	b _080EB358
_080EB478:
	add sp, #0x044
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080EB488: .4byte 0x00000216
_080EB48C: .4byte 0xFFFF0000
	thumb_func_start sub_80EB490
sub_80EB490:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r3, [r4, #0x00]
	ldrb r1, [r3, #0x12]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _080EB4B2
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x12]
_080EB4B2:
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080EB51C
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080EB50A
	adds r4, r2, #0x0
	adds r4, #0xA0
	ldrh r1, [r4, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080EB4FC
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrh r1, [r4, #0x00]
	ldr r0, _080EB4F8 @ =0x0000FDDF
	ands r0, r1
	strh r0, [r4, #0x00]
	b _080EB51C
	.byte 0x00, 0x00
_080EB4F8: .4byte 0x0000FDDF
_080EB4FC:
	adds r0, r5, #0x0
	bl sub_80474D0
	ldrh r0, [r4, #0x00]
	movs r1, #0x20
	eors r0, r1
	strh r0, [r4, #0x00]
_080EB50A:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080EB51C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80EB524
sub_80EB524:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r3, #0x0
	lsls r2, r2, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0x04
	bls _080EB53C
	b _080EB6A0
_080EB53C:
	lsls r0, r0, #0x02
	ldr r1, _080EB548 @ =0x080EB54C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080EB548: .4byte 0x080EB54C
	.byte 0x60, 0xB6, 0x0E, 0x08, 0x7C, 0xB6, 0x0E, 0x08, 0x8A, 0xB5, 0x0E, 0x08, 0x20, 0xB6, 0x0E, 0x08
	.byte 0x60, 0xB5, 0x0E, 0x08, 0x00, 0x2C, 0x00, 0xD1, 0x61, 0xE1, 0x20, 0x1C, 0xF8, 0x30, 0x00, 0x78
	.byte 0x01, 0x21, 0x48, 0x40, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1, 0x58, 0xE1, 0x30, 0x1C, 0x1C, 0x30
	.byte 0x21, 0x1C, 0x58, 0x31, 0x01, 0x22, 0x00, 0x92, 0xFF, 0x22, 0x01, 0x92, 0x38, 0xE1, 0x21, 0x48
	.byte 0x80, 0x46, 0x00, 0x68, 0x03, 0x1C, 0xA8, 0x33, 0xA4, 0x21, 0x49, 0x00, 0x40, 0x18, 0x00, 0x78
	.byte 0x01, 0x21, 0x48, 0x40, 0x08, 0x40, 0x00, 0x28, 0x3C, 0xD0, 0x30, 0x1C, 0x1C, 0x30, 0x01, 0x27
	.byte 0x00, 0x97, 0xFF, 0x21, 0x01, 0x91, 0x19, 0x1C, 0x2A, 0x1C, 0x00, 0x23, 0xFF, 0xF7, 0x06, 0xF8
	.byte 0x74, 0x69, 0xA0, 0x6A, 0x14, 0x4D, 0x40, 0x19, 0x01, 0x78, 0x38, 0x1C, 0x08, 0x40, 0x00, 0x28
	.byte 0x13, 0xD0, 0x40, 0x46, 0x02, 0x68, 0x11, 0x49, 0x52, 0x18, 0x13, 0x78, 0x99, 0x09, 0x10, 0x48
	.byte 0x01, 0x40, 0x89, 0x01, 0x3F, 0x20, 0x18, 0x40, 0x08, 0x43, 0x10, 0x70, 0xA1, 0x6A, 0x49, 0x19
	.byte 0x0A, 0x78, 0x02, 0x20, 0x40, 0x42, 0x10, 0x40, 0x08, 0x70, 0xE0, 0x6A, 0x40, 0x19, 0x01, 0x78
	.byte 0x38, 0x1C, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1, 0xB1, 0xE0, 0x40, 0x46, 0x02, 0x68, 0x03, 0x49
	.byte 0x52, 0x18, 0x9C, 0xE0, 0xD0, 0x0F, 0x00, 0x03, 0x0D, 0x02, 0x00, 0x00, 0x5A, 0x05, 0x00, 0x00
	.byte 0xFE, 0xFF, 0x00, 0x00, 0x0D, 0x48, 0x02, 0x68, 0xA8, 0x20, 0x40, 0x00, 0x13, 0x18, 0xF8, 0x21
	.byte 0x49, 0x00, 0x50, 0x18, 0x00, 0x78, 0x01, 0x21, 0x48, 0x40, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1
	.byte 0xF5, 0xE0, 0x07, 0x49, 0x50, 0x18, 0x01, 0x78, 0x01, 0x22, 0x10, 0x1C, 0x08, 0x40, 0x00, 0x28
	.byte 0x00, 0xD1, 0xEC, 0xE0, 0x30, 0x1C, 0x1C, 0x30, 0x00, 0x92, 0xCE, 0xE0, 0xD0, 0x0F, 0x00, 0x03
	.byte 0x5A, 0x05, 0x00, 0x00, 0x05, 0x48, 0x03, 0x68, 0x18, 0x1C, 0xA0, 0x30, 0x00, 0x78, 0x01, 0x21
	.byte 0x48, 0x40, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1, 0xD9, 0xE0, 0xBA, 0xE0, 0xD0, 0x0F, 0x00, 0x03
	.byte 0x07, 0x48, 0x00, 0x68, 0xFC, 0x21, 0x49, 0x00, 0x43, 0x18, 0xA0, 0x31, 0x40, 0x18, 0x00, 0x78
	.byte 0x01, 0x21, 0x48, 0x40, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1, 0xC8, 0xE0, 0xA9, 0xE0, 0x00, 0x00
	.byte 0xD0, 0x0F, 0x00, 0x03
_080EB6A0:
	cmp r4, #0x00
	beq _080EB6C6
	adds r0, r4, #0x0
	adds r0, #0xF8
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080EB6C6
	adds r0, r6, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	adds r1, #0x58
	movs r2, #0x01
	str r2, [sp, #0x000]
	movs r2, #0xFF
	str r2, [sp, #0x004]
	b _080EB7FC
_080EB6C6:
	ldr r1, _080EB788 @ =0x03000FD0
	ldr r0, [r1, #0x00]
	mov r12, r0
	mov r3, r12
	adds r3, #0xA8
	movs r0, #0xA4
	lsls r0, r0, #0x01
	add r0, r12
	ldrb r0, [r0, #0x00]
	movs r4, #0x01
	eors r0, r4
	ands r0, r4
	mov r8, r1
	cmp r0, #0x00
	beq _080EB7A0
	adds r0, r6, #0x0
	adds r0, #0x1C
	movs r7, #0x01
	str r7, [sp, #0x000]
	movs r1, #0xFF
	str r1, [sp, #0x004]
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
	ldr r4, [r6, #0x14]
	ldr r0, [r4, #0x28]
	ldr r5, _080EB78C @ =0x0000020D
	adds r0, r0, r5
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080EB734
	mov r1, r8
	ldr r2, [r1, #0x00]
	ldr r0, _080EB790 @ =0x0000055A
	adds r2, r2, r0
	ldrb r3, [r2, #0x00]
	lsrs r1, r3, #0x06
	ldr r0, _080EB794 @ =0x0000FFFE
	ands r1, r0
	lsls r1, r1, #0x06
	movs r0, #0x3F
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x28]
	adds r1, r1, r5
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_080EB734:
	ldr r0, [r4, #0x2C]
	adds r0, r0, r5
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080EB76A
	mov r1, r8
	ldr r2, [r1, #0x00]
	ldr r0, _080EB790 @ =0x0000055A
	adds r2, r2, r0
	ldrb r3, [r2, #0x00]
	lsrs r1, r3, #0x06
	ldr r0, _080EB798 @ =0x0000FFFD
	ands r1, r0
	lsls r1, r1, #0x06
	movs r0, #0x3F
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x2C]
	adds r1, r1, r5
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_080EB76A:
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldr r1, _080EB790 @ =0x0000055A
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080EB82A
	ldr r0, [r6, #0x14]
	ldr r1, _080EB79C @ =0x000003FF
	bl sub_8028D6C
	b _080EB82A
	.byte 0x00, 0x00
_080EB788: .4byte 0x03000FD0
_080EB78C: .4byte 0x0000020D
_080EB790: .4byte 0x0000055A
_080EB794: .4byte 0x0000FFFE
_080EB798: .4byte 0x0000FFFD
_080EB79C: .4byte 0x000003FF
_080EB7A0:
	movs r3, #0xA8
	lsls r3, r3, #0x01
	add r3, r12
	movs r0, #0xF8
	lsls r0, r0, #0x01
	add r0, r12
	ldrb r0, [r0, #0x00]
	eors r0, r4
	ands r0, r4
	cmp r0, #0x00
	beq _080EB7D4
	ldr r0, _080EB7D0 @ =0x0000055A
	add r0, r12
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080EB7D4
	adds r0, r6, #0x0
	adds r0, #0x1C
	str r2, [sp, #0x000]
	b _080EB7F6
	.byte 0x00, 0x00
_080EB7D0: .4byte 0x0000055A
_080EB7D4:
	mov r0, r8
	ldr r2, [r0, #0x00]
	movs r1, #0xFC
	lsls r1, r1, #0x01
	adds r3, r2, r1
	adds r1, #0xA0
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080EB806
	adds r0, r6, #0x0
	adds r0, #0x1C
	movs r1, #0x01
	str r1, [sp, #0x000]
_080EB7F6:
	movs r1, #0xFF
	str r1, [sp, #0x004]
	adds r1, r3, #0x0
_080EB7FC:
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
	b _080EB82A
_080EB806:
	adds r0, r2, #0x0
	adds r0, #0xA0
	ldrb r0, [r0, #0x00]
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080EB82A
	adds r0, r6, #0x0
	adds r0, #0x1C
	movs r1, #0x01
	str r1, [sp, #0x000]
	movs r1, #0xFF
	str r1, [sp, #0x004]
	adds r1, r2, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
_080EB82A:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80EB838
sub_80EB838:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r0, [sp, #0x000]
	mov r9, r1
	adds r5, r2, #0x0
	ldr r1, [r5, #0x00]
	ldr r0, [r5, #0x04]
	cmp r1, r0
	beq _080EB856
	movs r0, #0x00
	b _080EBAAE
_080EB856:
	adds r2, r5, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x08
	ands r0, r1
	mov r8, r2
	cmp r0, #0x00
	beq _080EB8A2
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldrb r1, [r0, #0x00]
	cmp r1, #0x03
	bhi _080EB880
	ldr r2, _080EB87C @ =0x03000FD0
	movs r0, #0xA8
	muls r1, r0
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	b _080EB88C
_080EB87C: .4byte 0x03000FD0
_080EB880:
	ldr r2, [sp, #0x000]
	ldr r0, [r2, #0x14]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x18]
	adds r0, #0x58
_080EB88C:
	adds r2, r0, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080EB980 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2, #0x00]
	mov r3, r8
	ldrh r1, [r3, #0x00]
	ldr r0, _080EB984 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r3, #0x00]
_080EB8A2:
	mov r0, r9
	cmp r0, #0x00
	bne _080EB942
	ldr r1, _080EB988 @ =0x03000FD0
	ldr r4, [r1, #0x00]
	movs r2, #0xA9
	lsls r2, r2, #0x03
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r3, #0xAA
	lsls r3, r3, #0x03
	adds r6, r4, r3
	movs r3, #0x01
	lsls r3, r7
	ldr r2, [r6, #0x00]
	adds r0, r2, #0x0
	ands r0, r3
	mov r10, r1
	cmp r0, #0x00
	beq _080EB942
	bics r2, r3
	str r2, [r6, #0x00]
	ldr r1, _080EB98C @ =0x00000544
	adds r0, r4, r1
	adds r0, r0, r7
	ldrb r0, [r0, #0x00]
	ldr r2, [sp, #0x000]
	ldr r1, [r2, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r3, [r0, #0x28]
	adds r2, r3, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	ldr r0, _080EB990 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _080EB994 @ =0x00000546
	adds r0, r4, r1
	adds r0, r0, r7
	ldrb r1, [r0, #0x00]
	subs r2, #0xCE
	strb r1, [r2, #0x00]
	ldrb r0, [r0, #0x00]
	strb r0, [r3, #0x02]
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _080EB926
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x03
	beq _080EB926
	cmp r1, #0x04
	bne _080EB942
_080EB926:
	mov r2, r10
	ldr r0, [r2, #0x00]
	ldr r1, _080EB994 @ =0x00000546
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #0x00]
	adds r3, #0x24
	lsrs r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080EB942:
	mov r3, r8
	ldrh r1, [r3, #0x00]
	ldr r4, _080EB998 @ =0xFFFFFBFC
	ands r4, r1
	cmp r4, #0x00
	beq _080EB950
	b _080EBAAC
_080EB950:
	ldr r0, [r5, #0x08]
	cmp r0, #0x00
	beq _080EB99C
	str r0, [r5, #0x00]
	ldr r0, [r5, #0x0C]
	str r0, [r5, #0x04]
	adds r6, r5, #0x0
	adds r6, #0xA2
	ldrh r0, [r6, #0x00]
	movs r2, #0x00
	strh r0, [r3, #0x00]
	adds r3, r5, #0x0
	adds r3, #0xA5
	ldrb r1, [r3, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA4
	strb r1, [r0, #0x00]
	str r4, [r5, #0x0C]
	str r4, [r5, #0x08]
	strh r4, [r6, #0x00]
	strb r2, [r3, #0x00]
	movs r0, #0x00
	b _080EBAAE
	.byte 0x00, 0x00
_080EB980: .4byte 0x0000FFFB
_080EB984: .4byte 0x0000FFF7
_080EB988: .4byte 0x03000FD0
_080EB98C: .4byte 0x00000544
_080EB990: .4byte 0x0000FF7F
_080EB994: .4byte 0x00000546
_080EB998: .4byte 0xFFFFFBFC
_080EB99C:
	ldr r0, _080EBA40 @ =0x0000FFFE
	ands r1, r0
	mov r2, r8
	strh r1, [r2, #0x00]
	mov r3, r9
	cmp r3, #0x00
	beq _080EB9AC
	b _080EBAAC
_080EB9AC:
	ldr r5, _080EBA44 @ =0x03000FD0
	ldr r1, [r5, #0x00]
	movs r0, #0xA9
	lsls r0, r0, #0x03
	mov r12, r0
	adds r0, r1, r0
	ldrb r7, [r0, #0x00]
	cmp r7, #0x01
	bne _080EBA16
	ldr r2, [sp, #0x000]
	ldr r2, [r2, #0x14]
	mov r10, r2
	ldr r4, [r2, #0x28]
	ldr r3, _080EBA48 @ =0x0000020D
	mov r8, r3
	add r4, r8
	ldrb r5, [r4, #0x00]
	lsls r2, r5, #0x1F
	lsrs r2, r2, #0x1F
	ldr r0, _080EBA4C @ =0x0000055A
	mov r9, r0
	adds r0, r1, r0
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x06
	adds r0, r7, #0x0
	bics r0, r1
	orrs r2, r0
	movs r6, #0x01
	ands r2, r6
	movs r3, #0x02
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r5
	orrs r0, r2
	strb r0, [r4, #0x00]
	mov r1, r10
	ldr r2, [r1, #0x2C]
	add r2, r8
	ldrb r4, [r2, #0x00]
	lsls r1, r4, #0x1F
	lsrs r1, r1, #0x1F
	ldr r5, _080EBA44 @ =0x03000FD0
	ldr r0, [r5, #0x00]
	add r0, r9
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x07
	mvns r0, r0
	ands r0, r7
	orrs r1, r0
	ands r1, r6
	ands r3, r4
	orrs r3, r1
	strb r3, [r2, #0x00]
_080EBA16:
	ldr r0, _080EBA44 @ =0x03000FD0
	ldr r2, [r0, #0x00]
	ldr r5, _080EBA4C @ =0x0000055A
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080EBA50
	mov r1, r12
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _080EBAAC
	ldr r2, [sp, #0x000]
	ldr r0, [r2, #0x14]
	movs r1, #0x00
	bl sub_8028D6C
	b _080EBAAC
	.byte 0x00, 0x00
_080EBA40: .4byte 0x0000FFFE
_080EBA44: .4byte 0x03000FD0
_080EBA48: .4byte 0x0000020D
_080EBA4C: .4byte 0x0000055A
_080EBA50:
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _080EBAAC
	lsls r0, r1, #0x1A
	mov r3, r12
	adds r1, r2, r3
	lsrs r0, r0, #0x1D
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	bne _080EBAAC
	ldr r1, [sp, #0x000]
	ldr r0, [r1, #0x14]
	ldr r4, _080EBAC0 @ =0x00000554
	adds r1, r2, r4
	ldrh r1, [r1, #0x00]
	bl sub_8028D6C
	ldr r2, _080EBAC4 @ =0x03000FD0
	ldr r3, [r2, #0x00]
	adds r4, r3, r4
	ldrh r0, [r4, #0x00]
	negs r1, r0
	orrs r1, r0
	lsrs r1, r1, #0x1F
	adds r3, r3, r5
	lsls r4, r1, #0x02
	ldrb r2, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r4
	lsls r1, r1, #0x01
	movs r2, #0x03
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r3, _080EBAC4 @ =0x03000FD0
	ldr r1, [r3, #0x00]
	adds r1, r1, r5
	ldrb r2, [r1, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_080EBAAC:
	movs r0, #0x01
_080EBAAE:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EBAC0: .4byte 0x00000554
_080EBAC4: .4byte 0x03000FD0
