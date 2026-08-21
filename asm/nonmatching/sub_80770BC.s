	.syntax unified
	.text

	thumb_func_start sub_80770BC
sub_80770BC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807710C
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080770E4
	adds r0, r4, #0x0
	bl sub_8086700
	b _0807710C
_080770E4:
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r2, r0, #0x0
	cmp r1, #0x10
	bne _08077104
	ldr r0, _08077100 @ =0x08076C15
	b _08077106
_08077100: .4byte sub_8076C14
_08077104:
	ldr r0, _08077114 @ =0x08076D05
_08077106:
	str r0, [r4, #0x4C]
	movs r0, #0x00
	str r0, [r2, #0x00]
_0807710C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08077114: .4byte sub_8076D04
