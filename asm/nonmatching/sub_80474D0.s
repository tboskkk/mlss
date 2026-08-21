	.syntax unified
	.text

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
