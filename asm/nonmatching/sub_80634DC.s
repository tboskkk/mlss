	.syntax unified
	.text

	thumb_func_start sub_80634DC
sub_80634DC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08063518
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08063500
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806350C
_08063500:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806350C:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x01
	strh r1, [r0, #0x00]
	ldr r0, _08063520 @ =0x08063525
	str r0, [r4, #0x4C]
_08063518:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063520: .4byte sub_8063524
