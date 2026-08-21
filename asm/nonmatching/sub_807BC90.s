	.syntax unified
	.text

	thumb_func_start sub_807BC90
sub_807BC90:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _0807BC9A
	b _0807BDD6
_0807BC9A:
	ldrb r1, [r4, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807BCA6
	b _0807BDD6
_0807BCA6:
	adds r0, r4, #0x0
	bl sub_8084294
	ldr r0, [r4, #0x1C]
	ldr r1, _0807BD14 @ =0x00F0FFFF
	ands r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x0F
	cmp r0, r1
	beq _0807BDB0
	ldrh r6, [r4, #0x14]
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #0x1E
	lsrs r5, r0, #0x1E
	adds r0, r4, #0x0
	bl sprite_show_8020CBC
	cmp r5, #0x00
	beq _0807BCD8
	ldrb r1, [r4, #0x13]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	orrs r0, r5
	strb r0, [r4, #0x13]
_0807BCD8:
	ldrh r2, [r4, #0x14]
	ldr r3, _0807BD18 @ =0x03000FD8
	cmp r6, r2
	beq _0807BCE8
	ldr r1, [r3, #0x00]
	ldrh r0, [r1, #0x12]
	orrs r0, r2
	strh r0, [r1, #0x12]
_0807BCE8:
	ldrh r1, [r4, #0x1C]
	ldrb r0, [r4, #0x1E]
	lsls r2, r0, #0x1C
	lsrs r0, r2, #0x10
	movs r5, #0x80
	lsls r5, r5, #0x05
	adds r0, r0, r5
	orrs r1, r0
	ldr r0, _0807BD1C @ =0xFFFFE000
	adds r1, r1, r0
	cmp r1, #0x01
	bhi _0807BD2E
	ldr r2, [r3, #0x00]
	movs r5, #0x88
	lsls r5, r5, #0x02
	adds r1, r2, r5
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0807BD20
	str r4, [r1, #0x00]
	b _0807BDD6
	.byte 0x00, 0x00
_0807BD14: .4byte 0x00F0FFFF
_0807BD18: .4byte 0x03000FD8
_0807BD1C: .4byte 0xFFFFE000
_0807BD20:
	cmp r0, r4
	beq _0807BDD6
	movs r1, #0x89
	lsls r1, r1, #0x02
	adds r0, r2, r1
	str r4, [r0, #0x00]
	b _0807BDD6
_0807BD2E:
	ldr r0, [r3, #0x00]
	movs r5, #0x92
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	lsrs r1, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r1, r2
	ldrh r2, [r4, #0x16]
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_81152FC
	lsls r0, r0, #0x10
	ldr r1, _0807BDA0 @ =0xFFFF0000
	cmp r0, r1
	beq _0807BDD6
	ldr r0, _0807BDA4 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x30]
	cmp r2, #0x00
	beq _0807BD84
_0807BD5E:
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807BD7E
	cmp r2, r4
	beq _0807BD7E
	ldrh r0, [r2, #0x14]
	ldrh r5, [r4, #0x14]
	cmp r0, r5
	bne _0807BD7E
	ldrb r1, [r2, #0x13]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807BDD6
_0807BD7E:
	ldr r2, [r2, #0x68]
	cmp r2, #0x00
	bne _0807BD5E
_0807BD84:
	ldr r3, _0807BDA8 @ =0x0807B8C9
	ldr r0, _0807BDAC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r1, [r2, #0x3C]
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x3C]
	ldr r0, [r2, #0x4C]
	str r0, [r1, #0x00]
	str r3, [r1, #0x04]
	movs r0, #0x00
	strh r0, [r1, #0x10]
	str r1, [r2, #0x4C]
	str r4, [r1, #0x08]
	b _0807BDD6
_0807BDA0: .4byte 0xFFFF0000
_0807BDA4: .4byte 0x03000D74
_0807BDA8: .4byte sub_807B8C8
_0807BDAC: .4byte 0x03000FD8
_0807BDB0:
	ldr r0, [r4, #0x54]
	cmp r0, #0x00
	beq _0807BDD6
	ldrb r1, [r4, #0x12]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x07
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x12]
	movs r0, #0xF0
	lsls r0, r0, #0x07
	strh r0, [r4, #0x14]
	ldrb r1, [r4, #0x13]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x13]
_0807BDD6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
