	.syntax unified
	.text

	thumb_func_start sub_80FAD6C
sub_80FAD6C:
	push {r4, r5, r6, lr}
	add sp, #-0x03C
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080FADB2
	movs r0, #0x00
	b _080FADC4
_080FAD88:
	ldr r0, _080FADCC @ =0x03000FC0
	ldr r2, [r0, #0x00]
	ldr r0, [r5, #0x24]
	ldr r6, _080FADD0 @ =0x00000908
	adds r3, r0, r6
	adds r6, #0x94
	adds r0, r0, r6
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl script_read_next_line
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	add r2, sp, #0x008
	bl stc_script_execute_next_command
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080FADC2
_080FADB2:
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_80F9668
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	beq _080FAD88
_080FADC2:
	movs r0, #0x01
_080FADC4:
	add sp, #0x03C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080FADCC: .4byte 0x03000FC0
_080FADD0: .4byte 0x00000908
