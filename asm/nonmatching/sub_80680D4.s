	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r1, #0x28]
	ldr r0, [r0, #0x38]
	cmp r1, r0
	beq _080680E6
	movs r0, #0x01
	b _08068112
_080680E6:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080680EE
	adds r1, #0xFF
_080680EE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080680F8
	adds r2, #0xFF
_080680F8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08068102
	adds r3, #0xFF
_08068102:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806811C @ =0x000010AD
	bl sub_80DF024
	ldr r0, _08068120 @ =0x08068269
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08068112:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806811C: .4byte 0x000010AD
_08068120: .4byte sub_8068268
