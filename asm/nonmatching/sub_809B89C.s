	.syntax unified
	.text

	thumb_func_start sub_809B89C
sub_809B89C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x2C]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B90C
	ldr r2, _0809B914 @ =0x000040C2
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809B8D4
	adds r1, #0xFF
_0809B8D4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809B8DE
	adds r2, #0xFF
_0809B8DE:
	asrs r2, r2, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809B918 @ =0x00001202
	movs r3, #0x00
	bl sub_80DF024
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bne _0809B908
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x3E
	ands r0, r1
	cmp r0, #0x02
	bne _0809B908
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0809B908:
	ldr r0, _0809B91C @ =0x0809B921
	str r0, [r5, #0x4C]
_0809B90C:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0809B914: .4byte 0x000040C2
_0809B918: .4byte 0x00001202
_0809B91C: .4byte sub_809B920
