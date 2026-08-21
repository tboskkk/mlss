	.syntax unified
	.text

	thumb_func_start sub_80473DC
sub_80473DC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _0804741A
	lsls r1, r2, #0x1A
	lsrs r1, r1, #0x1D
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	bls _08047410
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x05
	strb r0, [r4, #0x02]
_08047410:
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
_0804741A:
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08047442
	ldr r2, _08047464 @ =0x0000021A
	adds r0, r4, r2
	subs r2, #0x02
	adds r1, r4, r2
	ldrh r0, [r0, #0x00]
	ldrh r2, [r1, #0x00]
	cmp r0, r2
	beq _08047442
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8040790
_08047442:
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsrs r5, r0, #0x07
	ldr r2, _08047468 @ =0x00000215
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0804746C
	movs r1, #0x88
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r2, [r0, #0x00]
	b _08047470
_08047464: .4byte 0x0000021A
_08047468: .4byte 0x00000215
_0804746C:
	movs r2, #0x01
	negs r2, r2
_08047470:
	ldr r1, _08047484 @ =0x00000215
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08047488
	lsls r0, r1, #0x1C
	lsrs r3, r0, #0x1F
	b _0804748C
_08047484: .4byte 0x00000215
_08047488:
	movs r3, #0x01
	negs r3, r3
_0804748C:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_8040804
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _080474CC @ =0x00000215
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0x3C]
	movs r1, #0x01
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
_080474CC: .4byte 0x00000215
