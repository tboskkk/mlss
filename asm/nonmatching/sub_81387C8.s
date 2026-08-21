	.syntax unified
	.text

	thumb_func_start sub_81387C8
sub_81387C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r6, #0x80
	lsls r6, r6, #0x01
	add r6, r8
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r3, r0, r1
	ldrh r5, [r3, #0x00]
	adds r3, #0x02
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08138816
	movs r1, #0x00
	movs r4, #0x94
	lsls r4, r4, #0x01
	add r4, r8
_081387FC:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _081387FC
_08138816:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	movs r2, #0x02
	ands r1, r2
	mov r12, r0
	cmp r1, #0x00
	beq _08138840
	movs r1, #0x00
_08138826:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r6, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _08138826
_08138840:
	mov r1, r12
	asrs r0, r1, #0x10
	movs r1, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08138886
	adds r2, r3, #0x0
	movs r1, #0x00
	adds r7, r6, #0x0
	adds r7, #0x08
_08138854:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x0F
	adds r5, r7, r1
	ldrb r3, [r2, #0x00]
	movs r1, #0x40
	ands r1, r3
	adds r4, r0, #0x0
	cmp r1, #0x00
	beq _0813886C
	movs r0, #0x0F
	ands r0, r3
	b _08138872
_0813886C:
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x04
_08138872:
	strh r0, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r4, r1
	adds r2, #0x01
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _08138854
	adds r3, r2, #0x0
_08138886:
	mov r1, r12
	asrs r0, r1, #0x10
	movs r1, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081388B2
	movs r1, #0x00
	adds r4, r6, #0x0
	adds r4, #0x10
_08138898:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _08138898
_081388B2:
	mov r1, r12
	asrs r0, r1, #0x10
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _081388DE
	movs r1, #0x00
	adds r4, r6, #0x0
	adds r4, #0x18
_081388C4:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _081388C4
_081388DE:
	adds r2, r3, #0x0
	mov r0, r12
	asrs r3, r0, #0x10
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0x00
	beq _08138900
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x04
	strh r0, [r6, #0x30]
	adds r2, #0x01
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x04
	strh r0, [r6, #0x32]
	adds r2, #0x01
_08138900:
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0x00
	beq _08138916
	ldrb r1, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x40
	strb r1, [r0, #0x00]
	ldrb r1, [r2, #0x01]
	adds r0, #0x01
	strb r1, [r0, #0x00]
_08138916:
	movs r0, #0xF0
	lsls r0, r0, #0x08
	ands r3, r0
	cmp r3, #0x00
	beq _08138934
	mov r0, r12
	lsrs r1, r0, #0x1C
	ldr r3, _08138940 @ =0x0000033D
	add r3, r8
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x0F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_08138934:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138940: .4byte 0x0000033D
