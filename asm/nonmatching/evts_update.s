	.syntax unified
	.text

	thumb_func_start evts_update
evts_update: @ 080EF500
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x03C
	adds r6, r0, #0x0
	ldr r4, _080EF548 @ =0x03000FD0
	ldr r0, [r4, #0x00]
	movs r1, #0xA9
	lsls r1, r1, #0x03
	adds r1, r1, r0
	mov r8, r1
	adds r0, r6, #0x0
	bl sub_80EFC08
	movs r0, #0x00
	mov r2, r8
	strb r0, [r2, #0x00]
	ldr r4, [r4, #0x00]
_080EF526:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r2, [r0, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x01
	adds r0, r7, #0x0
	ands r0, r2
	cmp r0, #0x00
	beq _080EF54C
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x14]
	bl sub_8028C40
	adds r4, #0xA8
	mov r9, r4
	b _080EF5AE
	.byte 0x00, 0x00
_080EF548: .4byte 0x03000FD0
_080EF54C:
	movs r0, #0x14
	ands r0, r2
	movs r1, #0xA8
	adds r1, r1, r4
	mov r9, r1
	cmp r0, #0x00
	bne _080EF5AE
	ldr r5, [r6, #0x00]
	movs r1, #0x01
	adds r0, r1, #0x0
	eors r0, r2
	ands r0, r1
	cmp r0, #0x00
	bne _080EF5AE
	b _080EF59C
_080EF56A:
	ldr r0, _080EF60C @ =0x03000FC0
	ldr r2, [r0, #0x00]
	ldr r0, _080EF610 @ =0x03000FD0
	ldr r3, [r0, #0x00]
	movs r7, #0x96
	lsls r7, r7, #0x03
	adds r3, r3, r7
	movs r7, #0xE3
	lsls r7, r7, #0x02
	adds r0, r2, r7
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl script_read_next_line
	adds r0, r5, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	add r3, sp, #0x008
	bl fld_script_execute_next_command
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080EF5AE
_080EF59C:
	adds r0, r5, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	bl sub_80EB838
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	beq _080EF56A
_080EF5AE:
	mov r1, r8
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	mov r4, r9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bls _080EF526
	ldr r0, [r6, #0x00]
	bl sub_80EB248
	adds r0, r6, #0x0
	bl sub_80EFE7C
	adds r0, r6, #0x0
	bl sub_80F0000
	ldr r4, _080EF614 @ =0x03000FCC
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x04]
	movs r2, #0xD9
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080EF5FC
	adds r0, r1, #0x0
	bl sub_80E635C
	ldr r1, [r4, #0x00]
	ldr r1, [r1, #0x04]
	movs r7, #0xD9
	lsls r7, r7, #0x01
	adds r1, r1, r7
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	bl sub_80E7438
_080EF5FC:
	add sp, #0x03C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080EF60C: .4byte 0x03000FC0
_080EF610: .4byte 0x03000FD0
_080EF614: .4byte 0x03000FCC
