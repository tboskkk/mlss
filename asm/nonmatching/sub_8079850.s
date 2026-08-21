	.syntax unified
	.text

	thumb_func_start sub_8079850
sub_8079850:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	ldr r1, [r0, #0x38]
	cmp r1, #0x00
	bge _08079860
	adds r1, #0xFF
_08079860:
	asrs r1, r1, #0x08
	ldr r2, [r0, #0x3C]
	cmp r2, #0x00
	bge _0807986A
	adds r2, #0xFF
_0807986A:
	asrs r2, r2, #0x08
	ldr r3, [r0, #0x40]
	cmp r3, #0x00
	bge _08079874
	adds r3, #0xFF
_08079874:
	asrs r3, r3, #0x08
	str r0, [sp, #0x000]
	ldr r0, _080798A0 @ =0x00002AA6
	bl sub_80DF024
	ldr r0, [r5, #0x30]
	bl sub_807C298
	movs r4, #0x00
	str r4, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r0, _080798A4 @ =0x03000ED0
	strb r4, [r0, #0x00]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080798A0: .4byte 0x00002AA6
_080798A4: .4byte 0x03000ED0
