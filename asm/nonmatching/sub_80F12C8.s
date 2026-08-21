	.syntax unified
	.text

	thumb_func_start sub_80F12C8
sub_80F12C8:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r0, [r3, #0x00]
	ldr r1, [r4, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x28]
	ldr r3, [r1, #0x0C]
	asrs r3, r3, #0x08
	ldr r0, [r1, #0x10]
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_8045A94
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F1304
	movs r0, #0x01
	b _080F1312
_080F1304:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	movs r3, #0x00
	bl script_enable_flag_2
	movs r0, #0x00
_080F1312:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
