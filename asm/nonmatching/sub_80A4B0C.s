	.syntax unified
	.text

	thumb_func_start sub_80A4B0C
sub_80A4B0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080A4CE4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
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
	beq _080A4BBA
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r4, r0, #0x0
	bl sub_81DB964
	cmp r4, #0x00
	bge _080A4B56
	ldr r2, _080A4CE8 @ =0x41F00000
	ldr r3, _080A4CEC @ =0x00000000
	bl sub_81DB1D8
_080A4B56:
	ldr r2, _080A4CF0 @ =0x3FB99999
	ldr r3, _080A4CF4 @ =0x9999999A
	bl sub_81DB240
	ldr r2, _080A4CF8 @ =0x3FD99999
	ldr r3, _080A4CFC @ =0x9999999A
	bl sub_81DB1D8
	ldr r2, _080A4D00 @ =0x40700000
	ldr r3, _080A4D04 @ =0x00000000
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
	bge _080A4B98
	ldr r2, _080A4CE8 @ =0x41F00000
	ldr r3, _080A4CEC @ =0x00000000
	bl sub_81DB1D8
_080A4B98:
	ldr r2, _080A4CF0 @ =0x3FB99999
	ldr r3, _080A4CF4 @ =0x9999999A
	bl sub_81DB240
	ldr r2, _080A4CF8 @ =0x3FD99999
	ldr r3, _080A4CFC @ =0x9999999A
	bl sub_81DB1D8
	ldr r2, _080A4D08 @ =0x40300000
	ldr r3, _080A4D0C @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r1, r7, #0x0
	adds r1, #0x20
	strb r0, [r1, #0x00]
_080A4BBA:
	ldr r0, [r6, #0x28]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _080A4C50
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r4, r0, #0x0
	bl sub_81DB964
	cmp r4, #0x00
	bge _080A4BEC
	ldr r2, _080A4CE8 @ =0x41F00000
	ldr r3, _080A4CEC @ =0x00000000
	bl sub_81DB1D8
_080A4BEC:
	ldr r2, _080A4CF0 @ =0x3FB99999
	ldr r3, _080A4CF4 @ =0x9999999A
	bl sub_81DB240
	ldr r2, _080A4D10 @ =0x3FF80000
	ldr r3, _080A4D14 @ =0x00000000
	bl sub_81DB1D8
	ldr r2, _080A4D00 @ =0x40700000
	ldr r3, _080A4D04 @ =0x00000000
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
	bge _080A4C2E
	ldr r2, _080A4CE8 @ =0x41F00000
	ldr r3, _080A4CEC @ =0x00000000
	bl sub_81DB1D8
_080A4C2E:
	ldr r2, _080A4CF0 @ =0x3FB99999
	ldr r3, _080A4CF4 @ =0x9999999A
	bl sub_81DB240
	ldr r2, _080A4D10 @ =0x3FF80000
	ldr r3, _080A4D14 @ =0x00000000
	bl sub_81DB1D8
	ldr r2, _080A4D08 @ =0x40300000
	ldr r3, _080A4D0C @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r1, r7, #0x0
	adds r1, #0x20
	strb r0, [r1, #0x00]
_080A4C50:
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
	beq _080A4C70
	cmp r2, #0x04
	bne _080A4CB8
_080A4C70:
	mov r1, r8
	ldr r0, [r1, #0x38]
	cmp r0, #0x00
	bge _080A4C7A
	adds r0, #0xFF
_080A4C7A:
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
	bge _080A4C96
	adds r2, #0xFF
_080A4C96:
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
_080A4CB8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A4CC6
	cmp r2, #0x04
	bne _080A4D58
_080A4CC6:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A4D1C
	ldr r2, _080A4D18 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A4D28
_080A4CE4: .4byte 0x03000FD8
_080A4CE8: .4byte 0x41F00000
_080A4CEC: .4byte 0x00000000
_080A4CF0: .4byte 0x3FB99999
_080A4CF4: .4byte 0x9999999A
_080A4CF8: .4byte 0x3FD99999
_080A4CFC: .4byte 0x9999999A
_080A4D00: .4byte 0x40700000
_080A4D04: .4byte 0x00000000
_080A4D08: .4byte 0x40300000
_080A4D0C: .4byte 0x00000000
_080A4D10: .4byte 0x3FF80000
_080A4D14: .4byte 0x00000000
_080A4D18: .4byte 0x00002002
_080A4D1C:
	ldr r2, _080A4D68 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A4D28:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r4, #0x02
	ldsh r0, [r0, r4]
	cmp r1, r0
	blt _080A4D3E
	movs r2, #0x01
_080A4D3E:
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
_080A4D58:
	ldr r0, _080A4D6C @ =0x080A4D71
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A4D68: .4byte 0x0000204F
_080A4D6C: .4byte sub_80A4D70
