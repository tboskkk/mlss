	.syntax unified
	.text

	thumb_func_start sub_81478DC
sub_81478DC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	adds r7, r5, #0x0
	adds r7, #0x58
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081478FC
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _08147908
_081478FC:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08147908:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x14
	movs r3, #0x26
	bl sub_8139CAC
	ldr r3, _08147934 @ =0x00007FFF
	str r3, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814793C
	ldr r0, _08147938 @ =0x0814796D
	b _0814795C
	.byte 0x00, 0x00
_08147934: .4byte 0x00007FFF
_08147938: .4byte sub_814796C
_0814793C:
	movs r0, #0xBD
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _0814795A
	adds r0, r5, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814795E
_0814795A:
	ldr r0, _08147968 @ =0x08147811
_0814795C:
	str r0, [r6, #0x00]
_0814795E:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147968: .4byte sub_8147810
