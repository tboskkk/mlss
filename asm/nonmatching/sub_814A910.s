	.syntax unified
	.text

	thumb_func_start sub_814A910
sub_814A910:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r5, r0
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r4, r5, r1
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0814A946
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_814B4F4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A942
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x01
	bl sub_814B4C8
	b _0814A984
_0814A942:
	movs r0, #0x28
	b _0814A948
_0814A946:
	subs r0, #0x01
_0814A948:
	strh r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814A984
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r4, [r0, #0x30]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	movs r1, #0x00
	ldsh r2, [r0, r1]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_813A5C8
_0814A984:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
