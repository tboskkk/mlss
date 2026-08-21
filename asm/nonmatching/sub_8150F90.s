	.syntax unified
	.text

	thumb_func_start sub_8150F90
sub_8150F90:
	push {r4, r5, r6, lr}
	ldr r0, _08150FA8 @ =0x03001010
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	asrs r0, r0, #0x1B
	cmp r0, #0x05
	ble _08150FB0
	ldr r0, _08150FAC @ =0x00001CD9
	movs r1, #0x06
	bl sub_80E9A6C
	b _08150FC2
_08150FA8: .4byte 0x03001010
_08150FAC: .4byte 0x00001CD9
_08150FB0:
	ldr r0, _08151048 @ =0x00001CD9
	ldr r1, _0815104C @ =0x03001018
	ldr r1, [r1, #0x00]
	movs r2, #0xF9
	lsls r2, r2, #0x05
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	bl sub_80E9A6C
_08150FC2:
	ldr r0, _08151048 @ =0x00001CD9
	bl sub_80E99E0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r6, _0815104C @ =0x03001018
	ldr r0, [r6, #0x00]
	ldr r3, _08151050 @ =0x00001F24
	adds r0, r0, r3
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r1, r0
	ble _08150FE2
	ldr r0, _08151054 @ =0x00001CDF
	bl sub_80E9A6C
_08150FE2:
	ldr r5, _08151058 @ =0x00001CDA
	ldr r0, [r6, #0x00]
	ldr r4, _0815105C @ =0x00001CB0
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	bl sub_8158308
	adds r1, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0x0
	bl sub_80E9A6C
	ldr r0, [r6, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	bl sub_8158308
	ldr r2, [r6, #0x00]
	ldr r3, _08151060 @ =0x00001F26
	adds r1, r2, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x00
	ldsh r1, [r1, r3]
	cmp r0, r1
	ble _08151030
	adds r4, #0x30
	ldr r1, _0815105C @ =0x00001CB0
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	bl sub_8158308
	adds r1, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0x0
	bl sub_80E9A6C
_08151030:
	ldr r0, [r6, #0x00]
	movs r2, #0xF9
	lsls r2, r2, #0x05
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	bl sub_8150A1C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08151048: .4byte 0x00001CD9
_0815104C: .4byte 0x03001018
_08151050: .4byte 0x00001F24
_08151054: .4byte 0x00001CDF
_08151058: .4byte 0x00001CDA
_0815105C: .4byte 0x00001CB0
_08151060: .4byte 0x00001F26
