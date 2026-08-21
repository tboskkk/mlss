	.syntax unified
	.text

	thumb_func_start sub_8065A5C
sub_8065A5C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065A92
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	strh r1, [r0, #0x00]
	ldr r0, _08065A98 @ =0x08065BD9
	str r0, [r4, #0x4C]
	movs r0, #0x81
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
_08065A92:
	pop {r4}
	pop {r0}
	bx r0
_08065A98: .4byte sub_8065BD8
