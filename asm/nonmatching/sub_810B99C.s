	.syntax unified
	.text

	thumb_func_start sub_810B99C
sub_810B99C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	mov r8, r0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r3, #0x0C
	str r3, [sp, #0x004]
	cmp r1, r0
	bne _0810B9C4
	movs r4, #0x0B
	str r4, [sp, #0x004]
_0810B9C4:
	movs r5, #0x12
	ldsh r7, [r6, r5]
	movs r1, #0x14
	ldsh r0, [r6, r1]
	str r0, [sp, #0x008]
	mov r0, r8
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _0810B9EC
	ldr r0, _0810BA44 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0810B9EC
	b _0810BD68
_0810B9EC:
	mov r0, r8
	adds r0, #0xFA
	mov r1, r8
	adds r1, #0xF6
	movs r2, #0x00
	ldsh r3, [r0, r2]
	movs r4, #0x00
	ldsh r2, [r1, r4]
	str r0, [sp, #0x010]
	str r1, [sp, #0x00C]
	cmp r3, r2
	beq _0810BA48
	movs r5, #0x00
	ldsh r0, [r0, r5]
	bl sub_8083F88
	adds r4, r0, #0x0
	ldr r1, [sp, #0x00C]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	bl sub_8083F88
	adds r1, r0, #0x0
	adds r2, r7, #0x0
	adds r2, #0x14
	ldr r3, [sp, #0x008]
	subs r3, #0x06
	movs r5, #0x10
	ldsh r0, [r6, r5]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_810A240
	mov r0, r8
	adds r0, #0xFC
	str r0, [sp, #0x018]
	movs r1, #0x28
	adds r1, r1, r7
	mov r9, r1
	ldr r2, [sp, #0x008]
	adds r2, #0x06
	mov r10, r2
	b _0810BABE
	.byte 0x00, 0x00
_0810BA44: .4byte 0x03000FD8
_0810BA48:
	ldr r3, [sp, #0x00C]
	movs r4, #0x00
	ldsh r0, [r3, r4]
	bl sub_8083F88
	ldr r5, [sp, #0x008]
	subs r5, #0x06
	adds r3, r0, #0x0
	adds r2, r7, #0x0
	adds r2, #0x14
	movs r0, #0xFF
	ands r5, r0
	str r5, [sp, #0x014]
	ldr r0, _0810BAFC @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	mov r4, r8
	adds r4, #0xFC
	str r4, [sp, #0x018]
	movs r5, #0x28
	adds r5, r5, r7
	mov r9, r5
	ldr r0, [sp, #0x008]
	adds r0, #0x06
	mov r10, r0
	ldr r4, _0810BB00 @ =0xFFFF8000
	mov r12, r4
	ldr r5, [sp, #0x014]
	mov r0, r12
	orrs r5, r0
	str r5, [sp, #0x014]
	ldr r4, _0810BB04 @ =0xFFFFB000
	mov r12, r4
_0810BA8E:
	adds r0, r3, #0x0
	movs r5, #0x0F
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, #0x49
	subs r2, #0x08
	ldr r4, _0810BB08 @ =0x000001FF
	ands r2, r4
	mov r5, sp
	ldrh r5, [r5, #0x14]
	strh r5, [r1, #0x00]
	strh r2, [r1, #0x02]
	mov r4, r12
	orrs r0, r4
	strh r0, [r1, #0x04]
	adds r1, #0x08
	lsrs r3, r3, #0x04
	cmp r3, #0x00
	bne _0810BA8E
	ldr r0, _0810BAFC @ =0x0300034C
	movs r5, #0x88
	lsls r5, r5, #0x04
	adds r0, r0, r5
	str r1, [r0, #0x00]
_0810BABE:
	movs r2, #0x80
	lsls r2, r2, #0x01
	add r2, r8
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r3, [sp, #0x018]
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r1, r0
	beq _0810BB20
	adds r0, r1, #0x0
	bl sub_8083F88
	adds r4, r0, #0x0
	ldr r1, [sp, #0x018]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	bl sub_8083F88
	adds r1, r0, #0x0
	ldr r3, [sp, #0x018]
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x63
	bgt _0810BB0C
	mov r2, r9
	cmp r0, #0x09
	bgt _0810BB10
	adds r2, r7, #0x0
	adds r2, #0x20
	b _0810BB10
_0810BAFC: .4byte 0x0300034C
_0810BB00: .4byte 0xFFFF8000
_0810BB04: .4byte 0xFFFFB000
_0810BB08: .4byte 0x000001FF
_0810BB0C:
	adds r2, r7, #0x0
	adds r2, #0x30
_0810BB10:
	movs r3, #0x10
	ldsh r0, [r6, r3]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r3, r10
	bl sub_810A240
	b _0810BB9C
_0810BB20:
	ldr r4, [sp, #0x018]
	movs r5, #0x00
	ldsh r0, [r4, r5]
	bl sub_8083F88
	movs r2, #0x00
	ldsh r1, [r4, r2]
	cmp r1, #0x63
	bgt _0810BB3E
	mov r2, r9
	cmp r1, #0x09
	bgt _0810BB42
	adds r2, r7, #0x0
	adds r2, #0x20
	b _0810BB42
_0810BB3E:
	adds r2, r7, #0x0
	adds r2, #0x30
_0810BB42:
	adds r3, r0, #0x0
	movs r4, #0xFF
	mov r5, r10
	ands r4, r5
	str r4, [sp, #0x014]
	ldr r0, _0810BBC8 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	ldr r1, [r1, r0]
	movs r4, #0x0F
	mov r12, r4
	ldr r5, _0810BBCC @ =0x000001FF
	mov r10, r5
	ldr r0, _0810BBD0 @ =0xFFFF8000
	mov r9, r0
	ldr r4, [sp, #0x014]
	mov r5, r9
	orrs r4, r5
	str r4, [sp, #0x014]
	ldr r0, _0810BBD4 @ =0xFFFFB000
	mov r9, r0
_0810BB6C:
	adds r0, r3, #0x0
	mov r4, r12
	ands r0, r4
	lsls r0, r0, #0x01
	adds r0, #0x49
	subs r2, #0x08
	mov r5, r10
	ands r2, r5
	mov r4, sp
	ldrh r4, [r4, #0x14]
	strh r4, [r1, #0x00]
	strh r2, [r1, #0x02]
	mov r5, r9
	orrs r0, r5
	strh r0, [r1, #0x04]
	adds r1, #0x08
	lsrs r3, r3, #0x04
	cmp r3, #0x00
	bne _0810BB6C
	ldr r2, _0810BBC8 @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r0, r2, r3
	str r1, [r0, #0x00]
_0810BB9C:
	ldrh r1, [r6, #0x10]
	movs r4, #0x10
	ldsh r0, [r6, r4]
	cmp r0, #0x00
	ble _0810BBD8
	subs r0, r1, #0x6
	strh r0, [r6, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0810BC00
	ldr r5, [sp, #0x00C]
	ldrh r0, [r5, #0x00]
	ldr r1, [sp, #0x010]
	strh r0, [r1, #0x00]
	ldr r2, [sp, #0x018]
	ldrh r1, [r2, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	add r0, r8
	strh r1, [r0, #0x00]
	movs r0, #0x00
	b _0810BBFE
_0810BBC8: .4byte 0x0300034C
_0810BBCC: .4byte 0x000001FF
_0810BBD0: .4byte 0xFFFF8000
_0810BBD4: .4byte 0xFFFFB000
_0810BBD8:
	ldr r3, [sp, #0x010]
	movs r4, #0x00
	ldsh r1, [r3, r4]
	ldr r5, [sp, #0x00C]
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r1, r0
	bne _0810BBFC
	movs r0, #0x80
	lsls r0, r0, #0x01
	add r0, r8
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r4, [sp, #0x018]
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r1, r0
	beq _0810BC00
_0810BBFC:
	movs r0, #0x3A
_0810BBFE:
	strh r0, [r6, #0x10]
_0810BC00:
	ldr r2, _0810BCA4 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r1, [r4, #0x0B]
	movs r0, #0x80
	ands r0, r1
	mov r10, r2
	cmp r0, #0x00
	beq _0810BC12
	b _0810BD68
_0810BC12:
	ldr r2, _0810BCA8 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r2, r1
	ldr r5, [r0, #0x00]
	movs r0, #0x8F
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r1, [r0, #0x00]
	movs r0, #0xFC
	ands r0, r1
	lsls r3, r0, #0x10
	cmp r3, #0x00
	bne _0810BC30
	b _0810BD28
_0810BC30:
	movs r2, #0xAC
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x3F
	ands r0, r1
	ldr r4, [sp, #0x004]
	lsls r4, r4, #0x0C
	mov r8, r4
	cmp r0, #0x20
	bne _0810BC6C
	movs r4, #0x00
	lsrs r3, r3, #0x12
	movs r2, #0x01
_0810BC4C:
	ldrh r0, [r6, #0x18]
	adds r0, #0x01
	strh r0, [r6, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x05
	ble _0810BC5C
	strh r4, [r6, #0x18]
_0810BC5C:
	movs r0, #0x18
	ldsh r1, [r6, r0]
	adds r0, r3, #0x0
	asrs r0, r1
	eors r0, r2
	ands r0, r2
	cmp r0, #0x00
	bne _0810BC4C
_0810BC6C:
	ldrh r1, [r6, #0x18]
	mov r9, r1
	movs r2, #0x18
	ldsh r3, [r6, r2]
	cmp r3, #0x00
	blt _0810BD32
	adds r2, r5, #0x0
	movs r4, #0x00
	adds r5, #0x02
	mov r1, r10
	ldr r0, [r1, #0x00]
	movs r1, #0xAC
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x3F
	ands r0, r1
	cmp r0, #0x1F
	bhi _0810BC94
	movs r4, #0x01
_0810BC94:
	movs r0, #0x01
	ands r3, r0
	ldr r6, [sp, #0x008]
	subs r6, #0x08
	cmp r3, #0x00
	beq _0810BCAC
	lsls r0, r4, #0x01
	b _0810BCB0
_0810BCA4: .4byte 0x03000FD8
_0810BCA8: .4byte 0x0300034C
_0810BCAC:
	lsls r0, r4, #0x01
	negs r0, r0
_0810BCB0:
	adds r1, r6, r0
	movs r0, #0xFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x08
	orrs r1, r0
	strh r1, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x27
	ldr r2, _0810BD14 @ =0x000001FF
	adds r4, r2, #0x0
	ands r0, r4
	strh r0, [r5, #0x00]
	adds r5, #0x02
	mov r3, r9
	lsls r2, r3, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x01
	ands r0, r3
	lsls r0, r0, #0x01
	adds r0, #0x95
	ldr r1, _0810BD18 @ =0xFFFFC000
	mov r9, r1
	mov r1, r9
	orrs r0, r1
	strh r0, [r5, #0x00]
	adds r5, #0x04
	movs r0, #0xFF
	ands r6, r0
	strh r6, [r5, #0x00]
	adds r5, #0x02
	adds r0, r7, #0x0
	adds r0, #0x19
	ands r0, r4
	movs r4, #0x80
	lsls r4, r4, #0x07
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	adds r5, #0x02
	lsrs r2, r2, #0x1F
	adds r2, r3, r2
	asrs r2, r2, #0x01
	lsls r2, r2, #0x02
	adds r2, #0x89
	cmp r3, #0x03
	bgt _0810BD1C
	movs r0, #0xB0
	lsls r0, r0, #0x08
	b _0810BD20
_0810BD14: .4byte 0x000001FF
_0810BD18: .4byte 0xFFFFC000
_0810BD1C:
	movs r0, #0xC0
	lsls r0, r0, #0x08
_0810BD20:
	orrs r0, r2
	strh r0, [r5, #0x00]
	adds r5, #0x04
	b _0810BD32
_0810BD28:
	ldr r0, _0810BD78 @ =0x0000FFFF
	strh r0, [r6, #0x18]
	ldr r0, [sp, #0x004]
	lsls r0, r0, #0x0C
	mov r8, r0
_0810BD32:
	movs r0, #0xFF
	ldr r1, [sp, #0x008]
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r5, #0x00]
	adds r5, #0x02
	ldr r4, _0810BD7C @ =0x000001FF
	adds r0, r4, #0x0
	ands r7, r0
	ldr r1, _0810BD80 @ =0xFFFFC000
	adds r0, r1, #0x0
	orrs r7, r0
	strh r7, [r5, #0x00]
	adds r5, #0x02
	movs r0, #0x6F
	mov r2, r8
	orrs r2, r0
	strh r2, [r5, #0x00]
	ldr r3, _0810BD84 @ =0x0300034C
	movs r4, #0x88
	lsls r4, r4, #0x04
	adds r1, r3, r4
	adds r0, r5, #0x4
	str r0, [r1, #0x00]
_0810BD68:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810BD78: .4byte 0x0000FFFF
_0810BD7C: .4byte 0x000001FF
_0810BD80: .4byte 0xFFFFC000
_0810BD84: .4byte 0x0300034C
