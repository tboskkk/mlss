	.syntax unified
	.text

	thumb_func_start sub_801E150
sub_801E150:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	str r1, [sp, #0x000]
	adds r6, r2, #0x0
	ldr r4, [sp, #0x02C]
	ldr r7, [r5, #0x38]
	ldrb r1, [r7, #0x00]
	ldrb r0, [r7, #0x01]
	lsls r0, r0, #0x08
	orrs r1, r0
	subs r1, r7, r1
	str r1, [sp, #0x004]
	ldrb r1, [r7, #0x04]
	ldrb r0, [r7, #0x05]
	lsls r0, r0, #0x08
	orrs r1, r0
	lsrs r0, r1, #0x09
	adds r0, #0x01
	adds r2, r5, #0x0
	adds r2, #0x27
	strb r0, [r2, #0x00]
	ldr r2, _0801E300 @ =0x000001FF
	adds r0, r2, #0x0
	ands r1, r0
	adds r1, #0x01
	ands r1, r0
	ldrh r2, [r5, #0x28]
	ldr r0, _0801E304 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #0x28]
	ldrb r1, [r7, #0x06]
	lsrs r1, r1, #0x07
	lsls r1, r1, #0x05
	ldrb r2, [r5, #0x11]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x11]
	ldrb r1, [r7, #0x06]
	movs r0, #0x7F
	ands r0, r1
	adds r0, #0x01
	adds r1, r5, #0x0
	adds r1, #0x26
	strb r0, [r1, #0x00]
	ldrb r1, [r7, #0x07]
	adds r0, r5, #0x0
	adds r0, #0x24
	strb r1, [r0, #0x00]
	ldr r1, [sp, #0x000]
	lsls r0, r1, #0x01
	adds r0, r0, r7
	ldrb r1, [r0, #0x08]
	ldrb r0, [r0, #0x09]
	lsls r0, r0, #0x08
	orrs r1, r0
	adds r1, r1, r7
	mov r8, r1
	ldrb r1, [r5, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	movs r1, #0x07
	negs r1, r1
	ands r0, r1
	strb r0, [r5, #0x12]
	str r3, [r5, #0x5C]
	str r4, [r5, #0x60]
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	beq _0801E1F0
	b _0801E320
_0801E1F0:
	adds r2, r5, #0x0
	adds r2, #0x23
	movs r0, #0x00
	strb r0, [r2, #0x00]
	ldrb r1, [r5, #0x12]
	subs r0, #0x09
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5, #0x12]
	adds r1, r5, #0x0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1, #0x00]
	ldr r3, [r5, #0x44]
	mov r10, r2
	str r1, [sp, #0x008]
	cmp r3, #0x00
	beq _0801E224
	ldrb r0, [r3, #0x00]
	cmp r0, #0x01
	beq _0801E224
	adds r0, r3, #0x0
	adds r1, r7, #0x0
	bl sub_801E3EC
_0801E224:
	ldr r2, [r5, #0x50]
	movs r0, #0x29
	adds r0, r0, r5
	mov r9, r0
	cmp r2, #0x00
	beq _0801E2BC
	ldr r0, [r5, #0x48]
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0801E2B6
	mov r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0801E24E
	ldr r0, _0801E308 @ =0x03000C78
	ldr r1, [r0, #0x00]
	ldr r0, _0801E30C @ =0x0800063C
	cmp r1, r0
	beq _0801E2B6
_0801E24E:
	ldrh r4, [r5, #0x28]
	lsls r4, r4, #0x17
	lsrs r4, r4, #0x12
	adds r0, r2, #0x0
	bl sub_80198B0
	adds r6, r0, #0x0
	subs r2, r4, r6
	cmp r2, #0x00
	ble _0801E286
	ldr r0, _0801E310 @ =0x03001034
	ldr r1, [r5, #0x4C]
	adds r1, r1, r6
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	adds r0, r6, #0x0
	cmp r0, #0x00
	bge _0801E278
	adds r0, #0x1F
_0801E278:
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x17
	ldrh r2, [r5, #0x28]
	ldr r1, _0801E304 @ =0xFFFFFE00
	ands r1, r2
	orrs r1, r0
	strh r1, [r5, #0x28]
_0801E286:
	ldr r2, _0801E314 @ =0x03000C84
	ldr r1, [r5, #0x48]
	ldr r0, [r1, #0x04]
	ldr r1, [r1, #0x08]
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, [r5, #0x48]
	movs r0, #0x00
	str r0, [r1, #0x00]
	str r0, [r5, #0x50]
	ldr r0, _0801E318 @ =0x0300034C
	ldr r1, _0801E31C @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	adds r1, #0x01
	lsls r1, r1, #0x06
	ldrb r2, [r5, #0x12]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x12]
_0801E2B6:
	ldr r0, [r5, #0x50]
	cmp r0, #0x00
	bne _0801E2DC
_0801E2BC:
	ldr r0, [r5, #0x44]
	cmp r0, #0x00
	bne _0801E2DC
	ldr r0, _0801E318 @ =0x0300034C
	ldr r2, _0801E31C @ =0x00000888
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	adds r1, #0x01
	lsls r1, r1, #0x06
	ldrb r2, [r5, #0x12]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x12]
_0801E2DC:
	ldr r0, [r5, #0x54]
	cmp r0, #0x00
	beq _0801E334
	ldr r0, _0801E318 @ =0x0300034C
	ldr r1, _0801E31C @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	adds r1, #0x01
	ldrb r2, [r5, #0x13]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x13]
	b _0801E334
	.byte 0x00, 0x00
_0801E300: .4byte 0x000001FF
_0801E304: .4byte 0xFFFFFE00
_0801E308: .4byte 0x03000C78
_0801E30C: .4byte 0x0800063C
_0801E310: .4byte 0x03001034
_0801E314: .4byte 0x03000C84
_0801E318: .4byte 0x0300034C
_0801E31C: .4byte 0x00000888
_0801E320:
	adds r0, r5, #0x0
	adds r0, #0x23
	strb r6, [r0, #0x00]
	mov r10, r0
	adds r2, r5, #0x0
	adds r2, #0x20
	str r2, [sp, #0x008]
	movs r0, #0x29
	adds r0, r0, r5
	mov r9, r0
_0801E334:
	mov r1, r8
	ldrb r4, [r1, #0x00]
	cmp r4, #0x00
	bne _0801E37C
	ldrb r3, [r1, #0x01]
	movs r0, #0xC0
	ands r0, r3
	cmp r0, #0x00
	beq _0801E37C
	movs r0, #0x3F
	ands r0, r3
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrb r1, [r0, #0x08]
	ldrb r0, [r0, #0x09]
	lsls r0, r0, #0x08
	orrs r1, r0
	adds r7, r7, r1
	mov r8, r7
	lsrs r1, r3, #0x06
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r5, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	lsrs r1, r3, #0x07
	lsls r1, r1, #0x07
	movs r2, #0x7F
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x11]
	mov r2, r8
	ldrb r4, [r2, #0x00]
_0801E37C:
	mov r1, r10
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, #0x01
	add r0, r8
	ldrb r1, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x22
	strb r1, [r3, #0x00]
	ldrb r0, [r0, #0x01]
	lsls r2, r0, #0x04
	ldr r1, [sp, #0x008]
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	bge _0801E39E
	negs r0, r0
_0801E39E:
	adds r0, r2, r0
	strh r0, [r5, #0x2A]
	adds r0, r5, #0x0
	adds r0, #0x21
	mov r2, sp
	ldrb r2, [r2, #0x00]
	strb r2, [r0, #0x00]
	adds r0, #0x04
	strb r4, [r0, #0x00]
	movs r0, #0x00
	strh r0, [r5, #0x2C]
	mov r0, r8
	str r0, [r5, #0x3C]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x004]
	adds r0, r0, r1
	ldrb r1, [r0, #0x01]
	ldrb r0, [r0, #0x02]
	lsls r0, r0, #0x08
	orrs r1, r0
	ldr r2, [sp, #0x004]
	adds r1, r2, r1
	str r1, [r5, #0x40]
	mov r1, r9
	ldrb r0, [r1, #0x00]
	movs r1, #0x40
	orrs r0, r1
	mov r2, r9
	strb r0, [r2, #0x00]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
