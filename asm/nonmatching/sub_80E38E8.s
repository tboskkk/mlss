	.syntax unified
	.text

	thumb_func_start sub_80E38E8
sub_80E38E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	str r0, [sp, #0x004]
	str r1, [sp, #0x008]
	str r2, [sp, #0x00C]
	adds r4, r3, #0x0
	ldr r0, _080E3974 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	movs r1, #0x00
	str r1, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	lsls r0, r4, #0x01
	ldr r2, _080E3978 @ =0x02000008
	adds r0, r0, r2
	ldrh r5, [r0, #0x00]
	lsls r4, r4, #0x02
	ldr r3, _080E397C @ =0x02000010
	adds r0, r4, r3
	ldrh r0, [r0, #0x00]
	adds r0, #0x04
	ldr r1, [sp, #0x004]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080E3932
	adds r1, #0x07
_080E3932:
	asrs r2, r1, #0x03
	ldr r6, _080E3980 @ =0x02000012
	adds r0, r4, r6
	ldrh r0, [r0, #0x00]
	adds r0, #0x04
	ldr r1, [sp, #0x008]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080E3946
	adds r0, #0x07
_080E3946:
	asrs r1, r0, #0x03
	movs r3, #0x1F
	ands r3, r2
	movs r0, #0x80
	lsls r0, r0, #0x07
	ands r0, r5
	cmp r0, #0x00
	beq _080E3964
	movs r0, #0x3F
	ands r2, r0
	cmp r2, #0x1F
	ble _080E3964
	movs r0, #0x80
	lsls r0, r0, #0x03
	adds r3, r3, r0
_080E3964:
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r5
	cmp r0, #0x00
	beq _080E3984
	movs r0, #0x3F
	b _080E3986
	.byte 0x00, 0x00
_080E3974: .4byte 0x03000FD8
_080E3978: .4byte 0x02000008
_080E397C: .4byte 0x02000010
_080E3980: .4byte 0x02000012
_080E3984:
	movs r0, #0x1F
_080E3986:
	ands r0, r1
	lsls r0, r0, #0x05
	adds r3, r3, r0
	lsrs r0, r5, #0x08
	movs r1, #0x1F
	ands r0, r1
	lsls r0, r0, #0x0B
	movs r2, #0xC0
	lsls r2, r2, #0x13
	adds r0, r0, r2
	lsls r1, r3, #0x01
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	str r0, [sp, #0x010]
	ldrh r6, [r1, #0x02]
	lsrs r4, r5, #0x02
	movs r0, #0x03
	ands r4, r0
	lsls r4, r4, #0x0E
	adds r4, r4, r2
	ldr r1, _080E3BF8 @ =0x06010000
	mov r10, r1
	ldr r2, _080E3BFC @ =0x03001034
	mov r9, r2
	ldr r5, _080E3C00 @ =0x08198154
	ldr r0, _080E3C04 @ =0x081980D8
	subs r5, r5, r0
	ldr r3, [r2, #0x00]
	adds r3, r3, r5
	ldr r0, _080E3C08 @ =0x000003FF
	mov r8, r0
	ldr r0, [sp, #0x010]
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0x05
	adds r0, r4, r0
	ldr r2, [sp, #0x03C]
	lsls r1, r2, #0x05
	add r1, r10
	movs r2, #0x20
	bl _call_via_r3
	mov r0, r9
	ldr r3, [r0, #0x00]
	adds r3, r3, r5
	mov r1, r8
	ands r6, r1
	lsls r6, r6, #0x05
	adds r4, r4, r6
	ldr r1, [sp, #0x03C]
	adds r1, #0x01
	lsls r1, r1, #0x05
	add r1, r10
	adds r0, r4, #0x0
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, [sp, #0x010]
	lsrs r2, r2, #0x0C
	mov r8, r2
	movs r5, #0x00
	ldr r1, _080E3C0C @ =0x03000F78
_080E3A02:
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080E3A10
	b _080E3B92
_080E3A10:
	adds r5, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080E3A20
	b _080E3B92
_080E3A20:
	adds r5, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080E3A30
	b _080E3B92
_080E3A30:
	adds r5, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080E3A40
	b _080E3B92
_080E3A40:
	adds r5, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080E3A50
	b _080E3B92
_080E3A50:
	adds r5, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080E3A60
	b _080E3B92
_080E3A60:
	adds r5, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080E3A70
	b _080E3B92
_080E3A70:
	adds r5, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080E3A80
	b _080E3B92
_080E3A80:
	adds r5, #0x01
	cmp r5, #0x0F
	ble _080E3A02
	movs r5, #0x0F
	ldr r3, _080E3C0C @ =0x03000F78
	movs r0, #0x0F
	ldsb r0, [r3, r0]
	movs r1, #0x01
	negs r1, r1
	mov r4, r8
	lsls r2, r4, #0x05
	cmp r0, r1
	beq _080E3AA8
_080E3A9A:
	subs r5, #0x01
	adds r0, r5, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r1
	bne _080E3A9A
_080E3AA8:
	ldr r6, _080E3C10 @ =0x03000D74
	ldr r0, [r6, #0x00]
	lsls r1, r5, #0x01
	adds r0, #0x0C
	adds r0, r0, r1
	ldr r1, _080E3C14 @ =0x00001FFF
	strh r1, [r0, #0x00]
	lsls r0, r5, #0x05
	ldr r3, _080E3C18 @ =0x04430443
	ldr r7, _080E3C1C @ =0x3DEF3DEF
	ldr r1, _080E3C20 @ =0x02000280
	adds r1, r0, r1
	str r1, [sp, #0x018]
	ldr r6, _080E3C24 @ =0x02000080
	adds r4, r2, r6
	ldr r0, _080E3C28 @ =0x7BDE7BDE
	mov r10, r0
	ldr r1, _080E3C2C @ =0x84208420
	mov r9, r1
	movs r2, #0x07
	mov r12, r2
_080E3AD2:
	ldr r2, [r4, #0x00]
	adds r1, r2, #0x0
	ands r1, r3
	lsls r1, r1, #0x01
	adds r0, r2, #0x0
	eors r0, r3
	mov r6, r10
	ands r0, r6
	adds r1, r1, r0
	mov r0, r9
	ands r1, r0
	lsrs r1, r1, #0x05
	adds r1, r1, r7
	eors r1, r7
	adds r2, r2, r3
	subs r2, r2, r1
	orrs r2, r1
	ldr r1, [sp, #0x018]
	str r2, [r1, #0x00]
	ldr r2, [r4, #0x04]
	adds r1, r2, #0x0
	ands r1, r3
	lsls r1, r1, #0x01
	adds r0, r2, #0x0
	eors r0, r3
	ands r0, r6
	adds r1, r1, r0
	mov r6, r9
	ands r1, r6
	lsrs r1, r1, #0x05
	adds r1, r1, r7
	eors r1, r7
	adds r2, r2, r3
	subs r2, r2, r1
	orrs r2, r1
	ldr r0, [sp, #0x018]
	str r2, [r0, #0x04]
	ldr r2, [r4, #0x08]
	adds r1, r2, #0x0
	ands r1, r3
	lsls r1, r1, #0x01
	str r1, [sp, #0x014]
	adds r0, r2, #0x0
	eors r0, r3
	mov r1, r10
	ands r0, r1
	ldr r6, [sp, #0x014]
	adds r1, r6, r0
	mov r0, r9
	ands r1, r0
	lsrs r1, r1, #0x05
	adds r1, r1, r7
	eors r1, r7
	adds r2, r2, r3
	subs r2, r2, r1
	orrs r2, r1
	ldr r1, [sp, #0x018]
	str r2, [r1, #0x08]
	ldr r2, [r4, #0x0C]
	adds r1, r2, #0x0
	ands r1, r3
	lsls r1, r1, #0x01
	adds r0, r2, #0x0
	eors r0, r3
	mov r6, r10
	ands r0, r6
	adds r1, r1, r0
	mov r0, r9
	ands r1, r0
	lsrs r1, r1, #0x05
	adds r1, r1, r7
	eors r1, r7
	adds r2, r2, r3
	subs r2, r2, r1
	orrs r2, r1
	ldr r1, [sp, #0x018]
	str r2, [r1, #0x0C]
	adds r1, #0x10
	str r1, [sp, #0x018]
	adds r4, #0x10
	movs r2, #0x04
	negs r2, r2
	add r12, r2
	mov r6, r12
	cmp r6, #0x00
	bge _080E3AD2
	movs r0, #0x01
	lsls r0, r5
	ldr r2, _080E3C30 @ =0x0300034C
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r3, _080E3C0C @ =0x03000F78
	adds r0, r5, r3
	mov r4, r8
	strb r4, [r0, #0x00]
_080E3B92:
	ldr r6, _080E3C10 @ =0x03000D74
	ldr r3, [r6, #0x00]
	ldr r2, [r3, #0x38]
	ldr r0, [sp, #0x008]
	movs r1, #0xFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x07
	adds r1, r4, #0x0
	movs r4, #0x00
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, [sp, #0x004]
	ldr r0, _080E3C34 @ =0x000001FF
	ands r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x04
	ldr r6, [sp, #0x010]
	ands r6, r0
	lsls r0, r6, #0x02
	orrs r1, r0
	strh r1, [r2, #0x02]
	ldr r1, _080E3C08 @ =0x000003FF
	adds r0, r1, #0x0
	ldr r6, [sp, #0x03C]
	ands r6, r0
	lsls r0, r5, #0x0C
	orrs r6, r0
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r1, #0x0
	orrs r6, r0
	strh r6, [r2, #0x04]
	ldr r0, _080E3C38 @ =0x8FFFFFFF
	str r0, [r2, #0x08]
	strh r4, [r2, #0x06]
	ldrb r0, [r3, #0x02]
	adds r0, #0x02
	strb r0, [r3, #0x02]
	ldr r0, _080E3C10 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x10]
	str r0, [r1, #0x38]
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E3BF8: .4byte 0x06010000
_080E3BFC: .4byte 0x03001034
_080E3C00: .4byte 0x08198154
_080E3C04: .4byte 0x081980D8
_080E3C08: .4byte 0x000003FF
_080E3C0C: .4byte 0x03000F78
_080E3C10: .4byte 0x03000D74
_080E3C14: .4byte 0x00001FFF
_080E3C18: .4byte 0x04430443
_080E3C1C: .4byte 0x3DEF3DEF
_080E3C20: .4byte 0x02000280
_080E3C24: .4byte 0x02000080
_080E3C28: .4byte 0x7BDE7BDE
_080E3C2C: .4byte 0x84208420
_080E3C30: .4byte 0x0300034C
_080E3C34: .4byte 0x000001FF
_080E3C38: .4byte 0x8FFFFFFF
