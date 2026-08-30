	.syntax unified
	.text

	thumb_func_start sub_81DB670
sub_81DB670:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	movs r0, #0x00
	ldr r1, [r5, #0x00]
	cmp r1, #0x01
	bhi _081DB680
	movs r0, #0x01
_081DB680:
	cmp r0, #0x00
	bne _081DB692
	movs r0, #0x00
	ldr r2, [r6, #0x00]
	cmp r2, #0x01
	bhi _081DB68E
	movs r0, #0x01
_081DB68E:
	cmp r0, #0x00
	beq _081DB696
_081DB692:
	movs r0, #0x01
	b _081DB76C
_081DB696:
	movs r0, #0x00
	cmp r1, #0x04
	bne _081DB69E
	movs r0, #0x01
_081DB69E:
	cmp r0, #0x00
	beq _081DB6B6
	movs r0, #0x00
	cmp r2, #0x04
	bne _081DB6AA
	movs r0, #0x01
_081DB6AA:
	cmp r0, #0x00
	beq _081DB6B6
	ldr r0, [r6, #0x04]
	ldr r1, [r5, #0x04]
	subs r0, r0, r1
	b _081DB76C
_081DB6B6:
	movs r1, #0x00
	ldr r0, [r5, #0x00]
	cmp r0, #0x04
	bne _081DB6C0
	movs r1, #0x01
_081DB6C0:
	cmp r1, #0x00
	bne _081DB70E
	movs r1, #0x00
	cmp r2, #0x04
	bne _081DB6CC
	movs r1, #0x01
_081DB6CC:
	cmp r1, #0x00
	beq _081DB6DE
_081DB6D0:
	ldr r0, [r6, #0x04]
	movs r1, #0x01
	negs r1, r1
	cmp r0, #0x00
	beq _081DB718
	movs r1, #0x01
	b _081DB718
_081DB6DE:
	movs r1, #0x00
	cmp r0, #0x02
	bne _081DB6E6
	movs r1, #0x01
_081DB6E6:
	cmp r1, #0x00
	beq _081DB6F6
	movs r1, #0x00
	cmp r2, #0x02
	bne _081DB6F2
	movs r1, #0x01
_081DB6F2:
	cmp r1, #0x00
	bne _081DB76A
_081DB6F6:
	movs r1, #0x00
	cmp r0, #0x02
	bne _081DB6FE
	movs r1, #0x01
_081DB6FE:
	cmp r1, #0x00
	bne _081DB6D0
	movs r0, #0x00
	cmp r2, #0x02
	bne _081DB70A
	movs r0, #0x01
_081DB70A:
	cmp r0, #0x00
	beq _081DB71C
_081DB70E:
	ldr r0, [r5, #0x04]
	movs r1, #0x01
	cmp r0, #0x00
	beq _081DB718
	subs r1, #0x02
_081DB718:
	adds r0, r1, #0x0
	b _081DB76C
_081DB71C:
	ldr r0, [r6, #0x04]
	ldr r4, [r5, #0x04]
	cmp r4, r0
	beq _081DB72E
_081DB724:
	movs r0, #0x01
	cmp r4, #0x00
	beq _081DB76C
	subs r0, #0x02
	b _081DB76C
_081DB72E:
	ldr r1, [r5, #0x08]
	ldr r0, [r6, #0x08]
	cmp r1, r0
	bgt _081DB724
	cmp r1, r0
	bge _081DB746
_081DB73A:
	movs r0, #0x01
	negs r0, r0
	cmp r4, #0x00
	beq _081DB76C
	movs r0, #0x01
	b _081DB76C
_081DB746:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _081DB724
	cmp r3, r2
	bne _081DB75A
	ldr r1, [r5, #0x0C]
	ldr r0, [r6, #0x0C]
	cmp r1, r0
	bhi _081DB724
_081DB75A:
	cmp r2, r3
	bhi _081DB73A
	cmp r2, r3
	bne _081DB76A
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	cmp r1, r0
	bhi _081DB73A
_081DB76A:
	movs r0, #0x00
_081DB76C:
	pop {r4, r5, r6, pc}
