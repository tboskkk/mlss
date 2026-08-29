	.syntax unified
	.text

	thumb_func_start sub_8065B74
sub_8065B74:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08065B86
	movs r0, #0x02
	str r0, [r1, #0x00]
_08065B86:
	adds r0, r2, #0x0
	adds r0, #0xA8
	ldr r1, [r1, #0x00]
	str r1, [r0, #0x00]
	ldr r0, _08065B98 @ =0x08065C35
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r1}
	bx r1
_08065B98: .4byte sub_8065C34
