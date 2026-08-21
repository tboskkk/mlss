	.syntax unified
	.text

	thumb_func_start sub_811B798
sub_811B798:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r5, r0, #0x0
	movs r2, #0xC0
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r1, [r1, #0x00]
	ldrh r2, [r1, #0x02]
	movs r1, #0x02
	ands r1, r2
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	cmp r7, #0x00
	bne _0811B7BE
	b _0811B998
_0811B7BE:
	adds r6, r5, #0x0
	adds r6, #0x68
	adds r4, r5, #0x0
	adds r4, #0x88
	ldr r0, [r5, #0x4C]
	cmp r0, #0x00
	beq _0811B7D0
	bl sprite_hide_8021F20
_0811B7D0:
	ldr r0, [r5, #0x50]
	cmp r0, #0x00
	beq _0811B7DA
	bl sprite_hide_8021F20
_0811B7DA:
	ldr r0, [r5, #0x54]
	cmp r0, #0x00
	beq _0811B7E4
	bl sprite_hide_8021F20
_0811B7E4:
	ldr r0, [r5, #0x58]
	cmp r0, #0x00
	beq _0811B7EE
	bl sprite_hide_8021F20
_0811B7EE:
	ldr r0, [r5, #0x5C]
	cmp r0, #0x00
	beq _0811B7F8
	bl sprite_hide_8021F20
_0811B7F8:
	movs r7, #0x00
	ldr r0, [r5, #0x60]
	cmp r0, #0x00
	beq _0811B804
	bl sprite_hide_8021F20
_0811B804:
	ldr r0, [r5, #0x64]
	cmp r0, #0x00
	beq _0811B80E
	bl sprite_hide_8021F20
_0811B80E:
	ldr r0, [r5, #0x68]
	cmp r0, #0x00
	beq _0811B818
	bl sprite_hide_8021F20
_0811B818:
	ldr r0, [r5, #0x6C]
	cmp r0, #0x00
	beq _0811B822
	bl sprite_hide_8021F20
_0811B822:
	ldr r0, [r6, #0x08]
	cmp r0, #0x00
	beq _0811B82C
	bl sprite_hide_8021F20
_0811B82C:
	ldr r0, [r6, #0x0C]
	cmp r0, #0x00
	beq _0811B836
	bl sprite_hide_8021F20
_0811B836:
	ldr r0, [r6, #0x10]
	cmp r0, #0x00
	beq _0811B840
	bl sprite_hide_8021F20
_0811B840:
	ldr r0, [r6, #0x14]
	cmp r0, #0x00
	beq _0811B84A
	bl sprite_hide_8021F20
_0811B84A:
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	beq _0811B854
	bl sprite_hide_8021F20
_0811B854:
	ldr r0, [r5, #0x20]
	ldr r1, _0811B8A0 @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	str r7, [sp, #0x008]
	str r7, [sp, #0x00C]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x08
	bl sub_81151E4
	movs r0, #0xAB
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, _0811B8A4 @ =0x0000014F
	adds r1, r5, r2
	movs r0, #0x0C
	strb r0, [r1, #0x00]
	ldr r0, _0811B8A8 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	adds r2, #0xD7
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0811B8AC
	movs r2, #0xBF
	lsls r2, r2, #0x01
	adds r1, r5, r2
	movs r0, #0xFD
	lsls r0, r0, #0x06
	b _0811B8B6
_0811B8A0: .4byte 0x0000FFFF
_0811B8A4: .4byte 0x0000014F
_0811B8A8: .4byte 0x03000FC0
_0811B8AC:
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0xF9
	lsls r0, r0, #0x06
_0811B8B6:
	strh r0, [r1, #0x00]
	movs r1, #0xAA
	lsls r1, r1, #0x01
	adds r0, r5, r1
	movs r2, #0x00
	mov r9, r2
	movs r6, #0x01
	strb r6, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	ldr r1, [r4, #0x00]
	movs r0, #0x03
	strb r0, [r1, #0x0C]
	ldr r1, [r4, #0x00]
	movs r2, #0xE5
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	movs r2, #0x00
	mov r10, r2
	strh r0, [r1, #0x14]
	ldr r0, [r4, #0x00]
	strb r6, [r0, #0x1C]
	ldr r1, [r4, #0x00]
	ldr r0, _0811B98C @ =0x0000FF88
	strh r0, [r1, #0x18]
	ldr r1, [r4, #0x00]
	movs r0, #0x0F
	strb r0, [r1, #0x1B]
	ldr r0, [r4, #0x00]
	movs r7, #0xA0
	strh r7, [r0, #0x16]
	ldr r0, [r4, #0x00]
	movs r1, #0x14
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x1A]
	ldr r0, [r4, #0x00]
	strb r6, [r0, #0x1D]
	ldr r0, [r4, #0x00]
	mov r1, r9
	strh r1, [r0, #0x24]
	ldr r0, [r4, #0x00]
	adds r0, #0x2C
	strb r6, [r0, #0x00]
	ldr r0, [r4, #0x00]
	strh r7, [r0, #0x26]
	ldr r0, [r4, #0x00]
	adds r0, #0x2A
	strb r2, [r0, #0x00]
	ldr r0, [r4, #0x00]
	strh r1, [r0, #0x28]
	ldr r0, [r4, #0x00]
	adds r0, #0x2B
	mov r2, r10
	strb r2, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x2D
	strb r6, [r0, #0x00]
	ldr r0, _0811B990 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, _0811B994 @ =0x00000226
	movs r1, #0x00
	bl sub_80E98C0
	adds r1, r0, #0x0
	lsls r1, r1, #0x18
	cmp r1, #0x00
	beq _0811B978
	ldr r1, [r4, #0x00]
	mov r2, r9
	strh r2, [r1, #0x34]
	ldr r1, [r4, #0x00]
	adds r1, #0x3C
	strb r6, [r1, #0x00]
	ldr r1, [r4, #0x00]
	strh r7, [r1, #0x36]
	ldr r1, [r4, #0x00]
	adds r1, #0x3A
	mov r2, r8
	strb r2, [r1, #0x00]
	ldr r1, [r4, #0x00]
	mov r2, r9
	strh r2, [r1, #0x38]
	ldr r1, [r4, #0x00]
	adds r1, #0x3B
	mov r2, r10
	strb r2, [r1, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, #0x3D
	strb r6, [r1, #0x00]
_0811B978:
	movs r2, #0xB2
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r6, [r1, #0x00]
	adds r2, #0x03
	adds r1, r5, r2
	mov r2, r10
	strb r2, [r1, #0x00]
	b _0811B9D4
	.byte 0x00, 0x00
_0811B98C: .4byte 0x0000FF88
_0811B990: .4byte 0x03000FC0
_0811B994: .4byte 0x00000226
_0811B998:
	movs r1, #0x01
	ands r1, r2
	cmp r1, #0x00
	beq _0811B9D4
	movs r1, #0xDF
	lsls r1, r1, #0x01
	adds r6, r5, r1
	ldrb r1, [r6, #0x00]
	cmp r1, #0xFF
	beq _0811B9D4
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x5F
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldrb r0, [r6, #0x00]
	movs r1, #0x01
	eors r0, r1
	strb r0, [r6, #0x00]
	ldr r0, [r5, #0x30]
	ldrb r1, [r6, #0x00]
	str r7, [sp, #0x000]
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x30]
	bl sprite_show_8020CBC
_0811B9D4:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
