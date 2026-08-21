	.syntax unified
	.text

	thumb_func_start sub_810CEC0
sub_810CEC0:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _0810CEDC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0810CEE0
	adds r0, r2, #0x0
	bl sub_810CE88
	b _0810CEFE
	.byte 0x00, 0x00
_0810CEDC: .4byte 0x03000FD8
_0810CEE0:
	ldrh r1, [r2, #0x16]
	movs r3, #0x16
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	ble _0810CEF0
	subs r0, r1, #0x1
	strh r0, [r2, #0x16]
	b _0810CEFE
_0810CEF0:
	movs r1, #0x18
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bne _0810CEFE
	ldrh r0, [r2, #0x12]
	adds r0, #0x40
	strh r0, [r2, #0x12]
_0810CEFE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
