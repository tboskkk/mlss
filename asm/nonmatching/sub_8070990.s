	.syntax unified
	.text

	thumb_func_start sub_8070990
sub_8070990:
	push {r4, lr}
	mov r12, r0
	adds r0, #0xA4
	movs r1, #0x00
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r1, [r0, #0x00]
	mov r4, r12
	adds r4, #0x9C
	ldr r3, _080709D4 @ =0x083B873C
	ldr r2, _080709D8 @ =0x03000E7D
	ldr r0, _080709DC @ =0x03000E7C
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	str r0, [r4, #0x00]
	ldr r0, _080709E0 @ =0x0806F035
	mov r1, r12
	str r0, [r1, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080709D4: .4byte 0x083B873C
_080709D8: .4byte 0x03000E7D
_080709DC: .4byte 0x03000E7C
_080709E0: .4byte sub_806F034
