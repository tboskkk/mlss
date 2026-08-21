	.syntax unified
	.text

	thumb_func_start sub_80294A0
sub_80294A0:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r5, _08029558 @ =0x0839F5E2
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	str r0, [r1, #0x2C]
	adds r5, #0x02
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	str r0, [r1, #0x30]
	adds r5, #0x02
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	str r0, [r1, #0x34]
	adds r5, #0x02
	movs r7, #0x03
_080294E4:
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	lsls r2, r7, #0x02
	adds r1, #0x2C
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r4, r7, #0x1
	ldrh r1, [r5, #0x02]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	lsls r4, r4, #0x02
	adds r1, #0x2C
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r4, r7, #0x2
	ldrh r1, [r5, #0x04]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	lsls r4, r4, #0x02
	adds r1, #0x2C
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r4, r7, #0x3
	ldrh r1, [r5, #0x06]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	lsls r4, r4, #0x02
	adds r1, #0x2C
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r5, #0x08
	adds r7, #0x04
	cmp r7, #0x0A
	ble _080294E4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08029558: .4byte 0x0839F5E2
