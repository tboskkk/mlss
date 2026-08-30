	.syntax unified
	.text

	thumb_func_start sub_80E9594
sub_80E9594:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	cmp r2, #0x00
	bge _080E95A2
	movs r5, #0x01
	negs r2, r2
	b _080E95A4
_080E95A2:
	movs r5, #0x00
_080E95A4:
	cmp r1, #0x00
	bge _080E95AE
	movs r4, #0x01
	negs r1, r1
	b _080E95B0
_080E95AE:
	movs r4, #0x00
_080E95B0:
	adds r0, r2, #0x0
	orrs r0, r1
	ldr r3, _080E95B8 @ =0xFFFF8000
	b _080E95C4
_080E95B8: .4byte 0xFFFF8000
_080E95BC:
	asrs r2, r2, #0x01
	asrs r1, r1, #0x01
	adds r0, r2, #0x0
	orrs r0, r1
_080E95C4:
	ands r0, r3
	cmp r0, #0x00
	bne _080E95BC
	cmp r5, #0x00
	beq _080E95D0
	negs r2, r2
_080E95D0:
	cmp r4, #0x00
	beq _080E95D6
	negs r1, r1
_080E95D6:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_81DA690
	movs r1, #0xA0
	lsls r1, r1, #0x07
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
