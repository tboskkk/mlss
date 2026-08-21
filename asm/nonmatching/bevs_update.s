	.syntax unified
	.text

	thumb_func_start bevs_update
bevs_update: @ 080EF34C
	push {r4, r5, r6, lr}
	add sp, #-0x03C
	adds r6, r0, #0x0
	ldr r5, _080EF38C @ =0x03000FD0
	ldr r4, [r5, #0x00]
	movs r0, #0xA9
	lsls r0, r0, #0x03
	adds r4, r4, r0
	adds r0, r6, #0x0
	bl sub_80F03C8
	movs r0, #0x03
	strb r0, [r4, #0x00]
	ldr r0, [r5, #0x00]
	movs r1, #0xFC
	lsls r1, r1, #0x01
	adds r4, r0, r1
	movs r5, #0xA6
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldrh r5, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _080EF390
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x14]
	bl sub_8028C40
	b _080EF3EC
	.byte 0x00, 0x00
_080EF38C: .4byte 0x03000FD0
_080EF390:
	movs r0, #0x14
	ands r0, r5
	cmp r0, #0x00
	bne _080EF3EC
	ldr r6, [r6, #0x00]
	movs r1, #0x01
	adds r0, r1, #0x0
	eors r0, r5
	ands r0, r1
	cmp r0, #0x00
	bne _080EF3EC
	b _080EF3DA
_080EF3A8:
	ldr r0, _080EF3F4 @ =0x03000FC0
	ldr r2, [r0, #0x00]
	ldr r0, _080EF3F8 @ =0x03000FD0
	ldr r3, [r0, #0x00]
	movs r0, #0x96
	lsls r0, r0, #0x03
	adds r3, r3, r0
	movs r5, #0xE3
	lsls r5, r5, #0x02
	adds r0, r2, r5
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl script_read_next_line
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	add r3, sp, #0x008
	bl fld_script_execute_next_command
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080EF3EC
_080EF3DA:
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	bl sub_80EB838
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	beq _080EF3A8
_080EF3EC:
	add sp, #0x03C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080EF3F4: .4byte 0x03000FC0
_080EF3F8: .4byte 0x03000FD0
