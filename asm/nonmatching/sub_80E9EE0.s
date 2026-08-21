	.syntax unified
	.text

	thumb_func_start sub_80E9EE0
sub_80E9EE0:
	push {r4, r5, lr}
	adds r4, r2, #0x0
	ldr r3, [r4, #0x00]
	movs r0, #0x02
	ands r0, r3
	cmp r0, #0x00
	bne _080E9F84
	ldr r0, _080E9F08 @ =0x03000FF4
	lsls r1, r3, #0x04
	subs r1, r1, r3
	lsls r1, r1, #0x02
	ldr r0, [r0, #0x00]
	adds r2, r0, r1
	adds r4, #0x04
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080E9F0C
	cmp r0, #0x01
	beq _080E9F48
	b _080EA056
_080E9F08: .4byte 0x03000FF4
_080E9F0C:
	ldrh r3, [r2, #0x0E]
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080E9F1A
	cmp r0, #0x01
	beq _080E9F32
	b _080E9F44
_080E9F1A:
	ldr r1, [r4, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #0x12]
	cmp r0, r1
	ble _080E9F44
	adds r3, r1, #0x0
	b _080E9F44
_080E9F32:
	ldr r1, [r4, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0x00
	bgt _080E9F44
	movs r3, #0x01
_080E9F44:
	strh r3, [r2, #0x0E]
	b _080EA056
_080E9F48:
	ldrh r3, [r2, #0x14]
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080E9F56
	cmp r0, #0x01
	beq _080E9F6E
	b _080E9F80
_080E9F56:
	ldr r1, [r4, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #0x18]
	cmp r0, r1
	ble _080E9F80
	adds r3, r1, #0x0
	b _080E9F80
_080E9F6E:
	ldr r1, [r4, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0x00
	bge _080E9F80
	movs r3, #0x00
_080E9F80:
	strh r3, [r2, #0x14]
	b _080EA056
_080E9F84:
	ldr r0, _080E9F98 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r4, #0x04
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080E9F9C
	cmp r0, #0x01
	beq _080E9FFC
	b _080EA056
	.byte 0x00, 0x00
_080E9F98: .4byte 0x03000FF4
_080E9F9C:
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080E9FA8
	cmp r0, #0x01
	beq _080E9FD4
	b _080EA056
_080E9FA8:
	movs r5, #0x02
_080E9FAA:
	ldr r1, [r4, #0x00]
	ldrh r0, [r2, #0x0E]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #0x12]
	cmp r0, r1
	ble _080E9FBE
	adds r3, r1, #0x0
_080E9FBE:
	strh r3, [r2, #0x0E]
	lsls r0, r5, #0x10
	ldr r1, _080E9FD0 @ =0xFFFF0000
	adds r0, r0, r1
	adds r2, #0x3C
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080E9FAA
	b _080EA056
_080E9FD0: .4byte 0xFFFF0000
_080E9FD4:
	movs r5, #0x02
_080E9FD6:
	ldr r1, [r4, #0x00]
	ldrh r0, [r2, #0x0E]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0x00
	bgt _080E9FE6
	movs r3, #0x01
_080E9FE6:
	strh r3, [r2, #0x0E]
	lsls r0, r5, #0x10
	ldr r1, _080E9FF8 @ =0xFFFF0000
	adds r0, r0, r1
	adds r2, #0x3C
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080E9FD6
	b _080EA056
_080E9FF8: .4byte 0xFFFF0000
_080E9FFC:
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080EA008
	cmp r0, #0x01
	beq _080EA034
	b _080EA056
_080EA008:
	movs r5, #0x02
_080EA00A:
	ldr r1, [r4, #0x00]
	ldrh r0, [r2, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #0x18]
	cmp r0, r1
	ble _080EA01E
	adds r3, r1, #0x0
_080EA01E:
	strh r3, [r2, #0x14]
	lsls r0, r5, #0x10
	ldr r1, _080EA030 @ =0xFFFF0000
	adds r0, r0, r1
	adds r2, #0x3C
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080EA00A
	b _080EA056
_080EA030: .4byte 0xFFFF0000
_080EA034:
	movs r5, #0x02
_080EA036:
	ldr r1, [r4, #0x00]
	ldrh r0, [r2, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0x00
	bge _080EA046
	movs r3, #0x00
_080EA046:
	strh r3, [r2, #0x14]
	lsls r0, r5, #0x10
	ldr r1, _080EA060 @ =0xFFFF0000
	adds r0, r0, r1
	adds r2, #0x3C
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080EA036
_080EA056:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EA060: .4byte 0xFFFF0000
