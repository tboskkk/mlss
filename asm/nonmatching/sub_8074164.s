	.syntax unified
	.text

	thumb_func_start sub_8074164
sub_8074164:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	ldr r4, [r0, #0x30]
	bl sub_8072FDC
	adds r0, r4, #0x0
	bl sub_80730C8
	movs r1, #0x00
	movs r4, #0x00
	ldr r3, _080741E0 @ =0x03000E80
	ldr r2, _080741E4 @ =0x03000E98
_0807417E:
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _0807418A
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0807418A:
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08074196
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08074196:
	ldrh r0, [r3, #0x02]
	cmp r0, #0x00
	beq _080741A2
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080741A2:
	ldrh r0, [r2, #0x02]
	cmp r0, #0x00
	beq _080741AE
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080741AE:
	ldrh r0, [r3, #0x04]
	cmp r0, #0x00
	beq _080741BA
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080741BA:
	ldrh r0, [r2, #0x04]
	cmp r0, #0x00
	beq _080741C6
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080741C6:
	adds r3, #0x06
	adds r2, #0x06
	adds r4, #0x03
	cmp r4, #0x0B
	ble _0807417E
	cmp r1, #0x00
	bne _080741D8
	ldr r0, _080741E8 @ =0x080745A9
	str r0, [r5, #0x4C]
_080741D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080741E0: .4byte 0x03000E80
_080741E4: .4byte 0x03000E98
_080741E8: .4byte sub_80745A8
