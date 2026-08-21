	.syntax unified
	.text

	thumb_func_start sub_814BA10
sub_814BA10:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0814BA4E
	adds r0, r1, #0x0
	adds r0, #0x20
	movs r2, #0x2A
	ldsh r1, [r1, r2]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bgt _0814BA4E
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814BA4E:
	adds r0, r4, #0x0
	bl sub_813B564
	adds r0, r4, #0x0
	bl sub_813B6A0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814BA64
	ldr r0, _0814BA6C @ =0x081498DD
	str r0, [r5, #0x00]
_0814BA64:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814BA6C: .4byte sub_81498DC
