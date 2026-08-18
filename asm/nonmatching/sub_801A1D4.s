	.syntax unified
	.text

	thumb_func_start sub_801A1D4
sub_801A1D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	mov r8, r0
	ldr r4, _0801A294 @ =0x03000D0C
	ldr r0, [r4, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl _call_via_r0
	lsls r0, r0, #0x18
	ldr r2, [r4, #0x00]
	movs r1, #0x00
	strb r1, [r2, #0x03]
	cmp r0, #0x00
	beq _0801A274
	movs r5, #0x00
	movs r4, #0x0D
	negs r4, r4
	mov r9, r4
_0801A204:
	ldr r7, _0801A294 @ =0x03000D0C
	ldr r1, [r7, #0x00]
	lsls r0, r5, #0x01
	adds r0, r0, r5
	lsls r0, r0, #0x03
	ldr r1, [r1, #0x2C]
	adds r1, r1, r0
	adds r6, r5, #0x1
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldrh r0, [r1, #0x02]
	adds r2, r2, r0
	ldrh r0, [r1, #0x04]
	adds r2, r2, r0
	ldrh r0, [r1, #0x06]
	adds r0, r2, r0
	ldrh r4, [r1, #0x08]
	adds r2, r0, r4
	ldrh r0, [r1, #0x0A]
	adds r0, r2, r0
	ldrh r4, [r1, #0x0C]
	adds r2, r0, r4
	ldrh r0, [r1, #0x0E]
	adds r0, r2, r0
	ldrh r4, [r1, #0x10]
	adds r2, r0, r4
	ldrh r0, [r1, #0x12]
	adds r2, r2, r0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, #0x4
	cmp r0, r9
	bne _0801A262
	lsls r1, r5, #0x04
	add r1, r8
	adds r0, r4, #0x0
	ldr r2, _0801A298 @ =0x04000004
	str r3, [sp, #0x004]
	bl CpuSet
	ldr r2, [r7, #0x00]
	movs r0, #0x01
	lsls r0, r5
	ldrb r1, [r2, #0x03]
	orrs r0, r1
	strb r0, [r2, #0x03]
	ldr r3, [sp, #0x004]
_0801A262:
	str r3, [sp, #0x000]
	mov r0, sp
	adds r1, r4, #0x0
	ldr r2, _0801A29C @ =0x05000004
	bl CpuSet
	adds r5, r6, #0x0
	cmp r5, #0x03
	ble _0801A204
_0801A274:
	ldr r3, _0801A294 @ =0x03000D0C
	ldr r1, [r3, #0x00]
	ldrb r0, [r1, #0x02]
	ldrb r2, [r1, #0x03]
	orrs r0, r2
	strb r0, [r1, #0x02]
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x03]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0801A294: .4byte 0x03000D0C
_0801A298: .4byte 0x04000004
_0801A29C: .4byte 0x05000004
