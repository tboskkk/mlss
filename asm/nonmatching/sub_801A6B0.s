	.syntax unified
	.text

	thumb_func_start sub_801A6B0
sub_801A6B0:
	push {r4, r5, r6, lr}
	ldr r0, _0801A728 @ =0x0300034C
	ldr r1, _0801A72C @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0801A720
	ldr r2, _0801A730 @ =0x03000D18
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x0F
	negs r1, r1
	ands r0, r1
	subs r1, #0x22
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r4, _0801A734 @ =0x04000208
	movs r6, #0x00
	strh r6, [r4, #0x00]
	ldr r3, _0801A738 @ =0x04000200
	ldrh r1, [r3, #0x00]
	ldr r0, _0801A73C @ =0x0000FFBF
	ands r0, r1
	strh r0, [r3, #0x00]
	ldr r2, _0801A740 @ =0x04000202
	ldrh r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r5, #0x01
	strh r5, [r4, #0x00]
	strh r6, [r4, #0x00]
	ldrh r1, [r3, #0x00]
	ldr r0, _0801A744 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r3, #0x00]
	ldrh r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2, #0x00]
	strh r5, [r4, #0x00]
	strh r6, [r4, #0x00]
	ldr r1, _0801A748 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	subs r1, #0x1C
	movs r0, #0x80
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	strh r5, [r4, #0x00]
_0801A720:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801A728: .4byte 0x0300034C
_0801A72C: .4byte 0x00000888
_0801A730: .4byte 0x03000D18
_0801A734: .4byte 0x04000208
_0801A738: .4byte 0x04000200
_0801A73C: .4byte 0x0000FFBF
_0801A740: .4byte 0x04000202
_0801A744: .4byte 0x0000FF7F
_0801A748: .4byte 0x04000128
