	.syntax unified
	.text

	thumb_func_start sub_8104A00
sub_8104A00:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r0, _08104A70 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08104A74 @ =0x00000342
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	adds r6, r0, #0x0
	adds r6, #0x28
	movs r0, #0x16
	ldsh r4, [r5, r0]
	adds r0, r4, #0x0
	movs r1, #0xB8
	bl sub_810D260
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_810D34C
	ldrh r0, [r5, #0x10]
	adds r0, #0x01
	movs r7, #0x00
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x09
	ble _08104A68
	ldr r0, _08104A78 @ =0x00007003
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r4, r0, #0x0
	bl sub_807BC90
	movs r0, #0xB8
	strh r0, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x0A
	strh r0, [r4, #0x02]
	strh r7, [r4, #0x0E]
	str r4, [r5, #0x08]
	strh r7, [r5, #0x10]
	ldr r0, _08104A7C @ =0x08106A31
	str r0, [r5, #0x04]
	ldr r0, _08104A80 @ =0x00000123
	bl stop_sfx_80195A8
_08104A68:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08104A70: .4byte 0x03000FD8
_08104A74: .4byte 0x00000342
_08104A78: .4byte 0x00007003
_08104A7C: .4byte sub_8106A30
_08104A80: .4byte 0x00000123
