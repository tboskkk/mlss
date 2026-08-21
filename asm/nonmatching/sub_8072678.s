	.syntax unified
	.text

	thumb_func_start sub_8072678
sub_8072678:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080726C2
	adds r0, r4, #0x0
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807269A
	adds r1, #0xFF
_0807269A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080726A4
	adds r2, #0xFF
_080726A4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080726AE
	adds r3, #0xFF
_080726AE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080726CC @ =0x00002222
	bl sub_80DF024
	ldr r0, _080726D0 @ =0x080726D5
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r5, [r0, #0x00]
_080726C2:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080726CC: .4byte 0x00002222
_080726D0: .4byte sub_80726D4
