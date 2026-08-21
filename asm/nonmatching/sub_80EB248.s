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
