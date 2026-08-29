	.syntax unified
	.text

	thumb_func_start sub_801AFE4
sub_801AFE4:
	push {r4, lr}
	ldr r4, _0801B010 @ =0x03000D40
	ldrb r1, [r4, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0801B008
	movs r0, #0x01
	bl sub_801BD50
	bl sub_80E9D1C
	bl sub_80E9B0C
	ldrb r0, [r4, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r4, #0x00]
_0801B008:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801B010: .4byte 0x03000D40
