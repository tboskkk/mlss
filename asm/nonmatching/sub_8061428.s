	.syntax unified
	.text

	thumb_func_start sub_8061428
sub_8061428:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806144C
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, _08061454 @ =0x08060F71
	str r0, [r4, #0x4C]
_0806144C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061454: .4byte sub_8060F70
