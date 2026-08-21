	.syntax unified
	.text

	thumb_func_start sub_80624FC
sub_80624FC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806253E
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062526
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08062532
_08062526:
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08062532:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x04
	strh r1, [r0, #0x00]
	ldr r0, _08062544 @ =0x08062549
	str r0, [r4, #0x4C]
_0806253E:
	pop {r4}
	pop {r0}
	bx r0
_08062544: .4byte sub_8062548
