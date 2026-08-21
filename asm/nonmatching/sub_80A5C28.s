	.syntax unified
	.text

	thumb_func_start sub_80A5C28
sub_80A5C28:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080A5E00 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r6, #0x2C]
	mov r8, r0
	ldr r0, [r6, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080A5CD6
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r4, r0, #0x0
	bl sub_81DB964
	cmp r4, #0x00
	bge _080A5C72
	ldr r2, _080A5E04 @ =0x41F00000
	ldr r3, _080A5E08 @ =0x00000000
	bl sub_81DB1D8
_080A5C72:
	ldr r2, _080A5E0C @ =0x3FB99999
	ldr r3, _080A5E10 @ =0x9999999A
	bl sub_81DB240
	ldr r2, _080A5E14 @ =0x3FD99999
	ldr r3, _080A5E18 @ =0x9999999A
	bl sub_81DB1D8
	ldr r2, _080A5E1C @ =0x40700000
	ldr r3, _080A5E20 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r1, r6, #0x0
	adds r1, #0x7C
	strh r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r4, r0, #0x0
	ldr r7, [r6, #0x08]
	bl sub_81DB964
	cmp r4, #0x00
	bge _080A5CB4
	ldr r2, _080A5E04 @ =0x41F00000
	ldr r3, _080A5E08 @ =0x00000000
	bl sub_81DB1D8
_080A5CB4:
	ldr r2, _080A5E0C @ =0x3FB99999
	ldr r3, _080A5E10 @ =0x9999999A
	bl sub_81DB240
	ldr r2, _080A5E14 @ =0x3FD99999
	ldr r3, _080A5E18 @ =0x9999999A
	bl sub_81DB1D8
	ldr r2, _080A5E24 @ =0x40300000
	ldr r3, _080A5E28 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r1, r7, #0x0
	adds r1, #0x20
	strb r0, [r1, #0x00]
_080A5CD6:
	ldr r0, [r6, #0x28]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _080A5D6C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r4, r0, #0x0
	bl sub_81DB964
	cmp r4, #0x00
	bge _080A5D08
	ldr r2, _080A5E04 @ =0x41F00000
	ldr r3, _080A5E08 @ =0x00000000
	bl sub_81DB1D8
_080A5D08:
	ldr r2, _080A5E0C @ =0x3FB99999
	ldr r3, _080A5E10 @ =0x9999999A
	bl sub_81DB240
	ldr r2, _080A5E2C @ =0x3FF80000
	ldr r3, _080A5E30 @ =0x00000000
	bl sub_81DB1D8
	ldr r2, _080A5E1C @ =0x40700000
	ldr r3, _080A5E20 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r1, r6, #0x0
	adds r1, #0x7C
	strh r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r4, r0, #0x0
	ldr r7, [r6, #0x08]
	bl sub_81DB964
	cmp r4, #0x00
	bge _080A5D4A
	ldr r2, _080A5E04 @ =0x41F00000
	ldr r3, _080A5E08 @ =0x00000000
	bl sub_81DB1D8
_080A5D4A:
	ldr r2, _080A5E0C @ =0x3FB99999
	ldr r3, _080A5E10 @ =0x9999999A
	bl sub_81DB240
	ldr r2, _080A5E2C @ =0x3FF80000
	ldr r3, _080A5E30 @ =0x00000000
	bl sub_81DB1D8
	ldr r2, _080A5E24 @ =0x40300000
	ldr r3, _080A5E28 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r1, r7, #0x0
	adds r1, #0x20
	strb r0, [r1, #0x00]
_080A5D6C:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x3F
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080A5D8C
	cmp r2, #0x04
	bne _080A5DD4
_080A5D8C:
	mov r1, r8
	ldr r0, [r1, #0x38]
	cmp r0, #0x00
	bge _080A5D96
	adds r0, #0xFF
_080A5D96:
	asrs r0, r0, #0x08
	mov r1, r8
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x20
	mov r0, r8
	ldr r2, [r0, #0x3C]
	cmp r2, #0x00
	bge _080A5DB2
	adds r2, #0xFF
_080A5DB2:
	asrs r2, r2, #0x08
	mov r0, r8
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080A5DD4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A5DE2
	cmp r2, #0x04
	bne _080A5E74
_080A5DE2:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A5E38
	ldr r2, _080A5E34 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A5E44
_080A5E00: .4byte 0x03000FD8
_080A5E04: .4byte 0x41F00000
_080A5E08: .4byte 0x00000000
_080A5E0C: .4byte 0x3FB99999
_080A5E10: .4byte 0x9999999A
_080A5E14: .4byte 0x3FD99999
_080A5E18: .4byte 0x9999999A
_080A5E1C: .4byte 0x40700000
_080A5E20: .4byte 0x00000000
_080A5E24: .4byte 0x40300000
_080A5E28: .4byte 0x00000000
_080A5E2C: .4byte 0x3FF80000
_080A5E30: .4byte 0x00000000
_080A5E34: .4byte 0x00002002
_080A5E38:
	ldr r2, _080A5E84 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A5E44:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r4, #0x02
	ldsh r0, [r0, r4]
	cmp r1, r0
	blt _080A5E5A
	movs r2, #0x01
_080A5E5A:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A5E74:
	ldr r0, _080A5E88 @ =0x080A5E8D
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A5E84: .4byte 0x0000204F
_080A5E88: .4byte sub_80A5E8C
