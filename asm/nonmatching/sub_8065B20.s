	.syntax unified
	.text

	thumb_func_start sub_8065B20
sub_8065B20:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065B3E
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r0, _08065B44 @ =0x08065C5D
	str r0, [r4, #0x4C]
_08065B3E:
	pop {r4}
	pop {r0}
	bx r0
_08065B44: .4byte sub_8065C5C
