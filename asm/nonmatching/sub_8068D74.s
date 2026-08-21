	.syntax unified
	.text

	thumb_func_start sub_8068D74
sub_8068D74:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08068DB0
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08068DA0
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08068DAC
_08068DA0:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08068DAC:
	ldr r0, _08068DB8 @ =0x08068DED
	str r0, [r4, #0x4C]
_08068DB0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068DB8: .4byte sub_8068DEC
