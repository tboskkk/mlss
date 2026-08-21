	.include "asm/macros.inc"

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
	thumb_func_start sub_810BD88
sub_810BD88:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	ldr r6, [r7, #0x08]
	adds r0, r6, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	movs r3, #0x0C
	str r3, [sp, #0x004]
	cmp r1, r0
	bne _0810BDB0
	movs r0, #0x0B
	str r0, [sp, #0x004]
_0810BDB0:
	movs r3, #0x12
	ldsh r1, [r7, r3]
	mov r8, r1
	movs r1, #0x14
	ldsh r0, [r7, r1]
	mov r9, r0
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _0810BDDA
	ldr r0, _0810BE00 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0810BDDA
	b _0810BFD2
_0810BDDA:
	movs r3, #0x16
	ldsh r0, [r7, r3]
	cmp r0, #0x01
	bne _0810BE04
	adds r0, r6, #0x0
	adds r0, #0xFC
	movs r1, #0x00
	ldsh r4, [r0, r1]
	adds r0, #0x02
	movs r3, #0x00
	ldsh r2, [r0, r3]
	str r2, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r6, r1
	movs r3, #0x00
	ldsh r2, [r0, r3]
	b _0810BE1E
	.byte 0x00, 0x00
_0810BE00: .4byte 0x03000FD8
_0810BE04:
	cmp r0, #0x02
	bne _0810BE1E
	adds r0, r6, #0x0
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r4, [r0, r1]
	adds r0, #0x02
	movs r3, #0x00
	ldsh r2, [r0, r3]
	str r2, [sp, #0x008]
	adds r0, #0x02
	movs r1, #0x00
	ldsh r2, [r0, r1]
_0810BE1E:
	cmp r2, r4
	beq _0810BE52
	adds r0, r2, #0x0
	bl sub_8083F88
	adds r5, r0, #0x0
	adds r0, r4, #0x0
	bl sub_8083F88
	adds r1, r0, #0x0
	mov r2, r8
	adds r2, #0x15
	mov r4, r9
	adds r4, #0x04
	movs r3, #0x10
	ldsh r0, [r7, r3]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r3, r4, #0x0
	bl sub_810A240
	str r4, [sp, #0x00C]
	mov r0, r8
	adds r0, #0x29
	str r0, [sp, #0x010]
	b _0810BEB2
_0810BE52:
	adds r0, r4, #0x0
	bl sub_8083F88
	mov r1, r9
	adds r1, #0x04
	adds r5, r0, #0x0
	mov r3, r8
	adds r3, #0x15
	movs r4, #0xFF
	ands r4, r1
	ldr r0, _0810BEE4 @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldr r2, [r0, #0x00]
	str r1, [sp, #0x00C]
	mov r0, r8
	adds r0, #0x29
	str r0, [sp, #0x010]
	movs r1, #0x0F
	mov r10, r1
	ldr r0, _0810BEE8 @ =0x000001FF
	mov r12, r0
	ldr r1, _0810BEEC @ =0xFFFF8000
	adds r0, r1, #0x0
	orrs r4, r0
_0810BE86:
	adds r0, r5, #0x0
	mov r1, r10
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, #0x49
	subs r3, #0x08
	mov r1, r12
	ands r3, r1
	strh r4, [r2, #0x00]
	strh r3, [r2, #0x02]
	ldr r1, _0810BEF0 @ =0xFFFFB000
	orrs r0, r1
	strh r0, [r2, #0x04]
	adds r2, #0x08
	lsrs r5, r5, #0x04
	cmp r5, #0x00
	bne _0810BE86
	ldr r0, _0810BEE4 @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r0, r0, r3
	str r2, [r0, #0x00]
_0810BEB2:
	ldrh r1, [r7, #0x10]
	movs r2, #0x10
	ldsh r0, [r7, r2]
	cmp r0, #0x00
	ble _0810BEF4
	subs r0, r1, #0x6
	strh r0, [r7, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0810BF22
	adds r0, r6, #0x0
	adds r0, #0xF6
	ldrh r0, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xFA
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xFC
	ldrh r1, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r6, r3
	strh r1, [r0, #0x00]
	movs r0, #0x00
	b _0810BF20
_0810BEE4: .4byte 0x0300034C
_0810BEE8: .4byte 0x000001FF
_0810BEEC: .4byte 0xFFFF8000
_0810BEF0: .4byte 0xFFFFB000
_0810BEF4:
	adds r0, r6, #0x0
	adds r0, #0xFA
	adds r2, r6, #0x0
	adds r2, #0xF6
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r1, r0
	bne _0810BF1E
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r6, r1
	adds r1, r6, #0x0
	adds r1, #0xFC
	movs r3, #0x00
	ldsh r2, [r0, r3]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r2, r0
	beq _0810BF22
_0810BF1E:
	movs r0, #0x3A
_0810BF20:
	strh r0, [r7, #0x10]
_0810BF22:
	ldr r0, [sp, #0x008]
	bl sub_8083F88
	ldr r1, [sp, #0x008]
	cmp r1, #0x63
	bgt _0810BF3C
	ldr r1, [sp, #0x010]
	ldr r2, [sp, #0x008]
	cmp r2, #0x09
	bgt _0810BF40
	mov r1, r8
	adds r1, #0x21
	b _0810BF40
_0810BF3C:
	mov r1, r8
	adds r1, #0x31
_0810BF40:
	adds r5, r0, #0x0
	adds r3, r1, #0x0
	movs r6, #0xFF
	ldr r0, [sp, #0x00C]
	ands r6, r0
	ldr r0, _0810BFE4 @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	ldr r1, _0810BFE8 @ =0x03000FD8
	mov r12, r1
	mov r10, r0
	movs r7, #0x0F
	ldr r4, _0810BFEC @ =0x000001FF
	ldr r1, _0810BFF0 @ =0xFFFF8000
	adds r0, r1, #0x0
	orrs r6, r0
	ldr r0, _0810BFF4 @ =0xFFFFB000
	adds r1, r0, #0x0
_0810BF68:
	adds r0, r5, #0x0
	ands r0, r7
	lsls r0, r0, #0x01
	adds r0, #0x49
	subs r3, #0x08
	ands r3, r4
	strh r6, [r2, #0x00]
	strh r3, [r2, #0x02]
	orrs r0, r1
	strh r0, [r2, #0x04]
	adds r2, #0x08
	lsrs r5, r5, #0x04
	cmp r5, #0x00
	bne _0810BF68
	movs r3, #0x88
	lsls r3, r3, #0x04
	add r3, r10
	str r2, [r3, #0x00]
	mov r1, r12
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0810BFD2
	movs r0, #0xFF
	mov r1, r9
	ands r1, r0
	mov r9, r1
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r0, r1, #0x0
	mov r1, r9
	orrs r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _0810BFEC @ =0x000001FF
	adds r0, r1, #0x0
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldr r1, _0810BFF8 @ =0xFFFFC000
	adds r0, r1, #0x0
	mov r1, r8
	orrs r1, r0
	strh r1, [r2, #0x02]
	adds r2, #0x04
	ldr r1, [sp, #0x004]
	lsls r0, r1, #0x0C
	movs r1, #0x6F
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x04
	str r2, [r3, #0x00]
_0810BFD2:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810BFE4: .4byte 0x0300034C
_0810BFE8: .4byte 0x03000FD8
_0810BFEC: .4byte 0x000001FF
_0810BFF0: .4byte 0xFFFF8000
_0810BFF4: .4byte 0xFFFFB000
_0810BFF8: .4byte 0xFFFFC000
	thumb_func_start sub_810BFFC
sub_810BFFC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0810C054 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	bls _0810C04E
	adds r0, r4, #0x0
	bl sub_810B99C
	ldrh r3, [r4, #0x14]
	movs r1, #0x14
	ldsh r0, [r4, r1]
	cmp r0, #0x88
	ble _0810C046
	subs r0, r3, #0x4
	strh r0, [r4, #0x14]
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	beq _0810C03E
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _0810C03E
	ldr r1, [r2, #0x10]
	adds r0, r3, #0x0
	adds r0, #0x14
	strh r0, [r1, #0x02]
_0810C03E:
	movs r1, #0x14
	ldsh r0, [r4, r1]
	cmp r0, #0x88
	bgt _0810C04E
_0810C046:
	movs r0, #0x88
	strh r0, [r4, #0x14]
	ldr r0, _0810C058 @ =0x0810B99D
	str r0, [r4, #0x04]
_0810C04E:
	pop {r4}
	pop {r0}
	bx r0
_0810C054: .4byte 0x03000FD8
_0810C058: .4byte sub_810B99C
	thumb_func_start sub_810C05C
sub_810C05C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_810B99C
	ldrh r3, [r4, #0x14]
	movs r1, #0x14
	ldsh r0, [r4, r1]
	cmp r0, #0x9F
	bgt _0810C096
	adds r0, r3, #0x4
	strh r0, [r4, #0x14]
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	beq _0810C08E
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _0810C08E
	ldr r1, [r2, #0x10]
	adds r0, r3, #0x0
	adds r0, #0x1C
	strh r0, [r1, #0x02]
_0810C08E:
	movs r1, #0x14
	ldsh r0, [r4, r1]
	cmp r0, #0x9F
	ble _0810C0C2
_0810C096:
	ldr r0, _0810C0B0 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	movs r0, #0x9F
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, [r2, #0x00]
	ldr r1, [r4, #0x08]
	ldr r0, [r0, #0x08]
	cmp r1, r0
	bne _0810C0B4
	movs r0, #0x00
	str r0, [r2, #0x00]
	b _0810C0BE
_0810C0B0: .4byte 0x03000FD8
_0810C0B4:
	movs r0, #0xA0
	lsls r0, r0, #0x02
	adds r1, r3, r0
	movs r0, #0x00
	str r0, [r1, #0x00]
_0810C0BE:
	movs r0, #0x00
	str r0, [r4, #0x04]
_0810C0C2:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_810C0C8
sub_810C0C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r6, _0810C0F8 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	lsls r5, r0, #0x02
	ldrb r1, [r2, #0x0B]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0810C0E6
	b _0810C2A0
_0810C0E6:
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r2, r1
	adds r0, r0, r5
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0810C0FC
	adds r7, r4, #0x0
	b _0810C118
_0810C0F8: .4byte 0x03000FD8
_0810C0FC:
	adds r0, r2, #0x0
	adds r0, #0x48
	ldr r1, _0810C134 @ =0x0810C399
	bl sub_807FFD8
	str r4, [r0, #0x08]
	strh r4, [r0, #0x16]
	ldr r1, [r6, #0x00]
	movs r2, #0xA1
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r5
	str r0, [r1, #0x00]
	adds r7, r0, #0x0
_0810C118:
	cmp r7, #0x00
	bne _0810C11E
	b _0810C2A0
_0810C11E:
	ldr r0, _0810C138 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, _0810C13C @ =0x000002F9
	adds r3, r2, r0
	ldrb r0, [r3, #0x00]
	cmp r0, #0x00
	bne _0810C140
	mov r0, r9
	bl sub_810C9A4
	b _0810C2A0
_0810C134: .4byte sub_810C398
_0810C138: .4byte 0x03000FD8
_0810C13C: .4byte 0x000002F9
_0810C140:
	mov r0, r9
	lsls r1, r0, #0x02
	adds r0, r2, #0x0
	adds r0, #0x80
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	ldrb r3, [r3, #0x00]
	mov r8, r3
	cmp r3, #0x02
	bne _0810C16C
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x06
	ands r0, r1
	movs r5, #0x19
	cmp r0, #0x00
	beq _0810C182
	movs r5, #0x1D
	b _0810C182
_0810C16C:
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	ands r0, r1
	movs r5, #0x17
	cmp r0, #0x00
	beq _0810C182
	movs r5, #0x1B
_0810C182:
	cmp r5, #0x03
	ble _0810C18E
	movs r0, #0x20
	mov r3, r8
	orrs r3, r0
	mov r8, r3
_0810C18E:
	subs r1, r5, #0x1
	adds r0, r6, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	subs r5, r1, r0
	ldrh r0, [r7, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r1, #0x1F
	ands r0, r1
	cmp r0, r8
	beq _0810C2A0
	ldr r0, [r7, #0x08]
	cmp r0, #0x00
	beq _0810C1B2
	adds r4, r0, #0x0
	b _0810C1C2
_0810C1B2:
	ldr r0, _0810C274 @ =0x00007001
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	adds r4, r0, #0x0
	str r4, [r7, #0x08]
_0810C1C2:
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810C1E0
	adds r0, #0xFF
_0810C1E0:
	asrs r0, r0, #0x08
	subs r0, #0x0E
	strh r0, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xDC
	adds r1, r6, #0x0
	adds r1, #0xE0
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0810C1FA
	adds r0, #0xFF
_0810C1FA:
	asrs r0, r0, #0x08
	subs r0, #0x34
	strh r0, [r4, #0x02]
	ldrb r1, [r4, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	movs r2, #0x10
	orrs r0, r2
	movs r5, #0x0D
	negs r5, r5
	ands r0, r5
	movs r3, #0x04
	orrs r0, r3
	adds r1, #0x2D
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r4, #0x1F]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0810C244
	ldrb r1, [r4, #0x11]
	adds r0, r5, #0x0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x11]
_0810C244:
	ldrh r1, [r7, #0x16]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	movs r0, #0x0F
	ands r1, r0
	ldr r0, _0810C278 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, _0810C27C @ =0x000002F9
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	bne _0810C284
	movs r0, #0x04
	ldsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	bne _0810C28C
	adds r0, r4, #0x0
	bl sub_807BC90
	ldr r0, _0810C280 @ =0x0810C2B5
	b _0810C294
	.byte 0x00, 0x00
_0810C274: .4byte 0x00007001
_0810C278: .4byte 0x03000FD8
_0810C27C: .4byte 0x000002F9
_0810C280: .4byte sub_810C2B4
_0810C284:
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r4, #0x06]
	strh r0, [r4, #0x04]
_0810C28C:
	ldrb r0, [r4, #0x12]
	orrs r0, r2
	strb r0, [r4, #0x12]
	ldr r0, _0810C2B0 @ =0x0810C399
_0810C294:
	str r0, [r7, #0x04]
	mov r1, r8
	lsls r0, r1, #0x01
	mov r2, r9
	orrs r0, r2
	strh r0, [r7, #0x16]
_0810C2A0:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810C2B0: .4byte sub_810C398
	thumb_func_start sub_810C2B4
sub_810C2B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldrh r0, [r5, #0x16]
	movs r1, #0x01
	mov r12, r1
	mov r3, r12
	ands r3, r0
	ldr r2, _0810C2F8 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r1, [r4, #0x0B]
	movs r0, #0x80
	ands r0, r1
	adds r7, r2, #0x0
	cmp r0, #0x00
	beq _0810C2FC
	lsls r5, r3, #0x02
	movs r2, #0xA1
	lsls r2, r2, #0x02
	adds r0, r4, r2
	adds r0, r0, r5
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0810C38E
	ldr r0, [r4, #0x08]
	bl sub_807FB34
	ldr r0, [r7, #0x00]
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	b _0810C386
	.byte 0x00, 0x00
_0810C2F8: .4byte 0x03000FD8
_0810C2FC:
	lsls r1, r3, #0x02
	movs r2, #0xA1
	lsls r2, r2, #0x02
	adds r0, r4, r2
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r3, r3, #0x10
	mov r8, r3
	cmp r0, #0x00
	beq _0810C38E
	adds r0, r4, #0x0
	adds r0, #0x80
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	ldr r3, [r5, #0x08]
	ldr r1, _0810C340 @ =0x000002BF
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x00
	beq _0810C33A
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0810C344
_0810C33A:
	movs r2, #0x01
	b _0810C346
	.byte 0x00, 0x00
_0810C340: .4byte 0x000002BF
_0810C344:
	movs r2, #0x00
_0810C346:
	lsls r2, r2, #0x02
	ldrb r1, [r3, #0x11]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _0810C38E
	mov r0, r8
	asrs r1, r0, #0x10
	ldr r0, [r7, #0x00]
	lsls r5, r1, #0x02
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	adds r0, r0, r5
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0810C38E
	ldr r0, [r4, #0x08]
	bl sub_807FB34
	ldr r0, [r7, #0x00]
	movs r2, #0xA1
	lsls r2, r2, #0x02
	adds r0, r0, r2
_0810C386:
	adds r0, r0, r5
	movs r1, #0x00
	str r1, [r0, #0x00]
	str r1, [r4, #0x04]
_0810C38E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_810C398
sub_810C398:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	ldr r6, _0810C3D8 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0810C3DC
	ldrh r0, [r3, #0x16]
	movs r1, #0x01
	ands r1, r0
	lsls r5, r1, #0x02
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r2, r1
	adds r0, r0, r5
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0810C40A
	ldr r0, [r4, #0x08]
	bl sub_807FB34
	ldr r0, [r6, #0x00]
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	adds r0, r0, r5
	movs r1, #0x00
	str r1, [r0, #0x00]
	str r1, [r4, #0x04]
	b _0810C40A
_0810C3D8: .4byte 0x03000FD8
_0810C3DC:
	ldr r2, [r3, #0x08]
	ldrh r0, [r2, #0x06]
	subs r0, #0x40
	strh r0, [r2, #0x06]
	strh r0, [r2, #0x04]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bgt _0810C404
	strh r1, [r2, #0x06]
	strh r1, [r2, #0x04]
	ldrb r0, [r2, #0x12]
	movs r1, #0x11
	negs r1, r1
	ands r1, r0
	strb r1, [r2, #0x12]
	ldr r0, _0810C410 @ =0x0810C2B5
	str r0, [r3, #0x04]
_0810C404:
	adds r0, r2, #0x0
	bl sub_807BC90
_0810C40A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0810C410: .4byte sub_810C2B4
	thumb_func_start sub_810C414
sub_810C414:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	str r0, [sp, #0x000]
	adds r6, r1, #0x0
	ldr r0, [r0, #0x34]
	mov r8, r0
	ldr r1, _0810C494 @ =0x03000FD8
	mov r9, r1
	ldr r7, _0810C498 @ =0x0300034C
	ldr r0, [r1, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x58
	movs r3, #0x06
	movs r4, #0x07
_0810C438:
	ldr r5, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	ldr r5, [r2, #0x04]
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	ldr r5, [r2, #0x08]
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	ldr r5, [r2, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	adds r2, #0x10
	subs r4, #0x04
	cmp r4, #0x00
	bge _0810C438
	cmp r6, #0x03
	bne _0810C4B0
	mov r2, r8
	cmp r2, #0x00
	bne _0810C49C
	adds r0, r7, #0x0
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0810C48A
	b _0810C936
_0810C48A:
	ldr r0, [sp, #0x000]
	bl sub_808761C
	b _0810C932
	.byte 0x00, 0x00
_0810C494: .4byte 0x03000FD8
_0810C498: .4byte 0x0300034C
_0810C49C:
	adds r0, r7, #0x0
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0810C4AC
	b _0810C936
_0810C4AC:
	movs r0, #0x00
	b _0810C934
_0810C4B0:
	cmp r6, #0x01
	bne _0810C53E
	ldr r2, [sp, #0x000]
	adds r2, #0x08
	cmp r8, r2
	bne _0810C4D0
	adds r0, r7, #0x0
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0810C4D0
	movs r1, #0x00
	mov r8, r1
	b _0810C936
_0810C4D0:
	mov r0, r8
	cmp r0, #0x00
	bne _0810C4EA
	adds r0, r7, #0x0
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0810C4E6
	b _0810C936
_0810C4E6:
	mov r8, r2
	b _0810C936
_0810C4EA:
	adds r0, r7, #0x0
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x00
	bne _0810C4FA
	b _0810C936
_0810C4FA:
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x84
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _0810C524
	subs r0, #0x04
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	cmp r8, r0
	bne _0810C524
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _0810C522
	b _0810C936
_0810C522:
	b _0810C922
_0810C524:
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _0810C53C
	b _0810C936
_0810C53C:
	b _0810C922
_0810C53E:
	cmp r6, #0x81
	bne _0810C564
	adds r0, r7, #0x0
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0810C556
	movs r2, #0x00
	mov r8, r2
	b _0810C936
_0810C556:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0810C560
	b _0810C936
_0810C560:
	ldr r0, [sp, #0x000]
	b _0810C932
_0810C564:
	mov r1, r8
	cmp r1, #0x00
	bne _0810C588
	adds r0, r7, #0x0
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0810C57A
	b _0810C936
_0810C57A:
	mov r2, r9
	ldr r0, [r2, #0x00]
	movs r1, #0xDE
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	b _0810C934
_0810C588:
	mov r2, r8
	ldr r0, [r2, #0x38]
	cmp r0, #0x00
	bge _0810C592
	adds r0, #0xFF
_0810C592:
	asrs r0, r0, #0x08
	mov r2, r8
	ldr r1, [r2, #0x28]
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	str r0, [sp, #0x004]
	mov r0, r8
	ldr r1, [r0, #0x3C]
	cmp r1, #0x00
	bge _0810C5AE
	adds r1, #0xFF
_0810C5AE:
	asrs r1, r1, #0x08
	movs r0, #0x05
	ldsb r0, [r2, r0]
	adds r1, r1, r0
	str r1, [sp, #0x008]
	movs r1, #0x00
	str r1, [sp, #0x014]
	ldr r2, _0810C660 @ =0x7FFFFFFF
	mov r10, r2
	movs r0, #0x00
	str r0, [sp, #0x010]
	str r1, [sp, #0x00C]
	adds r0, r7, #0x0
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0810C6A0
	movs r7, #0x00
	ldr r1, _0810C664 @ =0x0819832C
	ldr r0, _0810C668 @ =0x08198220
	subs r1, r1, r0
	mov r9, r1
_0810C5DE:
	ldr r0, _0810C66C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r4, #0x06
	ands r4, r0
	cmp r4, #0x06
	beq _0810C692
	ldr r0, [r5, #0x44]
	cmp r0, #0x00
	bge _0810C600
	adds r0, #0xFF
_0810C600:
	asrs r0, r0, #0x08
	ldr r2, [sp, #0x008]
	subs r0, r2, r0
	adds r1, r5, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x05
	ldsb r1, [r2, r1]
	subs r3, r0, r1
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0810C61A
	adds r0, #0xFF
_0810C61A:
	asrs r0, r0, #0x08
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r1, [sp, #0x004]
	subs r2, r0, r1
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0810C692
	cmp r4, #0x04
	bne _0810C692
	adds r6, r3, #0x0
	muls r6, r3
	adds r0, r2, #0x0
	muls r0, r2
	adds r0, r6, r0
	cmp r3, #0x00
	ble _0810C674
	ldr r1, _0810C670 @ =0x03001038
	ldr r2, [r1, #0x00]
	add r2, r9
	adds r1, r3, #0x0
	bl _call_via_r2
	cmp r10, r0
	ble _0810C692
	mov r10, r0
	str r5, [sp, #0x00C]
	b _0810C692
	.byte 0x00, 0x00
_0810C660: .4byte 0x7FFFFFFF
_0810C664: .4byte 0x0819832C
_0810C668: .4byte 0x08198220
_0810C66C: .4byte 0x03000FD8
_0810C670: .4byte 0x03001038
_0810C674:
	ldr r2, _0810C69C @ =0x03001038
	ldr r1, [r2, #0x00]
	mov r2, r9
	adds r4, r1, r2
	bl _call_via_r1
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl _call_via_r4
	ldr r1, [sp, #0x014]
	cmp r0, r1
	ble _0810C692
	str r0, [sp, #0x014]
	str r5, [sp, #0x010]
_0810C692:
	adds r7, #0x01
	cmp r7, #0x07
	ble _0810C5DE
	b _0810C91C
	.byte 0x00, 0x00
_0810C69C: .4byte 0x03001038
_0810C6A0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0810C770
	movs r7, #0x00
	ldr r1, _0810C734 @ =0x0819832C
	ldr r0, _0810C738 @ =0x08198220
	subs r1, r1, r0
	mov r9, r1
_0810C6B2:
	ldr r0, _0810C73C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r4, #0x06
	ands r4, r0
	cmp r4, #0x06
	beq _0810C762
	ldr r0, [r5, #0x44]
	cmp r0, #0x00
	bge _0810C6D4
	adds r0, #0xFF
_0810C6D4:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x05
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r1, [sp, #0x008]
	subs r3, r0, r1
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0810C6EE
	adds r0, #0xFF
_0810C6EE:
	asrs r0, r0, #0x08
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r1, [sp, #0x004]
	subs r2, r0, r1
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0810C762
	cmp r4, #0x04
	bne _0810C762
	adds r6, r3, #0x0
	muls r6, r3
	adds r0, r2, #0x0
	muls r0, r2
	adds r0, r6, r0
	cmp r3, #0x00
	ble _0810C744
	ldr r1, _0810C740 @ =0x03001038
	ldr r2, [r1, #0x00]
	add r2, r9
	adds r1, r3, #0x0
	bl _call_via_r2
	cmp r10, r0
	ble _0810C762
	mov r10, r0
	str r5, [sp, #0x00C]
	b _0810C762
	.byte 0x00, 0x00
_0810C734: .4byte 0x0819832C
_0810C738: .4byte 0x08198220
_0810C73C: .4byte 0x03000FD8
_0810C740: .4byte 0x03001038
_0810C744:
	ldr r2, _0810C76C @ =0x03001038
	ldr r1, [r2, #0x00]
	mov r2, r9
	adds r4, r1, r2
	bl _call_via_r1
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl _call_via_r4
	ldr r1, [sp, #0x014]
	cmp r0, r1
	ble _0810C762
	str r0, [sp, #0x014]
	str r5, [sp, #0x010]
_0810C762:
	adds r7, #0x01
	cmp r7, #0x07
	ble _0810C6B2
	b _0810C91C
	.byte 0x00, 0x00
_0810C76C: .4byte 0x03001038
_0810C770:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0810C854
	mov r2, r9
	ldr r0, [r2, #0x00]
	movs r1, #0xDE
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r8, r0
	bne _0810C78E
	movs r2, #0x00
	mov r8, r2
	b _0810C91C
_0810C78E:
	movs r7, #0x00
	ldr r1, _0810C818 @ =0x0819832C
	ldr r0, _0810C81C @ =0x08198220
	subs r1, r1, r0
	mov r9, r1
_0810C798:
	ldr r0, _0810C820 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r4, #0x06
	ands r4, r0
	cmp r4, #0x06
	beq _0810C846
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0810C7BA
	adds r0, #0xFF
_0810C7BA:
	asrs r0, r0, #0x08
	ldr r1, [sp, #0x004]
	subs r0, r1, r0
	adds r1, r5, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	subs r3, r0, r1
	ldr r0, [r5, #0x44]
	cmp r0, #0x00
	bge _0810C7D4
	adds r0, #0xFF
_0810C7D4:
	asrs r0, r0, #0x08
	movs r1, #0x05
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r1, [sp, #0x008]
	subs r2, r0, r1
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0810C846
	cmp r4, #0x04
	bne _0810C846
	adds r6, r3, #0x0
	muls r6, r3
	adds r0, r2, #0x0
	muls r0, r2
	adds r0, r6, r0
	cmp r3, #0x00
	ble _0810C828
	ldr r1, _0810C824 @ =0x03001038
	ldr r2, [r1, #0x00]
	add r2, r9
	adds r1, r3, #0x0
	bl _call_via_r2
	cmp r10, r0
	ble _0810C846
	mov r10, r0
	str r5, [sp, #0x00C]
	b _0810C846
_0810C818: .4byte 0x0819832C
_0810C81C: .4byte 0x08198220
_0810C820: .4byte 0x03000FD8
_0810C824: .4byte 0x03001038
_0810C828:
	ldr r2, _0810C850 @ =0x03001038
	ldr r1, [r2, #0x00]
	mov r2, r9
	adds r4, r1, r2
	bl _call_via_r1
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl _call_via_r4
	ldr r1, [sp, #0x014]
	cmp r0, r1
	ble _0810C846
	str r0, [sp, #0x014]
	str r5, [sp, #0x010]
_0810C846:
	adds r7, #0x01
	cmp r7, #0x07
	ble _0810C798
	b _0810C91C
	.byte 0x00, 0x00
_0810C850: .4byte 0x03001038
_0810C854:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0810C91C
	movs r7, #0x00
	ldr r1, _0810C8E8 @ =0x0819832C
	ldr r0, _0810C8EC @ =0x08198220
	subs r1, r1, r0
	mov r9, r1
_0810C866:
	ldr r0, _0810C8F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r4, #0x06
	ands r4, r0
	cmp r4, #0x06
	beq _0810C916
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0810C888
	adds r0, #0xFF
_0810C888:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r1, [sp, #0x004]
	subs r3, r0, r1
	ldr r0, [r5, #0x44]
	cmp r0, #0x00
	bge _0810C8A2
	adds r0, #0xFF
_0810C8A2:
	asrs r0, r0, #0x08
	movs r1, #0x05
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r1, [sp, #0x008]
	subs r2, r0, r1
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0810C916
	cmp r4, #0x04
	bne _0810C916
	adds r6, r3, #0x0
	muls r6, r3
	adds r0, r2, #0x0
	muls r0, r2
	adds r0, r6, r0
	cmp r3, #0x00
	ble _0810C8F8
	ldr r1, _0810C8F4 @ =0x03001038
	ldr r2, [r1, #0x00]
	add r2, r9
	adds r1, r3, #0x0
	bl _call_via_r2
	cmp r10, r0
	ble _0810C916
	mov r10, r0
	str r5, [sp, #0x00C]
	b _0810C916
	.byte 0x00, 0x00
_0810C8E8: .4byte 0x0819832C
_0810C8EC: .4byte 0x08198220
_0810C8F0: .4byte 0x03000FD8
_0810C8F4: .4byte 0x03001038
_0810C8F8:
	ldr r2, _0810C928 @ =0x03001038
	ldr r1, [r2, #0x00]
	mov r2, r9
	adds r4, r1, r2
	bl _call_via_r1
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl _call_via_r4
	ldr r1, [sp, #0x014]
	cmp r0, r1
	ble _0810C916
	str r0, [sp, #0x014]
	str r5, [sp, #0x010]
_0810C916:
	adds r7, #0x01
	cmp r7, #0x07
	ble _0810C866
_0810C91C:
	ldr r2, [sp, #0x00C]
	cmp r2, #0x00
	beq _0810C92C
_0810C922:
	adds r2, #0x08
	mov r8, r2
	b _0810C936
_0810C928: .4byte 0x03001038
_0810C92C:
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	beq _0810C936
_0810C932:
	adds r0, #0x08
_0810C934:
	mov r8, r0
_0810C936:
	mov r1, r8
	ldr r2, [sp, #0x000]
	str r1, [r2, #0x34]
	movs r0, #0x01
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_810C950
sub_810C950:
	push {r4, r5, lr}
	ldr r5, _0810C9A0 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0810C976
	ldr r0, [r4, #0x08]
	bl sub_807FB34
	ldr r0, [r5, #0x00]
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
	str r1, [r4, #0x04]
_0810C976:
	ldr r0, [r5, #0x00]
	movs r1, #0xA2
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0810C998
	ldr r0, [r4, #0x08]
	bl sub_807FB34
	ldr r0, [r5, #0x00]
	movs r1, #0xA2
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
	str r1, [r4, #0x04]
_0810C998:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810C9A0: .4byte 0x03000FD8
	thumb_func_start sub_810C9A4
sub_810C9A4:
	push {r4, r5, r6, lr}
	ldr r6, _0810C9D8 @ =0x03000FD8
	ldr r1, [r6, #0x00]
	lsls r5, r0, #0x02
	movs r0, #0xA1
	lsls r0, r0, #0x02
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r4, [r1, #0x00]
	cmp r4, #0x00
	beq _0810C9D0
	ldr r0, [r4, #0x08]
	bl sub_807FB34
	ldr r0, [r6, #0x00]
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	adds r0, r0, r5
	movs r1, #0x00
	str r1, [r0, #0x00]
	str r1, [r4, #0x04]
_0810C9D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810C9D8: .4byte 0x03000FD8
	.byte 0x70, 0xB5, 0x03, 0x1C, 0x04, 0x4E, 0x32, 0x68, 0xD1, 0x7A, 0x08, 0x20, 0x08, 0x40, 0x00, 0x28
	.byte 0x04, 0xD0, 0x00, 0x20, 0x1B, 0xE0, 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03, 0x9D, 0x00, 0xA1, 0x21
	.byte 0x89, 0x00, 0x50, 0x18, 0x40, 0x19, 0x04, 0x68, 0x00, 0x2C, 0x0F, 0xD1, 0x10, 0x1C, 0x48, 0x30
	.byte 0x05, 0x49, 0x73, 0xF7, 0xE3, 0xFA, 0x84, 0x60, 0xC4, 0x82, 0x31, 0x68, 0xA1, 0x22, 0x92, 0x00
	.byte 0x89, 0x18, 0x49, 0x19, 0x08, 0x60, 0x02, 0xE0, 0x99, 0xC3, 0x10, 0x08, 0x20, 0x1C, 0x70, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47
	thumb_func_start sub_810CA30
sub_810CA30:
	push {lr}
	ldr r0, _0810CA50 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0810CA54
	movs r0, #0x00
	bl sub_810C0C8
	b _0810CA5A
	.byte 0x00, 0x00
_0810CA50: .4byte 0x03000FD8
_0810CA54:
	movs r0, #0x00
	bl sub_810C9A4
_0810CA5A:
	ldr r0, _0810CA7C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810CA86
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0810CA80
	movs r0, #0x01
	bl sub_810C0C8
	b _0810CA86
	.byte 0x00, 0x00
_0810CA7C: .4byte 0x03000FD8
_0810CA80:
	movs r0, #0x01
	bl sub_810C9A4
_0810CA86:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_810CA8C
sub_810CA8C:
	push {lr}
	ldr r1, _0810CAA0 @ =0x03000FD8
	ldr r1, [r1, #0x00]
	ldr r2, _0810CAA4 @ =0x000002F9
	adds r1, r1, r2
	strb r0, [r1, #0x00]
	bl sub_810CA30
	pop {r0}
	bx r0
_0810CAA0: .4byte 0x03000FD8
_0810CAA4: .4byte 0x000002F9
	.byte 0x00, 0xB5, 0x07, 0x49, 0x09, 0x68, 0x80, 0x00, 0x9F, 0x22, 0x92, 0x00, 0x89, 0x18, 0x09, 0x18
	.byte 0x09, 0x68, 0x00, 0x29, 0x01, 0xD0, 0x03, 0x48, 0x48, 0x60, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xD8, 0x0F, 0x00, 0x03, 0x5D, 0xC0, 0x10, 0x08
