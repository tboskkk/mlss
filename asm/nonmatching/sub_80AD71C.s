	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	str r0, [sp, #0x004]
	ldr r6, _080AD818 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r5, [r0, #0x70]
	adds r7, r5, #0x0
	adds r7, #0x08
	ldr r4, [r0, #0x74]
	movs r0, #0x08
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [sp, #0x004]
	ldr r1, [r1, #0x2C]
	mov r9, r1
	ldr r1, [r7, #0x10]
	cmp r1, #0x00
	bge _080AD74A
	adds r1, #0xFF
_080AD74A:
	asrs r1, r1, #0x08
	ldr r2, [r7, #0x14]
	cmp r2, #0x00
	bge _080AD754
	adds r2, #0xFF
_080AD754:
	asrs r2, r2, #0x08
	ldr r3, [r7, #0x18]
	cmp r3, #0x00
	bge _080AD75E
	adds r3, #0xFF
_080AD75E:
	asrs r3, r3, #0x08
	adds r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080AD81C @ =0x00002FBA
	bl sub_80DF024
	ldr r0, [r7, #0x38]
	mov r1, r8
	str r0, [r1, #0x10]
	ldr r0, [r7, #0x3C]
	str r0, [r1, #0x14]
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x18]
	adds r0, r5, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x7D
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AD820
	adds r1, r7, #0x0
	adds r3, r6, #0x0
	movs r0, #0xA4
	adds r0, r0, r5
	mov r10, r0
	adds r6, r5, #0x0
	adds r6, #0xA8
	adds r5, #0x7E
	str r5, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0x7E
	str r0, [sp, #0x00C]
	adds r0, #0x26
	str r0, [sp, #0x010]
	adds r0, #0x04
	str r0, [sp, #0x014]
	adds r0, #0x04
	str r0, [sp, #0x018]
	adds r4, #0xB0
	str r4, [sp, #0x01C]
	cmp r7, #0x00
	beq _080AD7CE
	movs r2, #0x80
	lsls r2, r2, #0x01
_080AD7C2:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080AD7C2
_080AD7CE:
	mov r1, r8
	cmp r1, #0x00
	beq _080AD7E4
	movs r2, #0x80
	lsls r2, r2, #0x01
_080AD7D8:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080AD7D8
_080AD7E4:
	mov r1, r9
	cmp r1, #0x00
	beq _080AD7FA
	movs r2, #0x80
	lsls r2, r2, #0x01
_080AD7EE:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080AD7EE
_080AD7FA:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080AD8A2
	movs r2, #0x10
_080AD804:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080AD80E
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080AD80E:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080AD804
	b _080AD8A2
	.byte 0x00, 0x00
_080AD818: .4byte 0x03000FD8
_080AD81C: .4byte 0x00002FBA
_080AD820:
	adds r1, r7, #0x0
	adds r3, r6, #0x0
	movs r0, #0xA4
	adds r0, r0, r5
	mov r10, r0
	adds r6, r5, #0x0
	adds r6, #0xA8
	adds r5, #0x7E
	str r5, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0x7E
	str r0, [sp, #0x00C]
	adds r0, #0x26
	str r0, [sp, #0x010]
	adds r0, #0x04
	str r0, [sp, #0x014]
	adds r0, #0x04
	str r0, [sp, #0x018]
	adds r4, #0xB0
	str r4, [sp, #0x01C]
	cmp r7, #0x00
	beq _080AD85C
	movs r2, #0x80
	lsls r2, r2, #0x01
_080AD850:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080AD850
_080AD85C:
	mov r1, r8
	cmp r1, #0x00
	beq _080AD872
	movs r2, #0x80
	lsls r2, r2, #0x01
_080AD866:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080AD866
_080AD872:
	mov r1, r9
	cmp r1, #0x00
	beq _080AD888
	movs r2, #0x80
	lsls r2, r2, #0x01
_080AD87C:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080AD87C
_080AD888:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080AD8A2
	movs r2, #0x10
_080AD892:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080AD89C
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080AD89C:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080AD892
_080AD8A2:
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807C0D0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r0, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x28]
	adds r0, #0xF4
	ldrb r5, [r0, #0x00]
	adds r3, r5, #0x0
	mov r0, r10
	str r5, [r0, #0x00]
	movs r0, #0x00
	str r0, [r6, #0x00]
	mov r12, r6
	b _080AD920
_080AD8D0:
	ldr r0, _080ADA44 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x02
	adds r6, r1, #0x0
	adds r6, #0x58
	adds r0, r6, r0
	ldr r2, [r0, #0x00]
	adds r4, r2, #0x0
	adds r4, #0x08
	adds r1, r2, #0x0
	adds r1, #0xA4
	movs r0, #0x02
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080AD920
	ldr r0, [r4, #0x28]
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080AD920
	lsls r0, r5, #0x02
	adds r0, r6, r0
	ldr r0, [r0, #0x00]
	adds r0, #0xA4
	str r3, [r0, #0x00]
	adds r5, r3, #0x0
	mov r1, r12
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
_080AD920:
	adds r3, #0x01
	cmp r3, #0x06
	bne _080AD928
	movs r3, #0x00
_080AD928:
	mov r1, r9
	ldr r0, [r1, #0x28]
	adds r0, #0xF4
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bne _080AD8D0
	ldr r0, _080ADA44 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0xA4
	movs r1, #0x01
	negs r1, r1
	str r1, [r0, #0x00]
	movs r0, #0x8B
	lsls r0, r0, #0x01
	bl play_sfx_80195B4
	ldr r1, [sp, #0x008]
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD960
	cmp r1, #0x04
	bne _080AD978
_080AD960:
	ldr r2, _080ADA48 @ =0x00002032
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AD978:
	ldr r1, [sp, #0x00C]
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD988
	cmp r1, #0x04
	bne _080AD9A2
_080AD988:
	ldr r2, _080ADA4C @ =0x00002061
	mov r0, r8
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	mov r0, r8
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AD9A2:
	mov r1, r10
	ldr r0, [r1, #0x00]
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
	movs r0, #0x01
	ldr r1, [sp, #0x014]
	str r0, [r1, #0x00]
	ldr r1, [sp, #0x018]
	str r0, [r1, #0x00]
	movs r0, #0xA0
	lsls r0, r0, #0x05
	ldr r1, [sp, #0x01C]
	str r0, [r1, #0x00]
	ldr r0, _080ADA44 @ =0x03000FD8
	ldr r4, [r0, #0x00]
	ldr r0, [sp, #0x010]
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r2, #0x08
	str r2, [r7, #0x2C]
	ldr r5, [r7, #0x30]
	ldr r3, [r2, #0x28]
	adds r3, #0xE4
	ldr r0, [r3, #0x00]
	movs r1, #0x04
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r3, #0x00]
	movs r1, #0x05
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r3, #0x00]
	movs r1, #0x06
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	ldr r1, _080ADA50 @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x00
	cmp r0, #0x00
	bne _080ADA14
	movs r1, #0x02
_080ADA14:
	ldr r2, _080ADA54 @ =0x00002093
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x30]
	bl sub_8086E8C
	ldr r1, [r7, #0x30]
	ldr r1, [r1, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x02
	strh r0, [r1, #0x0E]
	ldr r0, _080ADA58 @ =0x080ADA5D
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080ADA44: .4byte 0x03000FD8
_080ADA48: .4byte 0x00002032
_080ADA4C: .4byte 0x00002061
_080ADA50: .4byte 0xFFFFF400
_080ADA54: .4byte 0x00002093
_080ADA58: .4byte sub_80ADA5C
