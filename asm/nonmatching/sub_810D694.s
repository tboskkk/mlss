	.syntax unified
	.text

	thumb_func_start sub_810D694
sub_810D694:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x0C]
	ldrh r0, [r2, #0x16]
	adds r0, #0x03
	strh r0, [r2, #0x16]
	movs r0, #0x16
	ldsh r1, [r2, r0]
	ldr r3, _0810D6BC @ =0x0200001A
	ldrh r0, [r3, #0x00]
	cmp r1, r0
	ble _0810D6B4
	ldrh r0, [r3, #0x00]
	strh r0, [r2, #0x16]
	ldr r0, _0810D6C0 @ =0x0810CEC1
	str r0, [r4, #0x04]
_0810D6B4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810D6BC: .4byte 0x0200001A
_0810D6C0: .4byte sub_810CEC0
