	.syntax unified
	.text

	thumb_func_start sub_802955C
sub_802955C:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r1, _08029618 @ =0x03000C78
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r5, _0802961C @ =0x0839F5CC
	ldrh r1, [r5, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	str r0, [r1, #0x00]
	adds r5, #0x02
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	str r0, [r1, #0x04]
	adds r5, #0x02
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	str r0, [r1, #0x08]
	adds r5, #0x02
	movs r6, #0x03
_080295A4:
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	lsls r2, r6, #0x02
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r4, r6, #0x1
	ldrh r1, [r5, #0x02]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	lsls r4, r4, #0x02
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r4, r6, #0x2
	ldrh r1, [r5, #0x04]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	lsls r4, r4, #0x02
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r4, r6, #0x3
	ldrh r1, [r5, #0x06]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	lsls r4, r4, #0x02
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r5, #0x08
	adds r6, #0x04
	cmp r6, #0x0A
	ble _080295A4
	ldr r1, _08029618 @ =0x03000C78
	ldr r0, _08029620 @ =0x0800063C
	str r0, [r1, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08029618: .4byte 0x03000C78
_0802961C: .4byte 0x0839F5CC
_08029620: .4byte 0x0800063C
