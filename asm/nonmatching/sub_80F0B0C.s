	.syntax unified
	.text

	thumb_func_start sub_80F0B0C
sub_80F0B0C:
	push {lr}
	adds r3, r2, #0x0
	ldr r1, _080F0B44 @ =0x083B7108
	ldr r0, _080F0B48 @ =0x03000DD0
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	ldr r2, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrh r2, [r0, #0x10]
	lsls r2, r2, #0x11
	lsrs r2, r2, #0x01
	movs r0, #0xE4
	lsls r0, r0, #0x13
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	ldrb r3, [r3, #0x04]
	movs r0, #0x00
	movs r1, #0x00
	bl sub_80E9958
	movs r0, #0x01
	pop {r1}
	bx r1
_080F0B44: .4byte dword_83B7108 @ =0x083B7108
_080F0B48: .4byte 0x03000DD0
