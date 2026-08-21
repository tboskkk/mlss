	.syntax unified
	.text

	thumb_func_start sub_8139F08
sub_8139F08:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r2, #0x01
	negs r2, r2
	cmp r0, r2
	beq _08139F4A
	cmp r0, #0x00
	bne _08139F2A
	ldr r0, [r4, #0x28]
	ldr r1, [r5, #0x14]
	b _08139F44
_08139F2A:
	cmp r0, #0x01
	bne _08139F34
	ldr r0, [r4, #0x2C]
	ldr r1, [r5, #0x14]
	b _08139F44
_08139F34:
	cmp r0, #0x02
	bne _08139F4E
	ldr r0, [r4, #0x28]
	ldr r1, [r5, #0x14]
	ldr r0, [r0, #0x14]
	cmp r1, r0
	beq _08139F4E
	ldr r0, [r4, #0x2C]
_08139F44:
	ldr r0, [r0, #0x14]
	cmp r1, r0
	beq _08139F4E
_08139F4A:
	adds r0, r2, #0x0
	b _08139FA8
_08139F4E:
	movs r6, #0xFF
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x28
	movs r3, #0x08
	bl sub_8139BB0
	add r1, sp, #0x004
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x00]
	negs r0, r0
	movs r7, #0x00
	strh r0, [r1, #0x00]
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x06]
	negs r0, r0
	strh r0, [r1, #0x06]
	ldr r2, [r4, #0x28]
	str r7, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08139F86
	movs r6, #0x00
_08139F86:
	ldr r2, [r4, #0x2C]
	str r7, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08139FA4
	lsls r0, r6, #0x18
	movs r6, #0x01
	cmp r0, #0x00
	bne _08139FA4
	movs r6, #0x02
_08139FA4:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
_08139FA8:
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
