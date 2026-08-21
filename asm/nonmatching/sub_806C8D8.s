	.syntax unified
	.text

	thumb_func_start sub_806C8D8
sub_806C8D8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C930
	adds r1, r2, #0x0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C90C
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0xB3
	lsls r1, r1, #0x05
	b _0806C91A
_0806C90C:
	adds r0, r4, #0x0
	movs r1, #0x12
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806C938 @ =0x000016E2
_0806C91A:
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806C93C @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806C940 @ =0x0806C8C1
	str r0, [r4, #0x58]
	ldr r0, _0806C944 @ =0x0806C849
	str r0, [r4, #0x5C]
	ldr r0, _0806C948 @ =0x0806CB3D
	str r0, [r4, #0x4C]
_0806C930:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C938: .4byte 0x000016E2
_0806C93C: .4byte 0x03000E3C
_0806C940: .4byte sub_806C8C0
_0806C944: .4byte sub_806C848
_0806C948: .4byte sub_806CB3C
