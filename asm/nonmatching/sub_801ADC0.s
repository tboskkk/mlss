	.syntax unified
	.text

	thumb_func_start sub_801ADC0
sub_801ADC0:
	push {lr}
	ldr r2, _0801AE08 @ =0x0300034C
	ldr r1, _0801AE0C @ =0x00000888
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0801AE02
	ldr r1, _0801AE10 @ =0x0000088B
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0801ADF0
	ldr r2, _0801AE14 @ =0x03000D18
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_0801ADF0:
	ldr r2, _0801AE18 @ =0x03000D28
	movs r0, #0x00
	strh r0, [r2, #0x04]
	ldrb r1, [r2, #0x00]
	subs r0, #0x04
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
_0801AE02:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801AE08: .4byte 0x0300034C
_0801AE0C: .4byte 0x00000888
_0801AE10: .4byte 0x0000088B
_0801AE14: .4byte 0x03000D18
_0801AE18: .4byte 0x03000D28
