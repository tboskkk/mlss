	.syntax unified
	.text

	thumb_func_start sub_807BDDC
sub_807BDDC:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0807BDE6
	b _0807BF2E
_0807BDE6:
	ldrb r1, [r5, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807BDF2
	b _0807BF2E
_0807BDF2:
	ldrh r4, [r5, #0x14]
	cmp r4, #0x00
	bne _0807BDFA
	b _0807BF2E
_0807BDFA:
	movs r6, #0x00
	movs r1, #0x01
	adds r0, r4, #0x0
	eors r0, r1
	ands r0, r1
	adds r2, r5, #0x0
	adds r2, #0x29
	cmp r0, #0x00
	beq _0807BE1A
_0807BE0C:
	lsrs r4, r4, #0x01
	adds r6, #0x01
	adds r0, r4, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0807BE0C
_0807BE1A:
	ldrb r1, [r2, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0807BE8C
	ldr r0, _0807BE4C @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x30]
	cmp r2, #0x00
	beq _0807BE56
	movs r7, #0x20
	movs r3, #0x01
_0807BE32:
	ldrb r1, [r2, #0x12]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0807BE50
	cmp r2, r5
	beq _0807BE50
	ldrh r0, [r2, #0x14]
	asrs r0, r6
	ands r0, r3
	cmp r0, #0x00
	beq _0807BE50
_0807BE4A:
	b _0807BE4A
_0807BE4C: .4byte 0x03000D74
_0807BE50:
	ldr r2, [r2, #0x68]
	cmp r2, #0x00
	bne _0807BE32
_0807BE56:
	adds r3, r6, #0x0
	cmp r4, #0x00
	beq _0807BE88
	movs r2, #0x01
	ldr r0, _0807BEA4 @ =0x03000D74
	mov r12, r0
	ldr r1, _0807BEA8 @ =0x0000FFFF
	adds r7, r1, #0x0
_0807BE66:
	adds r0, r4, #0x0
	eors r0, r2
	ands r0, r2
	cmp r0, #0x00
	bne _0807BE80
	mov r1, r12
	ldr r0, [r1, #0x00]
	lsls r1, r3, #0x01
	adds r0, #0x0C
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	orrs r1, r7
	strh r1, [r0, #0x00]
_0807BE80:
	lsrs r4, r4, #0x01
	adds r3, #0x01
	cmp r4, #0x00
	bne _0807BE66
_0807BE88:
	movs r0, #0x00
	strh r0, [r5, #0x14]
_0807BE8C:
	ldr r0, [r5, #0x1C]
	ldr r1, _0807BEAC @ =0x00F0FFFF
	ands r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x0F
	cmp r0, r1
	bne _0807BEB0
	ldrb r0, [r5, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5, #0x12]
	b _0807BF2E
_0807BEA4: .4byte 0x03000D74
_0807BEA8: .4byte 0x0000FFFF
_0807BEAC: .4byte 0x00F0FFFF
_0807BEB0:
	movs r3, #0x00
	ldr r4, _0807BEE4 @ =0x03000FD8
	movs r2, #0x00
_0807BEB6:
	ldr r0, [r4, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x2C]
	adds r1, r2, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r6
	bne _0807BF20
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807BF20
	ldr r0, _0807BEE8 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x30]
	lsls r3, r3, #0x18
	b _0807BF08
	.byte 0x00, 0x00
_0807BEE4: .4byte 0x03000FD8
_0807BEE8: .4byte 0x03000D74
_0807BEEC:
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807BF06
	cmp r2, r5
	beq _0807BF06
	ldrh r0, [r2, #0x14]
	asrs r0, r6
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0807BF28
_0807BF06:
	ldr r2, [r2, #0x68]
_0807BF08:
	cmp r2, #0x00
	bne _0807BEEC
	ldr r0, [r4, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsrs r1, r3, #0x18
	movs r2, #0x00
	bl sub_8115048
	b _0807BF28
_0807BF20:
	adds r2, #0x1C
	adds r3, #0x01
	cmp r3, #0x07
	ble _0807BEB6
_0807BF28:
	adds r0, r5, #0x0
	bl sprite_hide_8021F20
_0807BF2E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
