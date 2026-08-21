	.syntax unified
	.text

	thumb_func_start sub_801AD80
sub_801AD80:
	push {lr}
	ldr r0, _0801ADB0 @ =0x0300034C
	ldr r1, _0801ADB4 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0801ADAA
	ldr r2, _0801ADB8 @ =0x03000D18
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _0801ADBC @ =0x03000D28
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0801ADAA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801ADB0: .4byte 0x0300034C
_0801ADB4: .4byte 0x00000888
_0801ADB8: .4byte 0x03000D18
_0801ADBC: .4byte 0x03000D28
