	.syntax unified
	.text

	thumb_func_start sub_8139AA0
sub_8139AA0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	movs r7, #0x80
	lsls r7, r7, #0x01
	add r7, r8
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r8
	ldr r4, [r0, #0x00]
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	lsls r0, r0, #0x10
	mov r9, r0
	asrs r6, r0, #0x10
	movs r0, #0x01
	ands r0, r6
	cmp r0, #0x00
	beq _08139ADA
	movs r1, #0x94
	lsls r1, r1, #0x01
	add r1, r8
	adds r0, r4, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r4, #0x08
_08139ADA:
	movs r0, #0x02
	ands r0, r6
	cmp r0, #0x00
	beq _08139AEE
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r4, #0x08
_08139AEE:
	movs r0, #0x04
	ands r0, r6
	cmp r0, #0x00
	beq _08139B1A
	adds r5, r4, #0x0
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r7, #0x08]
	adds r5, #0x01
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r7, #0x0A]
	adds r5, #0x01
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r7, #0x0C]
	adds r5, #0x01
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r7, #0x0E]
	adds r5, #0x01
	adds r4, r5, #0x0
_08139B1A:
	movs r0, #0x08
	ands r0, r6
	cmp r0, #0x00
	beq _08139B32
	movs r1, #0x88
	lsls r1, r1, #0x01
	add r1, r8
	adds r0, r4, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r4, #0x08
_08139B32:
	movs r0, #0x10
	ands r0, r6
	cmp r0, #0x00
	beq _08139B4A
	movs r1, #0x8C
	lsls r1, r1, #0x01
	add r1, r8
	adds r0, r4, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r4, #0x08
_08139B4A:
	movs r0, #0x20
	ands r0, r6
	cmp r0, #0x00
	beq _08139B64
	adds r5, r4, #0x0
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r7, #0x30]
	adds r5, #0x01
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r7, #0x32]
	adds r5, #0x01
_08139B64:
	movs r0, #0x40
	ands r0, r6
	cmp r0, #0x00
	beq _08139B7E
	movs r0, #0xA0
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r1, [r5, #0x00]
	strb r1, [r0, #0x00]
	ldr r1, _08139BA8 @ =0x00000141
	add r1, r8
	ldrb r0, [r5, #0x01]
	strb r0, [r1, #0x00]
_08139B7E:
	movs r0, #0xF0
	lsls r0, r0, #0x08
	ands r0, r6
	cmp r0, #0x00
	beq _08139B9C
	mov r0, r9
	lsrs r1, r0, #0x1C
	ldr r3, _08139BAC @ =0x0000033D
	add r3, r8
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x0F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_08139B9C:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08139BA8: .4byte 0x00000141
_08139BAC: .4byte 0x0000033D
