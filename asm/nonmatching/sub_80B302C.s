	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B3042
	cmp r1, #0x04
	bne _080B309C
_080B3042:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080B304A
	adds r0, #0xFF
_080B304A:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x1E
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080B3064
	adds r2, #0xFF
_080B3064:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080B3088
	adds r0, #0xFF
_080B3088:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080B309C:
	ldr r0, _080B30A8 @ =0x080B30AD
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080B30A8: .4byte sub_80B30AC
