	.syntax unified
	.text

	thumb_func_start sub_80E8944
sub_80E8944:
	add sp, #-0x010
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x034]
	str r1, [sp, #0x038]
	str r2, [sp, #0x03C]
	str r3, [sp, #0x040]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bne _080E8964
	movs r0, #0x00
	b _080E8B72
_080E8964:
	movs r0, #0x00
	mov r8, r0
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r2, #0x00
	str r2, [sp, #0x008]
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x038]
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	mov r9, r0
	add r1, sp, #0x034
	movs r2, #0x20
	movs r0, #0x20
	strb r0, [r1, #0x0D]
	adds r0, r1, #0x0
	ldrb r0, [r0, #0x0C]
	str r0, [sp, #0x00C]
	adds r0, r1, #0x0
	ldrb r0, [r0, #0x0D]
	str r0, [sp, #0x010]
	ldrb r0, [r1, #0x12]
	orrs r0, r2
	strb r0, [r1, #0x12]
_080E899A:
	ldr r0, [sp, #0x03C]
	ldrb r4, [r0, #0x00]
_080E899E:
	add r0, sp, #0x034
	ldrb r0, [r0, #0x0C]
	ldr r1, [sp, #0x000]
	cmp r1, r0
	bcs _080E89AA
	str r0, [sp, #0x000]
_080E89AA:
	add r0, sp, #0x034
	ldrb r1, [r0, #0x12]
	movs r3, #0x20
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _080E89E8
	add r0, sp, #0x034
	strb r1, [r0, #0x0C]
	adds r2, r0, #0x0
	adds r1, r0, #0x0
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1C
	add r0, r9
	ldrb r1, [r1, #0x0D]
	adds r0, r0, r1
	strb r0, [r2, #0x0D]
	ldr r0, [sp, #0x038]
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	mov r9, r0
	adds r1, r2, #0x0
	ldrb r0, [r1, #0x12]
	orrs r0, r3
	strb r0, [r1, #0x12]
_080E89E8:
	add r0, sp, #0x034
	ldrb r0, [r0, #0x0D]
	add r0, r9
	cmp r8, r0
	bcs _080E89F4
	mov r8, r0
_080E89F4:
	cmp r4, #0x00
	bne _080E8A24
	movs r2, #0x20
	negs r2, r2
	add r8, r2
	ldr r0, [sp, #0x004]
	ldr r1, [sp, #0x000]
	cmp r0, r1
	bcs _080E8A08
	str r1, [sp, #0x004]
_080E8A08:
	ldr r2, [sp, #0x008]
	cmp r2, r8
	bcs _080E8A12
	mov r0, r8
	str r0, [sp, #0x008]
_080E8A12:
	ldr r1, _080E8A20 @ =0x0000FFFF
	ldr r2, [sp, #0x008]
	ands r1, r2
	ldr r2, [sp, #0x004]
	lsls r0, r2, #0x10
	orrs r0, r1
	b _080E8B72
_080E8A20: .4byte 0x0000FFFF
_080E8A24:
	cmp r4, #0xFF
	bne _080E8A9E
	ldr r1, [sp, #0x03C]
	ldrb r2, [r1, #0x01]
	movs r0, #0xE0
	ands r0, r2
	cmp r0, #0x00
	bne _080E8A3A
	movs r5, #0x1F
	ands r5, r2
	b _080E8A3C
_080E8A3A:
	movs r5, #0x00
_080E8A3C:
	ldrb r4, [r1, #0x02]
	adds r0, r1, #0x2
	str r0, [sp, #0x03C]
	add r0, sp, #0x034
	movs r1, #0x01
	bl sub_8199888
	cmp r5, #0x11
	beq _080E8A50
	b _080E8B5C
_080E8A50:
	cmp r4, #0x01
	beq _080E8A56
	b _080E8B5C
_080E8A56:
	ldr r0, [sp, #0x048]
	ands r4, r0
	cmp r4, #0x00
	beq _080E8A9A
	add r0, sp, #0x034
	mov r1, sp
	ldrb r1, [r1, #0x0C]
	strb r1, [r0, #0x0C]
	mov r2, sp
	ldrb r2, [r2, #0x10]
	strb r2, [r0, #0x0D]
	adds r2, r0, #0x0
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x20
	negs r0, r0
	add r8, r0
	ldr r1, [sp, #0x004]
	ldr r2, [sp, #0x000]
	cmp r1, r2
	bcs _080E8A86
	str r2, [sp, #0x004]
_080E8A86:
	ldr r0, [sp, #0x008]
	cmp r0, r8
	bcs _080E8A90
	mov r1, r8
	str r1, [sp, #0x008]
_080E8A90:
	movs r2, #0x00
	mov r8, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	b _080E8B5C
_080E8A9A:
	movs r4, #0x00
	b _080E899E
_080E8A9E:
	cmp r4, #0x20
	bne _080E8AB6
	add r2, sp, #0x034
	adds r1, r2, #0x0
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1C
	ldrb r1, [r1, #0x0C]
	adds r0, r0, r1
	strb r0, [r2, #0x0C]
	b _080E8B56
_080E8AB6:
	movs r0, #0xFF
	subs r0, r0, r4
	ldr r2, [sp, #0x038]
	cmp r0, #0x05
	bgt _080E8AD4
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _080E8AD4
	ldr r0, [sp, #0x03C]
	adds r0, #0x01
	str r0, [sp, #0x03C]
	adds r7, r1, #0x0
	b _080E8AD6
_080E8AD4:
	ldr r7, [r2, #0x00]
_080E8AD6:
	ldr r0, [r7, #0x00]
	lsls r0, r0, #0x18
	mov r12, r0
	ldr r0, [sp, #0x03C]
	ldrb r4, [r0, #0x00]
	movs r1, #0x0F
	mov r10, r1
	mov r0, r12
	lsrs r2, r0, #0x18
	ands r2, r1
	lsls r3, r2, #0x02
	add r0, sp, #0x034
	ldrb r1, [r0, #0x12]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080E8AFA
	lsls r3, r2, #0x03
_080E8AFA:
	cmp r9, r3
	bcs _080E8B00
	mov r9, r3
_080E8B00:
	add r2, sp, #0x034
	adds r1, r2, #0x0
	adds r0, r1, #0x0
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	ldrb r1, [r1, #0x0C]
	adds r6, r0, r1
	strb r6, [r2, #0x0C]
	adds r0, r2, #0x0
	ldrb r5, [r0, #0x12]
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0x00
	beq _080E8B42
	adds r3, r2, #0x0
	lsrs r1, r4, #0x03
	lsls r1, r1, #0x02
	adds r1, r1, r7
	movs r0, #0x07
	ands r4, r0
	lsls r2, r4, #0x02
	ldr r0, [r1, #0x04]
	lsrs r0, r2
	mov r1, r10
	ands r0, r1
	adds r0, #0x01
	lsls r1, r5, #0x1E
	lsrs r1, r1, #0x1F
	lsls r0, r1
	adds r0, r6, r0
	strb r0, [r3, #0x0C]
	b _080E8B56
_080E8B42:
	add r2, sp, #0x034
	mov r0, r12
	lsrs r1, r0, #0x1A
	movs r0, #0xFC
	ands r1, r0
	lsls r0, r5, #0x1E
	lsrs r0, r0, #0x1F
	lsls r1, r0
	adds r1, r6, r1
	strb r1, [r2, #0x0C]
_080E8B56:
	ldr r0, [sp, #0x03C]
	adds r0, #0x01
	str r0, [sp, #0x03C]
_080E8B5C:
	movs r1, #0x00
	cmp r1, #0x00
	bne _080E8B64
	b _080E899A
_080E8B64:
	ldr r0, [sp, #0x03C]
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080E8B6E
	b _080E899A
_080E8B6E:
	str r1, [sp, #0x03C]
	b _080E899A
_080E8B72:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x010
	bx r3
