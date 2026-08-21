	.syntax unified
	.text

	thumb_func_start sub_80689AC
sub_80689AC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080689DA
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x38]
	movs r2, #0x88
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x14]
	ldr r0, _080689E0 @ =0x08068A29
	str r0, [r1, #0x4C]
	str r5, [r4, #0x4C]
_080689DA:
	pop {r4, r5}
	pop {r0}
	bx r0
_080689E0: .4byte sub_8068A28
