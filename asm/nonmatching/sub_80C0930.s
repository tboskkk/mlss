	.syntax unified
	.text

	thumb_func_start sub_80C0930
sub_80C0930:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080C0974 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C094E
	cmp r1, #0x04
	bne _080C096A
_080C094E:
	ldr r2, _080C0978 @ =0x00002062
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C096A:
	ldr r0, _080C097C @ =0x080BE8D1
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_080C0974: .4byte 0x03000FD8
_080C0978: .4byte 0x00002062
_080C097C: .4byte sub_80BE8D0
