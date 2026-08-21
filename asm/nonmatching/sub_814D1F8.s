	.syntax unified
	.text

	thumb_func_start sub_814D1F8
sub_814D1F8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814D288
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x22
	movs r3, #0x10
	bl sub_8139BB0
	ldr r2, _0814D290 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814D288
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804761C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	adds r0, #0x20
	movs r5, #0x80
	lsls r5, r5, #0x01
	movs r4, #0x00
	ldsb r4, [r0, r4]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x00
	adds r3, r5, #0x0
	bl sub_8046A90
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x00
	adds r3, r5, #0x0
	bl sub_8046B30
	adds r0, r6, #0x0
	bl sub_8046D18
	ldr r0, _0814D294 @ =0x0814D299
	str r0, [r7, #0x00]
_0814D288:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814D290: .4byte 0x00007FFF
_0814D294: .4byte sub_814D298
