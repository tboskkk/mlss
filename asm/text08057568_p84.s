	.include "asm/macros.inc"

	.syntax unified
	.text

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
