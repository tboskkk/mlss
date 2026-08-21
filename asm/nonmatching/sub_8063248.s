	.syntax unified
	.text

	thumb_func_start sub_8063248
sub_8063248:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r7, _080632A0 @ =0x03000E18
	ldr r0, [r7, #0x00]
	ldr r5, _080632A4 @ =0x03000E40
	ldr r6, _080632A8 @ =0x03000E44
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_801B1C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _080632AC
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x10]
	ldr r2, [r6, #0x00]
	str r2, [r4, #0x14]
	cmp r0, #0x00
	bge _08063274
	adds r0, #0xFF
_08063274:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08063280
	adds r0, #0xFF
_08063280:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0806328C
	adds r0, #0xFF
_0806328C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	b _080632B8
	.byte 0x00, 0x00
_080632A0: .4byte 0x03000E18
_080632A4: .4byte 0x03000E40
_080632A8: .4byte 0x03000E44
_080632AC:
	ldr r0, [r7, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	bl sub_807C298
_080632B8:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
