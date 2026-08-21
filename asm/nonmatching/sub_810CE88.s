	.syntax unified
	.text

	thumb_func_start sub_810CE88
sub_810CE88:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x0C]
	ldrh r0, [r2, #0x16]
	subs r0, #0x03
	strh r0, [r2, #0x16]
	ldr r3, _0810CEB8 @ =0x0200001A
	ldrh r0, [r3, #0x00]
	subs r0, #0x0F
	movs r5, #0x16
	ldsh r1, [r2, r5]
	cmp r0, r1
	ble _0810CEB2
	ldrh r0, [r3, #0x00]
	subs r0, #0x0F
	strh r0, [r2, #0x16]
	adds r0, r4, #0x0
	bl sub_810AA24
	ldr r0, _0810CEBC @ =0x0810D695
	str r0, [r4, #0x04]
_0810CEB2:
	pop {r4, r5}
	pop {r0}
	bx r0
_0810CEB8: .4byte 0x0200001A
_0810CEBC: .4byte sub_810D694
