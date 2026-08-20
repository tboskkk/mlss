	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80A3E68
sub_80A3E68:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A3F20 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A3F18
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A3EAE
	cmp r1, #0x04
	bne _080A3EC6
_080A3EAE:
	ldr r2, _080A3F24 @ =0x00002053
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A3EC6:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A3ED8
	cmp r1, #0x04
	bne _080A3F08
_080A3ED8:
	ldr r2, _080A3F28 @ =0x03001038
	ldr r0, _080A3F2C @ =0x0819832C
	ldr r1, _080A3F30 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x14
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A3F08:
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A3F34 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A3F38 @ =0x080A3F3D
	str r0, [r6, #0x4C]
_080A3F18:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A3F20: .4byte 0x03000FD8
_080A3F24: .4byte 0x00002053
_080A3F28: .4byte 0x03001038
_080A3F2C: .4byte 0x0819832C
_080A3F30: .4byte 0x08198220
_080A3F34: .4byte 0x00000FFF
_080A3F38: .4byte sub_80A3F3C
	thumb_func_start sub_80A3F3C
sub_80A3F3C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080A4020 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	movs r7, #0x80
	lsls r7, r7, #0x07
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r7
	bge _080A3F72
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A3F72:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r5, r1, #0x0
	cmp r0, #0x00
	beq _080A3F82
	b _080A4084
_080A3F82:
	adds r2, r7, #0x0
	movs r1, #0x00
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, r1
	blt _080A3F9C
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A3F9E
_080A3F9C:
	movs r1, #0x00
_080A3F9E:
	adds r5, r6, #0x0
	adds r5, #0xAE
	cmp r1, #0x00
	beq _080A3FC2
	ldr r0, _080A4024 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080A3FC2
	ldrh r0, [r5, #0x00]
	ldr r1, _080A4028 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r5, #0x00]
_080A3FC2:
	ldrh r0, [r5, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	bne _080A4084
	adds r1, r7, #0x0
	ldr r0, _080A402C @ =0x00007FFF
	cmp r1, r0
	ble _080A3FD4
	adds r1, r0, #0x0
_080A3FD4:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080A3FEE
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080A3FF0
_080A3FEE:
	movs r2, #0x00
_080A3FF0:
	cmp r2, #0x00
	beq _080A4030
	ldr r0, _080A4020 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldrh r1, [r5, #0x00]
	ldr r0, _080A4028 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	b _080A4084
_080A4020: .4byte 0x03000FD8
_080A4024: .4byte 0x0300034C
_080A4028: .4byte 0x00000FFF
_080A402C: .4byte 0x00007FFF
_080A4030:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r7
	bgt _080A4084
	ldr r0, _080A40E4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080A4084
	ldr r4, _080A40E8 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080A4084
	ldrh r0, [r5, #0x00]
	ldr r1, _080A40EC @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r5, #0x00]
_080A4084:
	ldrh r0, [r5, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080A40F8
	movs r1, #0x00
	adds r2, r7, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A409A
	adds r1, r0, #0x0
_080A409A:
	ldr r0, _080A40F0 @ =0x00007FFF
	cmp r2, r0
	ble _080A40A2
	adds r2, r0, #0x0
_080A40A2:
	cmp r2, r1
	bge _080A40A8
	adds r1, r2, #0x0
_080A40A8:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080A40C2
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A40C4
_080A40C2:
	movs r1, #0x00
_080A40C4:
	cmp r1, #0x00
	beq _080A40F8
	cmp r3, #0x01
	ble _080A40F8
	ldrh r0, [r5, #0x00]
	ldr r1, _080A40EC @ =0x00000FFF
	ands r1, r0
	strh r1, [r5, #0x00]
	ldr r1, _080A40F4 @ =0x080A453D
	mov r2, r8
	str r1, [r2, #0x4C]
	mov r0, r8
	bl _call_via_r1
	b _080A417A
	.byte 0x00, 0x00
_080A40E4: .4byte 0x0300034C
_080A40E8: .4byte 0x03000FD8
_080A40EC: .4byte 0x00000FFF
_080A40F0: .4byte 0x00007FFF
_080A40F4: .4byte sub_80A453C
_080A40F8:
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r5, r2, #0x0
	cmp r0, #0x00
	beq _080A417A
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080A411C
	cmp r2, #0x04
	bne _080A4138
_080A411C:
	ldr r2, _080A4184 @ =0x00002053
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A4138:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A4146
	cmp r2, #0x04
	bne _080A4174
_080A4146:
	ldr r2, _080A4188 @ =0x03001038
	ldr r0, _080A418C @ =0x0819832C
	ldr r1, _080A4190 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_080A4174:
	ldr r0, _080A4194 @ =0x080A4199
	mov r4, r8
	str r0, [r4, #0x4C]
_080A417A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A4184: .4byte 0x00002053
_080A4188: .4byte 0x03001038
_080A418C: .4byte 0x0819832C
_080A4190: .4byte 0x08198220
_080A4194: .4byte sub_80A4198
	thumb_func_start sub_80A4198
sub_80A4198:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080A4204 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r7, [r6, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A41FA
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7E
	bl play_sfx_80195B4
	adds r2, r4, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080A4208 @ =0x08052003
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r0, _080A420C @ =0x080A4211
	str r0, [r6, #0x4C]
_080A41FA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A4204: .4byte 0x03000FD8
_080A4208: .4byte 0x08052003
_080A420C: .4byte sub_80A4210
