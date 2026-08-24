	.syntax unified
	.text

	thumb_func_start sub_80E5AA0
sub_80E5AA0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r6, [sp, #0x01C]
	ldr r4, [sp, #0x020]
	mov r9, r4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r7, r2, #0x0
	lsls r6, r6, #0x18
	mov r12, r6
	ldr r5, [r0, #0x04]
	mov r8, r5
	movs r4, #0xC4
	lsls r4, r4, #0x01
	add r4, r8
	lsls r2, r1, #0x01
	ldr r6, _080E5BA8 @ =0x02000008
	adds r2, r2, r6
	str r2, [r4, #0x00]
	movs r5, #0xC6
	lsls r5, r5, #0x01
	add r5, r8
	lsls r2, r1, #0x02
	adds r6, #0x08
	adds r4, r2, r6
	str r4, [r5, #0x00]
	movs r4, #0xC8
	lsls r4, r4, #0x01
	add r4, r8
	ldr r5, _080E5BAC @ =0x02000012
	adds r2, r2, r5
	str r2, [r4, #0x00]
	movs r5, #0xDB
	lsls r5, r5, #0x01
	add r5, r8
	movs r2, #0x03
	ands r1, r2
	lsls r1, r1, #0x07
	ldrh r4, [r5, #0x00]
	ldr r2, _080E5BB0 @ =0xFFFFFE7F
	ands r2, r4
	orrs r2, r1
	strh r2, [r5, #0x00]
	ldr r5, [r0, #0x04]
	ldr r6, _080E5BB4 @ =0x000001B7
	mov r8, r6
	add r5, r8
	movs r1, #0x0F
	adds r2, r7, #0x0
	ands r2, r1
	lsls r2, r2, #0x01
	ldrb r4, [r5, #0x00]
	movs r1, #0x1F
	negs r1, r1
	ands r1, r4
	orrs r1, r2
	strb r1, [r5, #0x00]
	ldr r2, [r0, #0x04]
	movs r4, #0xC2
	lsls r4, r4, #0x01
	adds r1, r2, r4
	str r3, [r1, #0x00]
	movs r5, #0xD8
	lsls r5, r5, #0x01
	adds r1, r2, r5
	movs r2, #0x00
	mov r6, r9
	strh r6, [r1, #0x00]
	ldr r3, [r0, #0x04]
	adds r4, #0x2F
	adds r1, r3, r4
	strb r2, [r1, #0x00]
	adds r5, #0x02
	adds r1, r3, r5
	strb r2, [r1, #0x00]
	ldr r1, [r0, #0x04]
	movs r6, #0xDA
	lsls r6, r6, #0x01
	adds r1, r1, r6
	strb r2, [r1, #0x00]
	ldr r1, [r0, #0x04]
	add r1, r8
	mov r0, r12
	lsrs r6, r0, #0x13
	ldrb r2, [r1, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r6
	strb r0, [r1, #0x00]
	ldr r0, _080E5BB8 @ =0x03000FBC
	ldr r0, [r0, #0x00]
	ldr r1, [sp, #0x024]
	str r1, [r0, #0x00]
	ldr r2, [sp, #0x028]
	str r2, [r0, #0x04]
	ldr r3, [sp, #0x02C]
	str r3, [r0, #0x08]
	cmp r7, #0x0F
	bhi _080E5B9A
	ldr r2, _080E5BBC @ =0x083B8F24
	ldr r4, _080E5BC0 @ =0x0300034C
	ldr r5, _080E5BC4 @ =0x00000888
	adds r0, r4, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	beq _080E5B82
	adds r2, #0x20
_080E5B82:
	lsls r1, r7, #0x05
	ldr r6, _080E5BC8 @ =0x02000080
	adds r1, r1, r6
	adds r0, r2, #0x0
	movs r2, #0x08
	bl CpuFastSet
	movs r0, #0x01
	lsls r0, r7
	ldrh r1, [r4, #0x02]
	orrs r0, r1
	strh r0, [r4, #0x02]
_080E5B9A:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E5BA8: .4byte 0x02000008
_080E5BAC: .4byte 0x02000012
_080E5BB0: .4byte 0xFFFFFE7F
_080E5BB4: .4byte 0x000001B7
_080E5BB8: .4byte 0x03000FBC
_080E5BBC: .4byte 0x083B8F24
_080E5BC0: .4byte 0x0300034C
_080E5BC4: .4byte 0x00000888
_080E5BC8: .4byte 0x02000080
