	.syntax unified
	.text

	thumb_func_start sub_815D12C
sub_815D12C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [sp, #0x008]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r0, #0x0
	cmp r0, #0x04
	beq _0815D170
	cmp r0, #0x04
	bgt _0815D14A
	cmp r0, #0x03
	beq _0815D150
	b _0815D188
_0815D14A:
	cmp r3, #0x05
	beq _0815D1CE
	b _0815D188
_0815D150:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	ldr r0, _0815D16C @ =0x0000FE0C
	strh r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _0815D1CE
_0815D16C: .4byte 0x0000FE0C
_0815D170:
	ldr r1, [r4, #0x30]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x3C]
	bl _call_via_r1
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x02
	strb r0, [r1, #0x00]
	b _0815D1CE
_0815D188:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0815D1CE
	ldrh r0, [r4, #0x1C]
	ldrh r2, [r4, #0x14]
	adds r0, r0, r2
	strh r0, [r4, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4, #0x20]
	adds r1, r1, r0
	ldrh r0, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r2, #0x14
	ldsh r1, [r4, r2]
	ldr r0, [r4, #0x04]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	movs r0, #0x18
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r1
	str r0, [r4, #0x08]
	ldr r1, [r4, #0x3C]
	cmp r0, r1
	ble _0815D1CE
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	str r0, [r4, #0x04]
	str r1, [r4, #0x08]
	ldr r0, _0815D1D8 @ =0x0000FE0C
	strh r0, [r4, #0x18]
_0815D1CE:
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815D1D8: .4byte 0x0000FE0C
