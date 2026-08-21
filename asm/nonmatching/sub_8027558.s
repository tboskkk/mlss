	.syntax unified
	.text

	thumb_func_start sub_8027558
sub_8027558:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080275DC @ =0x03000D44
	ldr r0, [r0, #0x00]
	bl process_disable
	bl sub_801A6B0
	ldr r0, _080275E0 @ =0x0300034C
	ldr r1, _080275E4 @ =0x0000089C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r2, #0xFD
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	movs r0, #0x00
	movs r1, #0x80
	movs r2, #0x08
	bl sub_80193B4
	adds r2, r5, #0x0
	adds r2, #0xFC
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_80273E4
	movs r0, #0xC1
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	bl sub_805A1A8
	ldr r0, [r4, #0x00]
	bl process_disable
	movs r0, #0x02
	movs r1, #0x00
	bl sub_8018B78
	movs r1, #0x02
	strb r1, [r5, #0x00]
	ldr r0, _080275E8 @ =0x03000C24
	strb r1, [r0, #0x00]
	ldr r1, _080275EC @ =0x03000C78
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080275C2
	ldr r0, _080275F0 @ =0x0800063C
	str r0, [r1, #0x00]
_080275C2:
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1A
	movs r1, #0x00
	bl sub_8122BA0
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080275DC: .4byte 0x03000D44
_080275E0: .4byte 0x0300034C
_080275E4: .4byte 0x0000089C
_080275E8: .4byte 0x03000C24
_080275EC: .4byte 0x03000C78
_080275F0: .4byte 0x0800063C
