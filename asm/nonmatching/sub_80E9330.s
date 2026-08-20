	.syntax unified
	.text

	thumb_func_start sub_80E9330
sub_80E9330:
	push {lr}
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r3, [r0, #0x04]
	movs r1, #0xD9
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	asrs r0, r2
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080E9380
	movs r0, #0x4C
	muls r0, r2
	adds r0, r3, r0
	adds r3, r0, #0x0
	adds r3, #0x42
	ldrb r2, [r3, #0x00]
	movs r0, #0x04
	ands r0, r2
	cmp r0, #0x00
	beq _080E936A
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r3, #0x00]
	b _080E9380
_080E936A:
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	adds r0, #0x01
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x03
	movs r1, #0x79
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
_080E9380:
	pop {r0}
	bx r0
