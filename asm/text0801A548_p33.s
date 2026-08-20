	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80472D0
sub_80472D0:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	adds r0, r1, #0x0
	adds r6, r2, #0x0
	cmp r0, #0x00
	beq _08047336
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r4, r3, r1
	movs r7, #0x0F
	movs r0, #0xF0
	lsls r0, r0, #0x09
	ands r2, r0
	ldr r3, [r4, #0x00]
	ldr r5, _08047314 @ =0xFFFE1FFF
	ands r3, r5
	orrs r3, r2
	str r3, [r4, #0x00]
	cmp r6, #0x00
	beq _08047318
	lsls r0, r3, #0x0F
	lsrs r0, r0, #0x1C
	cmp r0, #0x0E
	bhi _08047358
	adds r1, r0, #0x1
	ands r1, r7
	lsls r1, r1, #0x0D
	adds r0, r5, #0x0
	ands r0, r3
	orrs r0, r1
	str r0, [r4, #0x00]
	b _08047358
_08047314: .4byte 0xFFFE1FFF
_08047318:
	movs r0, #0xF0
	lsls r0, r0, #0x09
	ands r0, r3
	cmp r0, #0x00
	beq _08047358
	lsls r0, r3, #0x0F
	lsrs r0, r0, #0x1C
	subs r0, #0x01
	ands r0, r7
	lsls r0, r0, #0x0D
	adds r1, r5, #0x0
	ands r1, r3
	orrs r1, r0
	str r1, [r4, #0x00]
	b _08047358
_08047336:
	cmp r6, #0x00
	beq _0804734A
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x09
	orrs r1, r2
	b _08047356
_0804734A:
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldr r2, _08047360 @ =0xFFFE1FFF
	ands r1, r2
_08047356:
	str r1, [r0, #0x00]
_08047358:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08047360: .4byte 0xFFFE1FFF
	thumb_func_start sub_8047364
sub_8047364:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldrb r3, [r5, #0x00]
	lsls r2, r3, #0x1D
	movs r4, #0x07
	lsrs r2, r2, #0x1A
	movs r0, #0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	ands r1, r4
	movs r2, #0x08
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	bls _080473C4
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x05
	strb r0, [r6, #0x02]
	ldrb r1, [r5, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x03
	bne _080473C4
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
_080473C4:
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
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
	thumb_func_start sub_80474D0
sub_80474D0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _0804750E
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
	bls _08047504
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x05
	strb r0, [r4, #0x02]
_08047504:
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
_0804750E:
	ldr r1, _08047550 @ =0x00000215
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08047536
	movs r2, #0x87
	lsls r2, r2, #0x02
	adds r0, r4, r2
	subs r2, #0x04
	adds r1, r4, r2
	ldrh r0, [r0, #0x00]
	ldrh r2, [r1, #0x00]
	cmp r0, r2
	beq _08047536
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8040790
_08047536:
	ldr r1, _08047550 @ =0x00000215
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r5, #0x01
	ands r5, r1
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08047558
	ldr r2, _08047554 @ =0x00000221
	adds r0, r4, r2
	ldrb r2, [r0, #0x00]
	b _0804755C
_08047550: .4byte 0x00000215
_08047554: .4byte 0x00000221
_08047558:
	movs r2, #0x01
	negs r2, r2
_0804755C:
	ldr r1, _08047570 @ =0x00000215
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08047574
	lsls r0, r1, #0x1B
	lsrs r3, r0, #0x1F
	b _08047578
_08047570: .4byte 0x00000215
_08047574:
	movs r3, #0x01
	negs r3, r3
_08047578:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_8040804
	ldr r0, _0804759C @ =0x00000215
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0804759C: .4byte 0x00000215
