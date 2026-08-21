	.syntax unified
	.text

	thumb_func_start sub_80BD9FC
sub_80BD9FC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080BDAEC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r3, [r7, #0x2C]
	ldr r0, [r3, #0x28]
	ldr r1, _080BDAF0 @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xA8
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, [r3, #0x40]
	cmp r0, #0x00
	bne _080BDA40
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BDA3C
	cmp r1, #0x04
	bne _080BDA40
_080BDA3C:
	ldr r0, _080BDAF4 @ =0x080BE729
	str r0, [r3, #0x4C]
_080BDA40:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080BDA48
	adds r1, #0xFF
_080BDA48:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080BDA52
	adds r2, #0xFF
_080BDA52:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080BDA5C
	adds r3, #0xFF
_080BDA5C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080BDAF8 @ =0x000005DF
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080BDA7A
	cmp r2, #0x04
	bne _080BDA96
_080BDA7A:
	ldr r2, _080BDAFC @ =0x00002062
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BDA96:
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r5, #0x00
	strb r5, [r0, #0x00]
	adds r0, #0x01
	strb r5, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BDAB0
	cmp r2, #0x04
	bne _080BDAE0
_080BDAB0:
	ldr r2, _080BDB00 @ =0x03001038
	ldr r0, _080BDB04 @ =0x0819832C
	ldr r1, _080BDB08 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r5, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BDAE0:
	ldr r0, _080BDB0C @ =0x080BDB11
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BDAEC: .4byte 0x03000FD8
_080BDAF0: .4byte 0x00000111
_080BDAF4: .4byte sub_80BE728
_080BDAF8: .4byte 0x000005DF
_080BDAFC: .4byte 0x00002062
_080BDB00: .4byte 0x03001038
_080BDB04: .4byte 0x0819832C
_080BDB08: .4byte 0x08198220
_080BDB0C: .4byte sub_80BDB10
