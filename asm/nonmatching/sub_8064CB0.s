	.syntax unified
	.text

	thumb_func_start sub_8064CB0
sub_8064CB0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08064D14
	cmp r0, #0x01
	bne _08064CEC
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08064CDC
	ldr r0, _08064CD8 @ =0x00000117
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x07
	b _08064CFA
_08064CD8: .4byte 0x00000117
_08064CDC:
	ldr r0, _08064CE8 @ =0x00000117
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x0B
	b _08064CFA
_08064CE8: .4byte 0x00000117
_08064CEC:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08064D04
	adds r0, r4, #0x0
	movs r1, #0x08
_08064CFA:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08064D10
_08064D04:
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08064D10:
	ldr r0, _08064D1C @ =0x08064DDD
	str r0, [r4, #0x4C]
_08064D14:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064D1C: .4byte sub_8064DDC
