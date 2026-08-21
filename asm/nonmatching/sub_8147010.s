	.syntax unified
	.text

	thumb_func_start sub_8147010
sub_8147010:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _08147040 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08147044 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _08147048 @ =0x08146FAD
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08147040: .4byte 0x0000033E
_08147044: .4byte sub_813B380
_08147048: .4byte sub_8146FAC
