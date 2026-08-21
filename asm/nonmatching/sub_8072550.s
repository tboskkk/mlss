	.syntax unified
	.text

	thumb_func_start sub_8072550
sub_8072550:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _080725C8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080725C2
	adds r0, r5, #0x0
	movs r1, #0x30
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _080725CC @ =0x08072651
	str r0, [r4, #0x4C]
_080725C2:
	pop {r4, r5}
	pop {r0}
	bx r0
_080725C8: .4byte 0x03000FD8
_080725CC: .4byte sub_8072650
