	.syntax unified
	.text

	thumb_func_start sub_81251F0
sub_81251F0:
	push {lr}
	ldr r0, _08125210 @ =0x03000FFC
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x06]
	ldr r0, _08125214 @ =0x03000D40
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	asrs r1, r0
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	bne _08125218
	movs r0, #0x00
	b _0812521A
	.byte 0x00, 0x00
_08125210: .4byte 0x03000FFC
_08125214: .4byte 0x03000D40
_08125218:
	movs r0, #0x01
_0812521A:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
