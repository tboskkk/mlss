	.syntax unified
	.text

	thumb_func_start sub_8075C10
sub_8075C10:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	cmp r0, #0x00
	bne _08075C3C
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	ldr r0, _08075C44 @ =0x080757C1
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08075C3C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08075C44: .4byte sub_80757C0
