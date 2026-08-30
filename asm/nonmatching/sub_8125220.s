	.syntax unified
	.text

	thumb_func_start sub_8125220
sub_8125220:
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r4, r3, #0x0
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	adds r5, r1, #0x0
	cmp r3, #0x00
	beq _08125254
	movs r0, #0x01
	ands r0, r3
	cmp r0, #0x00
	beq _08125242
	movs r0, #0x00
	movs r2, #0x1E
	bl sub_8019650
_08125242:
	movs r0, #0x02
	ands r4, r0
	cmp r4, #0x00
	beq _08125254
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x1E
	bl sub_8019650
_08125254:
	pop {r4, r5}
	pop {r0}
	bx r0
