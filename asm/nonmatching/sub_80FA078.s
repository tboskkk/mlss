	push {lr}
	adds r1, r0, #0x0
	ldm r2!, {r0}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldm r2!, {r0}
	cmp r0, #0x00
	beq _080FA08E
	cmp r0, #0x01
	beq _080FA0C4
	b _080FA0FE
_080FA08E:
	ldr r2, [r2, #0x00]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _080FA0B0
	ldr r0, [r1, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x06
	adds r1, r1, r0
	movs r0, #0x0F
	ands r2, r0
	lsls r0, r2, #0x04
	strh r0, [r1, #0x3A]
	b _080FA0FE
_080FA0B0:
	ldr r0, [r1, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x06
	adds r0, r0, r1
	lsls r1, r2, #0x08
	strh r1, [r0, #0x3A]
	b _080FA0FE
_080FA0C4:
	ldr r2, [r2, #0x00]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _080FA0E8
	ldr r0, [r1, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x06
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x0F
	ands r2, r1
	adds r0, #0x20
	strb r2, [r0, #0x00]
	b _080FA0FE
_080FA0E8:
	ldr r0, [r1, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x06
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x04
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080FA0FE:
	movs r0, #0x01
	pop {r1}
	bx r1
