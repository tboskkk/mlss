	.syntax unified
	.text

	thumb_func_start sub_806A3C0
sub_806A3C0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _0806A3EC
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x1C
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _0806A3F4 @ =0x080694B5
	str r0, [r4, #0x4C]
_0806A3EC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A3F4: .4byte sub_80694B4
