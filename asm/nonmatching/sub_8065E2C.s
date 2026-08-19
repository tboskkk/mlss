	.syntax unified
	.text

	thumb_func_start sub_8065E2C
sub_8065E2C:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065E44
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x14
	strh r1, [r0, #0x00]
	ldr r0, _08065E48 @ =0x08065EA1
	str r0, [r2, #0x4C]
_08065E44:
	pop {r0}
	bx r0
_08065E48: .4byte sub_8065EA0
