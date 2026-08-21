	.syntax unified
	.text

	thumb_func_start sub_80DF8F0
sub_80DF8F0:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x00
	str r0, [r6, #0x04]
	str r0, [r6, #0x0C]
	ldr r0, _080DF97C @ =0xFFFFFC00
	str r0, [r6, #0x08]
	bl sub_8199F30
	movs r3, #0xFF
	adds r1, r0, #0x0
	ands r1, r3
	movs r4, #0xC0
	lsls r4, r4, #0x02
	adds r1, r1, r4
	negs r1, r1
	lsrs r1, r1, #0x02
	movs r7, #0x00
	ldsh r2, [r5, r7]
	muls r1, r2
	lsrs r1, r1, #0x08
	strh r1, [r6, #0x12]
	lsrs r0, r0, #0x08
	adds r2, r0, #0x0
	ands r2, r3
	lsrs r0, r0, #0x08
	ands r0, r3
	adds r0, r0, r4
	lsrs r0, r0, #0x02
	movs r4, #0x02
	ldsh r1, [r5, r4]
	muls r0, r1
	lsrs r1, r0, #0x08
	ldr r0, _080DF980 @ =0x08198584
	ands r2, r3
	lsls r2, r2, #0x01
	adds r0, r2, r0
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	bge _080DF946
	adds r0, #0x3F
_080DF946:
	asrs r0, r0, #0x06
	muls r0, r1
	cmp r0, #0x00
	bge _080DF950
	adds r0, #0xFF
_080DF950:
	asrs r0, r0, #0x08
	strh r0, [r6, #0x10]
	ldr r0, _080DF984 @ =0x08198504
	adds r0, r2, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _080DF962
	adds r0, #0x3F
_080DF962:
	asrs r0, r0, #0x06
	muls r0, r1
	cmp r0, #0x00
	bge _080DF96C
	adds r0, #0xFF
_080DF96C:
	asrs r0, r0, #0x08
	strh r0, [r6, #0x14]
	movs r0, #0x01
	strh r0, [r6, #0x16]
	movs r0, #0x05
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080DF97C: .4byte 0xFFFFFC00
_080DF980: .4byte 0x08198584
_080DF984: .4byte 0x08198504
