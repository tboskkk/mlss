	.syntax unified
	.text

	thumb_func_start sub_80C09AC
sub_80C09AC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080C09FC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C09F4
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C09D8
	cmp r1, #0x04
	bne _080C09F0
_080C09D8:
	ldr r2, _080C0A00 @ =0x00002062
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C09F0:
	ldr r0, _080C0A04 @ =0x080BCF61
	str r0, [r5, #0x4C]
_080C09F4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C09FC: .4byte 0x03000FD8
_080C0A00: .4byte 0x00002062
_080C0A04: .4byte sub_80BCF60
