	.syntax unified
	.text

	thumb_func_start sub_80D8D58
sub_80D8D58:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D8DBC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D8DB6
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D8D8C
	cmp r1, #0x04
	bne _080D8DB2
_080D8D8C:
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D8DB2:
	ldr r0, _080D8DC0 @ =0x080D3225
	str r0, [r6, #0x4C]
_080D8DB6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D8DBC: .4byte 0x03000FD8
_080D8DC0: .4byte sub_80D3224
