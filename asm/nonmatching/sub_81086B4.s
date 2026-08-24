	.syntax unified
	.text

	thumb_func_start sub_81086B4
sub_81086B4:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r6, r2, #0x0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	cmp r7, #0xFF
	bhi _08108770
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _081086E0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r6, r0
	bge _08108752
_081086DC:
	movs r0, #0x00
	b _081087DC
_081086E0:
	ldr r2, _08108764 @ =0x08201127
	adds r0, r5, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x03
	ands r0, r1
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x64
	subs r0, r0, r1
	cmp r0, #0x64
	beq _081086DC
	cmp r0, #0x00
	beq _08108722
	movs r1, #0x03
	bl __divsi3
	adds r4, r0, #0x0
	subs r4, r6, r4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r1, #0x01
	cmp r4, r0
	bge _0810871E
	movs r1, #0x00
_0810871E:
	cmp r1, #0x00
	beq _081086DC
_08108722:
	movs r2, #0x91
	lsls r2, r2, #0x01
	adds r4, r5, r2
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0810874A
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r3, #0x8C
	lsls r3, r3, #0x01
	adds r1, r5, r3
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_0810874A:
	ldr r0, _08108768 @ =0x00000129
	adds r1, r5, r0
	movs r0, #0xFF
	strb r0, [r1, #0x00]
_08108752:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrh r0, [r2, #0x00]
	ldr r1, _0810876C @ =0x0000FFCF
	ands r1, r0
	movs r0, #0x20
	b _081087BA
	.byte 0x00, 0x00
_08108764: .4byte dword_8201127 @ =0x08201127
_08108768: .4byte 0x00000129
_0810876C: .4byte 0x0000FFCF
_08108770:
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	blt _081087AC
	movs r3, #0x91
	lsls r3, r3, #0x01
	adds r4, r5, r3
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _081087A4
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r5, r2
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_081087A4:
	ldr r3, _081087E4 @ =0x00000129
	adds r1, r5, r3
	movs r0, #0xFF
	strb r0, [r1, #0x00]
_081087AC:
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrh r0, [r2, #0x00]
	ldr r1, _081087E8 @ =0x0000FFCF
	ands r1, r0
	movs r0, #0x10
_081087BA:
	orrs r1, r0
	strh r1, [r2, #0x00]
	movs r1, #0x86
	lsls r1, r1, #0x01
	adds r0, r5, r1
	strh r7, [r0, #0x00]
	movs r3, #0x90
	lsls r3, r3, #0x01
	adds r2, r5, r3
	ldrh r1, [r2, #0x00]
	ldr r0, _081087EC @ =0xFFFFFE3F
	ands r0, r1
	adds r3, #0x20
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x01
_081087DC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081087E4: .4byte 0x00000129
_081087E8: .4byte 0x0000FFCF
_081087EC: .4byte 0xFFFFFE3F
