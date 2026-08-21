	.syntax unified
	.text

	thumb_func_start sub_8060B68
sub_8060B68:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r7, _08060B90 @ =0x03000E18
	ldr r0, [r7, #0x00]
	ldr r5, _08060B94 @ =0x03000E1C
	ldr r6, _08060B98 @ =0x03000E20
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_801B1C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08060B9C
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x10]
	ldr r0, [r6, #0x00]
	str r0, [r4, #0x14]
	b _08060BAE
	.byte 0x00, 0x00
_08060B90: .4byte 0x03000E18
_08060B94: .4byte 0x03000E1C
_08060B98: .4byte 0x03000E20
_08060B9C:
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x10]
	ldr r0, [r6, #0x00]
	str r0, [r4, #0x14]
	ldr r0, [r7, #0x00]
	bl free_heap_8018DA8
	ldr r0, _08060BB4 @ =0x08060CB9
	str r0, [r4, #0x4C]
_08060BAE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08060BB4: .4byte sub_8060CB8
