	.syntax unified
	.text

	thumb_func_start sub_815EFD8
sub_815EFD8:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	adds r6, r3, #0x0
	adds r6, #0x24
	ldrb r0, [r6, #0x00]
	cmp r0, #0x01
	beq _0815EFF0
	cmp r0, #0x01
	ble _0815F048
	cmp r0, #0x02
	beq _0815F044
	b _0815F048
_0815EFF0:
	movs r4, #0x00
	ldr r5, _0815F038 @ =0x03001020
	ldr r0, [r5, #0x00]
	ldr r1, _0815F03C @ =0x00001C98
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldr r0, [r3, #0x04]
	ldr r1, [r2, #0x04]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0815F010
	movs r4, #0x01
	adds r1, r2, #0x0
	adds r1, #0x24
	movs r0, #0x06
	strb r0, [r1, #0x00]
_0815F010:
	ldr r0, [r5, #0x00]
	ldr r1, _0815F040 @ =0x00001C9C
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldr r0, [r3, #0x04]
	ldr r1, [r2, #0x04]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0815F02C
	adds r4, #0x01
	adds r1, r2, #0x0
	adds r1, #0x24
	movs r0, #0x06
	strb r0, [r1, #0x00]
_0815F02C:
	cmp r4, #0x01
	ble _0815F048
	movs r0, #0x02
	strb r0, [r6, #0x00]
	b _0815F048
	.byte 0x00, 0x00
_0815F038: .4byte 0x03001020
_0815F03C: .4byte 0x00001C98
_0815F040: .4byte 0x00001C9C
_0815F044:
	movs r0, #0x01
	b _0815F04A
_0815F048:
	movs r0, #0x00
_0815F04A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
