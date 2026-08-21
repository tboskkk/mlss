	.include "asm/macros.inc"

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
	thumb_func_start sub_8110948
sub_8110948:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0811096A
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0811096A:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x89, 0x09, 0x11, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xF5, 0x09, 0x11, 0x08
	thumb_func_start sub_8110988
sub_8110988:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	negs r1, r1
	adds r1, #0x0D
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _081109C8 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _081109CC @ =0x08110A31
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_081109C8: .4byte 0x00000119
_081109CC: .4byte sub_8110A30
