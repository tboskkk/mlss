	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8089AE4
sub_8089AE4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08089B1E
	ldr r2, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	adds r0, #0x0C
	strh r1, [r0, #0x00]
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x02
	subs r1, r1, r0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_80873B8
	ldr r0, _08089B24 @ =0x08089D89
	str r0, [r4, #0x50]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x62
	bl play_sfx_80195B4
_08089B1E:
	pop {r4}
	pop {r0}
	bx r0
_08089B24: .4byte sub_8089D88
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x7D, 0x8E, 0x08, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xD5, 0x9D, 0x08, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x4D, 0x9E, 0x08, 0x08
	thumb_func_start sub_8089B4C
sub_8089B4C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _08089B84
	ldr r0, _08089B8C @ =0x08089EC5
	str r0, [r4, #0x4C]
	adds r2, r4, #0x0
	adds r2, #0xAE
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08089B84:
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_08089B8C: .4byte sub_8089EC4
	thumb_func_start sub_8089B90
sub_8089B90:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _08089BC8
	ldr r0, _08089BD0 @ =0x08089EC5
	str r0, [r4, #0x4C]
	adds r2, r4, #0x0
	adds r2, #0xAE
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08089BC8:
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_08089BD0: .4byte sub_8089EC4
