	.syntax unified
	.text

	thumb_func_start sub_809D3F4
sub_809D3F4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809D440
	ldr r2, _0809D448 @ =0x0000410A
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, _0809D44C @ =0x0000410B
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r3, [r4, #0x08]
	ldrb r2, [r3, #0x12]
	movs r1, #0x07
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	strb r0, [r3, #0x12]
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r0, [r2, #0x12]
	ands r1, r0
	strb r1, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0809D450 @ =0x0809D49D
	str r0, [r4, #0x4C]
_0809D440:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809D448: .4byte 0x0000410A
_0809D44C: .4byte 0x0000410B
_0809D450: .4byte sub_809D49C
