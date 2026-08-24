	push {lr}
	ldm r2!, {r3}
	cmp r3, #0x01
	beq _080F0768
	cmp r3, #0x01
	bgt _080F0756
	cmp r3, #0x00
	beq _080F075C
	b _080F0778
_080F0756:
	cmp r3, #0x02
	beq _080F0772
	b _080F0778
_080F075C:
	ldr r0, [r0, #0x14]
	ldr r1, [r2, #0x00]
	movs r2, #0x00
	bl sub_803C8A4
	b _080F0778
_080F0768:
	ldr r0, [r0, #0x14]
	movs r1, #0x00
	bl sub_80297D8
	b _080F0778
_080F0772:
	ldr r0, [r0, #0x14]
	bl sub_8029788
_080F0778:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
