	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8142A70
sub_8142A70:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r1, #0x0
	adds r0, r6, #0x0
	bl sub_8139AA0
	ldr r0, _08142AF8 @ =0x0000020D
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xEA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	movs r5, #0x00
	strh r5, [r0, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r5, [sp, #0x000]
	movs r1, #0x03
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, _08142AFC @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, _08142B00 @ =0x0813FBE9
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142AF8: .4byte 0x0000020D
_08142AFC: .4byte sub_813B380
_08142B00: .4byte sub_813FBE8
	thumb_func_start sub_8142B04
sub_8142B04:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _08142B40 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08142B44 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _08142B48 @ =0x0813FDF5
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142B40: .4byte 0x0000033E
_08142B44: .4byte sub_813B380
_08142B48: .4byte sub_813FDF4
