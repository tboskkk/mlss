	.syntax unified
	.text

	thumb_func_start sub_811090C
sub_811090C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086C64
	cmp r0, #0x00
	bne _08110938
	ldr r1, [r4, #0x30]
	ldr r3, _08110940 @ =0x081109D1
	cmp r1, #0x00
	beq _0811092E
	movs r2, #0x01
_08110922:
	adds r0, r1, #0x0
	adds r0, #0xA8
	str r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _08110922
_0811092E:
	str r3, [r4, #0x4C]
	ldr r0, _08110944 @ =0x0000010F
	bl stop_sfx_80195A8
	movs r0, #0x00
_08110938:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08110940: .4byte sub_81109D0
_08110944: .4byte 0x0000010F
