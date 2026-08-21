	.syntax unified
	.text

	thumb_func_start sub_8047C68
sub_8047C68:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r2, [r0, #0x00]
	adds r2, #0x78
	movs r3, #0x00
	ldsh r0, [r2, r3]
	adds r0, r5, r0
	ldr r2, [r2, #0x04]
	bl _call_via_r2
	movs r4, #0x00
	movs r0, #0x8E
	lsls r0, r0, #0x02
	adds r3, r5, r0
	movs r1, #0x00
	ldsb r1, [r3, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08047CCC
	adds r0, r1, #0x0
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x00]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	movs r6, #0x9D
	lsls r6, r6, #0x02
	adds r2, r4, r6
	adds r0, r0, r1
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	ldr r1, [r5, #0x14]
	cmp r1, r0
	blt _08047CCC
	adds r1, r5, #0x0
	adds r1, #0x29
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	movs r0, #0x01
	negs r0, r0
	strb r0, [r5, #0x01]
	strb r0, [r3, #0x00]
	movs r4, #0x00
_08047CCC:
	ldr r3, [r5, #0x14]
	cmp r4, #0x00
	beq _08047CE0
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	adds r3, r3, r0
_08047CE0:
	str r3, [r5, #0x1C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
