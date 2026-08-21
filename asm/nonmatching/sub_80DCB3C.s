	.syntax unified
	.text

	thumb_func_start sub_80DCB3C
sub_80DCB3C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAE
	adds r7, r4, #0x0
	adds r7, #0xB0
	adds r6, r4, #0x0
	adds r6, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r6, #0x00]
	adds r0, r0, r1
	strh r0, [r6, #0x00]
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r3, #0x00
	ldsh r1, [r7, r3]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	ble _080DCBD0
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _080DCBD0
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8086D80
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _080DCBF6
	movs r1, #0x00
	ldsh r0, [r5, r1]
	negs r0, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r5, #0x00]
	strh r2, [r7, #0x00]
	strh r2, [r6, #0x00]
	ldr r1, [r4, #0x30]
	cmp r1, #0x00
	beq _080DCBBA
	adds r1, #0xAC
	movs r0, #0x08
	strh r0, [r1, #0x00]
_080DCBBA:
	ldr r0, _080DCBCC @ =0x080DD589
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080DCBF6
_080DCBCC: .4byte sub_80DD588
_080DCBD0:
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bgt _080DCBF6
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r1, [r4, #0x18]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080DCBF6
	str r0, [r4, #0x18]
	ldr r0, _080DCBFC @ =0x00000117
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807C298
_080DCBF6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080DCBFC: .4byte 0x00000117
