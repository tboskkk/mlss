	.syntax unified
	.text

	thumb_func_start sub_80DB0FC
sub_80DB0FC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DB120
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x18
	strh r1, [r0, #0x00]
	ldr r0, _080DB128 @ =0x080DABFD
	str r0, [r4, #0x4C]
_080DB120:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DB128: .4byte sub_80DABFC
