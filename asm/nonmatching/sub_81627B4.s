	.syntax unified
	.text

	thumb_func_start sub_81627B4
sub_81627B4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r0, r2, #0x0
	lsls r3, r3, #0x18
	movs r1, #0x4A
	adds r1, r1, r4
	mov r12, r1
	movs r6, #0x00
	strh r0, [r1, #0x00]
	cmp r3, #0x00
	beq _08162848
	ldr r2, _0816280C @ =0x03001038
	ldr r0, _08162810 @ =0x0819832C
	ldr r1, _08162814 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r3, r12
	movs r1, #0x00
	ldsh r0, [r3, r1]
	adds r3, r0, #0x0
	muls r3, r0
	adds r0, r3, #0x0
	lsls r0, r0, #0x08
	adds r1, r5, #0x0
	bl _call_via_r2
	str r0, [r4, #0x60]
	cmp r5, #0x00
	bge _08162818
	lsls r0, r5, #0x08
	str r0, [r4, #0x5C]
	adds r1, r4, #0x0
	adds r1, #0x56
	movs r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x5A
	ldrh r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strh r0, [r2, #0x00]
	b _0816283A
_0816280C: .4byte 0x03001038
_08162810: .4byte 0x0819832C
_08162814: .4byte 0x08198220
_08162818:
	negs r1, r5
	lsls r1, r1, #0x08
	str r1, [r4, #0x5C]
	ldr r0, [r4, #0x1C]
	subs r0, r0, r1
	str r0, [r4, #0x1C]
	str r1, [r4, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0x56
	movs r0, #0x03
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldrh r2, [r1, #0x00]
	ldr r0, _08162844 @ =0x0000FFFB
	ands r0, r2
	strh r0, [r1, #0x00]
	adds r2, r1, #0x0
_0816283A:
	ldrh r1, [r2, #0x00]
	movs r0, #0x0A
	orrs r0, r1
	b _08162884
	.byte 0x00, 0x00
_08162844: .4byte 0x0000FFFB
_08162848:
	lsrs r2, r0, #0x1F
	adds r2, r0, r2
	asrs r2, r2, #0x01
	ldr r3, _0816288C @ =0x03001038
	ldr r0, _08162890 @ =0x0819832C
	ldr r1, _08162894 @ =0x08198220
	subs r0, r0, r1
	ldr r3, [r3, #0x00]
	adds r3, r3, r0
	adds r0, r2, #0x0
	muls r0, r2
	lsls r0, r0, #0x08
	adds r1, r5, #0x0
	bl _call_via_r3
	str r0, [r4, #0x60]
	lsls r0, r5, #0x08
	str r0, [r4, #0x5C]
	adds r1, r4, #0x0
	adds r1, #0x56
	movs r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x5A
	ldrh r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	orrs r0, r6
	ldr r1, _08162898 @ =0x0000FFF7
	ands r0, r1
_08162884:
	strh r0, [r2, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0816288C: .4byte 0x03001038
_08162890: .4byte 0x0819832C
_08162894: .4byte 0x08198220
_08162898: .4byte 0x0000FFF7
