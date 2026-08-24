	.syntax unified
	.text

	thumb_func_start sub_802DDB4
sub_802DDB4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	mov r9, r1
	adds r5, r2, #0x0
	movs r0, #0xDA
	lsls r0, r0, #0x02
	add r0, r9
	ldr r7, [r0, #0x00]
	lsls r0, r5, #0x02
	adds r1, r7, #0x0
	adds r1, #0x08
	adds r1, r1, r0
	ldrb r0, [r7, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0802DDF0
	b _0802DF6E
_0802DDF0:
	ldrb r0, [r7, #0x02]
	str r0, [sp, #0x008]
	movs r6, #0x00
	ldr r0, _0802DE58 @ =0x000002B5
	add r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x0F
	ands r0, r1
	movs r1, #0x10
	adds r1, r1, r7
	mov r10, r1
	cmp r0, #0x00
	bne _0802DEC8
	cmp r3, #0x00
	beq _0802DEC8
	ldr r0, _0802DE5C @ =0x00000352
	add r0, r9
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x07
	movs r0, #0x01
	eors r1, r0
	adds r1, #0x02
	ldr r0, [sp, #0x004]
	bl sub_8025D24
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802DEC8
	ldr r0, _0802DE60 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r2, #0xE3
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r2, _0802DE64 @ =0x0839F984
	mov r4, r9
	adds r4, #0x54
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r5
	lsls r1, r1, #0x01
	adds r1, r1, r2
	ldrh r2, [r1, #0x00]
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	str r4, [sp, #0x00C]
	cmp r0, #0x00
	beq _0802DEC8
	lsls r6, r5, #0x03
	b _0802DE7E
	.byte 0x00, 0x00
_0802DE58: .4byte 0x000002B5
_0802DE5C: .4byte 0x00000352
_0802DE60: .4byte 0x03000FC0
_0802DE64: .4byte 0x0839F984
_0802DE68:
	ldr r0, _0802DF4C @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0802DEC6
_0802DE7E:
	mov r0, r10
	adds r2, r0, r5
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	movs r4, #0x00
	strb r0, [r2, #0x00]
	movs r0, #0x00
	ldsb r0, [r2, r0]
	add r0, r8
	ldrb r3, [r0, #0x00]
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0802DEA4
	strb r4, [r2, #0x00]
	mov r1, r8
	ldrb r3, [r1, #0x00]
_0802DEA4:
	ldr r2, _0802DF50 @ =0x0839F98C
	ldr r1, [sp, #0x00C]
	ldrb r0, [r1, #0x00]
	lsls r1, r0, #0x03
	subs r1, r1, r0
	lsls r1, r1, #0x02
	subs r0, r6, r5
	lsls r0, r0, #0x01
	adds r1, r1, r0
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r1, r1, #0x01
	adds r1, r1, r2
	ldrh r2, [r1, #0x00]
	cmp r2, #0x00
	bne _0802DE68
_0802DEC6:
	movs r6, #0x01
_0802DEC8:
	mov r2, r10
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, r8
	ldrb r0, [r0, #0x00]
	strb r0, [r7, #0x02]
	ldrb r1, [r7, #0x02]
	ldr r2, [sp, #0x008]
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _0802DF64
	ldr r1, [sp, #0x004]
	ldr r0, [r1, #0x1C]
	ldr r2, [r0, #0x10]
	ldr r1, _0802DF54 @ =0x0839F954
	movs r0, #0xDA
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	ldrb r3, [r0, #0x02]
	adds r1, r3, r1
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x05
	ldr r0, [r2, #0x08]
	adds r0, r0, r1
	mov r4, r9
	adds r4, #0x54
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x0A
	ldr r2, _0802DF58 @ =0x06010DC0
	adds r1, r1, r2
	ldr r2, _0802DF5C @ =0x0839F962
	adds r3, r3, r2
	ldrb r2, [r3, #0x00]
	lsls r2, r2, #0x05
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	cmp r6, #0x00
	beq _0802DF6E
	ldr r2, _0802DF60 @ =0x0839F9FC
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x02
	lsls r1, r5, #0x03
	subs r1, r1, r5
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r7, [r7, #0x02]
	adds r0, r0, r7
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0802DF6E
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _0802DF6E
	.byte 0x00, 0x00
_0802DF4C: .4byte 0x03000FC0
_0802DF50: .4byte 0x0839F98C
_0802DF54: .4byte 0x0839F954
_0802DF58: .4byte 0x06010DC0
_0802DF5C: .4byte 0x0839F962
_0802DF60: .4byte 0x0839F9FC
_0802DF64:
	cmp r6, #0x00
	beq _0802DF6E
	ldr r0, [sp, #0x004]
	bl sub_8029878
_0802DF6E:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
