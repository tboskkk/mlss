	.syntax unified
	.text

	thumb_func_start sub_815EC4C
sub_815EC4C:
	push {lr}
	adds r2, r0, #0x0
	lsls r1, r1, #0x10
	movs r3, #0x18
	ldsh r0, [r2, r3]
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	cmp r0, #0x00
	bge _0815EC64
	movs r0, #0x00
	b _0815EC68
_0815EC64:
	ldrh r0, [r2, #0x18]
	adds r0, r1, r0
_0815EC68:
	strh r0, [r2, #0x18]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bge _0815EC7A
	movs r0, #0x64
	strb r0, [r2, #0x1B]
	movs r0, #0x01
	b _0815EC84
_0815EC7A:
	cmp r0, #0x00
	ble _0815EC86
	movs r0, #0x64
	strb r0, [r2, #0x1B]
	movs r0, #0x02
_0815EC84:
	strb r0, [r2, #0x1A]
_0815EC86:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
