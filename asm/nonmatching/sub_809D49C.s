	.syntax unified
	.text

	thumb_func_start sub_809D49C
sub_809D49C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	ble _0809D4B4
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _0809D4D0
_0809D4B4:
	ldr r2, _0809D4D8 @ =0x00004108
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, _0809D4DC @ =0x00004109
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0809D4E0 @ =0x0809CAF1
	str r0, [r4, #0x4C]
_0809D4D0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809D4D8: .4byte 0x00004108
_0809D4DC: .4byte 0x00004109
_0809D4E0: .4byte sub_809CAF0
