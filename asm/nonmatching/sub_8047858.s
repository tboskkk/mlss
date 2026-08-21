	.syntax unified
	.text

	thumb_func_start sub_8047858
sub_8047858:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	movs r2, #0xAA
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	lsrs r1, r1, #0x17
	adds r1, r1, r0
	ldrh r3, [r1, #0x00]
	movs r5, #0x86
	lsls r5, r5, #0x02
	adds r2, r4, r5
	ldrh r0, [r2, #0x00]
	adds r5, #0x02
	adds r1, r4, r5
	strh r0, [r1, #0x00]
	strh r3, [r2, #0x00]
	ldrh r0, [r1, #0x00]
	cmp r0, r3
	beq _08047896
	adds r0, r4, #0x0
	bl sub_8040790
	movs r3, #0x01
	negs r3, r3
	adds r0, r4, #0x0
	movs r1, #0x01
	adds r2, r3, #0x0
	bl sub_8040804
_08047896:
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
