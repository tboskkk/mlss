	.syntax unified
	.text

	thumb_func_start sub_8060CB8
sub_8060CB8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08060CDC
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x02
	strh r1, [r0, #0x00]
	ldr r0, _08060CE4 @ =0x08060A59
	str r0, [r4, #0x4C]
_08060CDC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060CE4: .4byte sub_8060A58
