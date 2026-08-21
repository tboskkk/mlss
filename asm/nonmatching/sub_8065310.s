	.syntax unified
	.text

	thumb_func_start sub_8065310
sub_8065310:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0806532E
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065338 @ =0x080651B1
	str r0, [r4, #0x4C]
_0806532E:
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08065338: .4byte sub_80651B0
