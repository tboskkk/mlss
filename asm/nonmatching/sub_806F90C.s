	.syntax unified
	.text

	thumb_func_start sub_806F90C
sub_806F90C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806F96E
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _0806F96E
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0806F94E
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806F95A
_0806F94E:
	adds r0, r4, #0x0
	movs r1, #0x21
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806F95A:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	movs r0, #0x3C
	strh r0, [r5, #0x00]
	ldr r0, _0806F974 @ =0x0806F979
	str r0, [r4, #0x4C]
_0806F96E:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806F974: .4byte sub_806F978
