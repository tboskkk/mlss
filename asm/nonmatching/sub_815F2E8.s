	.syntax unified
	.text

	thumb_func_start sub_815F2E8
sub_815F2E8:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_815FA3C
	cmp r0, #0x00
	beq _0815F306
	adds r0, r4, #0x0
	movs r1, #0x16
	bl sub_815FA70
	adds r0, r4, #0x0
	bl sub_815FA3C
	movs r1, #0x00
	strh r1, [r0, #0x0C]
_0815F306:
	ldr r0, _0815F320 @ =0x03001020
	ldr r0, [r0, #0x00]
	ldr r1, _0815F324 @ =0x00001C98
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x04]
	ldr r0, [r0, #0x04]
	cmp r1, r0
	ble _0815F328
	movs r0, #0x80
	lsls r0, r0, #0x02
	b _0815F32C
	.byte 0x00, 0x00
_0815F320: .4byte 0x03001020
_0815F324: .4byte 0x00001C98
_0815F328:
	movs r0, #0xFE
	lsls r0, r0, #0x08
_0815F32C:
	strh r0, [r4, #0x14]
	movs r0, #0x00
	strh r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
