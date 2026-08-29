	.syntax unified
	.text

	thumb_func_start sub_815D2E8
sub_815D2E8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x18
	ldsh r0, [r4, r1]
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r2, [r4, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	subs r0, #0x0A
	cmp r1, r0
	beq _0815D31A
	adds r1, #0x0A
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
_0815D31A:
	movs r2, #0x18
	ldsh r0, [r4, r2]
	movs r1, #0x0A
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r5, [r4, #0x04]
	adds r0, r5, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	subs r0, #0x0A
	cmp r1, r0
	beq _0815D354
	adds r0, r1, #0x0
	movs r1, #0x0A
	bl __modsi3
	adds r1, r0, #0x0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x0A
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
_0815D354:
	movs r3, #0x18
	ldsh r0, [r4, r3]
	movs r1, #0x0A
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r2, [r4, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	subs r0, #0x0A
	cmp r1, r0
	beq _0815D380
	adds r1, #0x0A
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
_0815D380:
	ldrb r0, [r4, #0x1A]
	cmp r0, #0x01
	beq _0815D390
	cmp r0, #0x01
	ble _0815D432
	cmp r0, #0x02
	beq _0815D3E4
	b _0815D432
_0815D390:
	ldrb r0, [r4, #0x1B]
	subs r0, #0x01
	strb r0, [r4, #0x1B]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x00
	bne _0815D3A2
	strb r0, [r4, #0x1A]
	b _0815D432
_0815D3A2:
	ldr r0, [r4, #0x0C]
	ldr r1, _0815D3DC @ =0x0000FFF0
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	strh r1, [r0, #0x02]
	ldrb r1, [r4, #0x1C]
	movs r0, #0x04
	subs r0, r0, r1
	strb r0, [r4, #0x1C]
	ldr r2, _0815D3E0 @ =0x0000FFFE
	ldr r1, [r4, #0x00]
	ldrb r0, [r4, #0x1C]
	adds r0, r0, r2
	ldrh r3, [r1, #0x00]
	adds r0, r0, r3
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x04]
	ldrb r0, [r4, #0x1C]
	adds r0, r0, r2
	ldrh r3, [r1, #0x00]
	adds r0, r0, r3
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x08]
	ldrb r0, [r4, #0x1C]
	adds r0, r0, r2
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	b _0815D432
_0815D3DC: .4byte 0x0000FFF0
_0815D3E0: .4byte 0x0000FFFE
_0815D3E4:
	ldrb r0, [r4, #0x1B]
	subs r0, #0x01
	strb r0, [r4, #0x1B]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0815D404
	ldr r0, [r4, #0x0C]
	movs r2, #0x00
	ldr r1, _0815D400 @ =0x0000FFF0
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	strh r1, [r0, #0x02]
	strb r2, [r4, #0x1A]
	b _0815D432
_0815D400: .4byte 0x0000FFF0
_0815D404:
	ldrb r0, [r4, #0x1D]
	adds r0, #0x01
	strb r0, [r4, #0x1D]
	ldr r2, [r4, #0x10]
	ldr r1, _0815D43C @ =0x08198584
	ldrb r0, [r4, #0x1D]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0815D41E
	adds r0, #0x3F
_0815D41E:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x03
	adds r2, r2, r0
	ldr r1, [r4, #0x0C]
	asrs r0, r2, #0x08
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x0C]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0x08
	strh r0, [r1, #0x02]
_0815D432:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815D43C: .4byte 0x08198584
