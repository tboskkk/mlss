	.syntax unified
	.text

	thumb_func_start sub_8139260
sub_8139260:
	push {r4, lr}
	adds r4, r1, #0x0
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r1, [r1, #0x34]
	bl sub_8138F64
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8047364
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8047258
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r1, #0x04
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	adds r0, r4, #0x0
	movs r1, #0x10
	bl sub_804790C
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _081392AC @ =0x08136FB5
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_081392AC: .4byte sub_8136FB4
