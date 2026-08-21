	.syntax unified
	.text

	thumb_func_start sub_801DFB0
sub_801DFB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x004]
	ldr r7, _0801E090 @ =0x03000D48
	ldr r5, _0801E094 @ =0x080008B8
	ldr r0, _0801E098 @ =0x08000850
	mov r10, r0
	subs r5, r5, r0
	ldr r1, _0801E09C @ =0x080008F0
	mov r9, r1
	mov r2, r9
	ldr r0, _0801E0A0 @ =0x080008B8
	subs r2, r2, r0
	mov r9, r2
	adds r1, r5, r2
	ldr r4, _0801E0A4 @ =0x08000914
	ldr r2, _0801E0A8 @ =0x080008F0
	subs r4, r4, r2
	adds r1, r1, r4
	ldr r2, _0801E0AC @ =0x081E256C
	movs r0, #0x00
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r7, #0x00]
	lsrs r2, r5, #0x02
	ldr r0, _0801E0B0 @ =0x001FFFFF
	mov r8, r0
	ands r2, r0
	movs r6, #0x80
	lsls r6, r6, #0x13
	orrs r2, r6
	mov r0, r10
	bl CpuSet
	ldr r1, _0801E0B4 @ =0x03000D4C
	mov r10, r1
	ldr r1, [r7, #0x00]
	adds r1, r1, r5
	mov r2, r10
	str r1, [r2, #0x00]
	mov r0, r9
	lsrs r2, r0, #0x02
	mov r0, r8
	ands r2, r0
	orrs r2, r6
	ldr r0, _0801E0A0 @ =0x080008B8
	bl CpuSet
	ldr r0, _0801E0B8 @ =0x03000D50
	mov r2, r10
	ldr r1, [r2, #0x00]
	add r1, r9
	str r1, [r0, #0x00]
	lsrs r4, r4, #0x02
	mov r0, r8
	ands r4, r0
	orrs r4, r6
	ldr r0, _0801E0A8 @ =0x080008F0
	adds r2, r4, #0x0
	bl CpuSet
	movs r0, #0x00
	str r0, [sp, #0x000]
	ldr r4, _0801E0BC @ =0x03000D58
	ldr r2, _0801E0C0 @ =0x05000006
	mov r0, sp
	adds r1, r4, #0x0
	bl CpuSet
	movs r6, #0x00
	adds r5, r4, #0x0
	mov r9, r6
	ldr r0, _0801E0C4 @ =0x0839EE1C
	adds r7, r0, #0x0
	mov r8, r7
_0801E054:
	ldr r0, [sp, #0x004]
	asrs r0, r6
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0801E0D0
	ldr r0, _0801E0C8 @ =0x0839EE34
	lsls r4, r6, #0x01
	adds r4, r4, r0
	ldrh r1, [r4, #0x00]
	ldr r0, _0801E0CC @ =0x0839EE40
	add r0, r9
	ldr r2, [r0, #0x00]
	movs r0, #0x00
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r5, #0x00]
	mov r2, r8
	ldr r0, [r2, #0x00]
	ldrh r2, [r4, #0x00]
	lsrs r2, r2, #0x02
	movs r3, #0x80
	lsls r3, r3, #0x13
	orrs r2, r3
	bl CpuSet
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	b _0801E0D2
_0801E090: .4byte 0x03000D48
_0801E094: .4byte 0x080008B8
_0801E098: .4byte 0x08000850
_0801E09C: .4byte 0x080008F0
_0801E0A0: .4byte 0x080008B8
_0801E0A4: .4byte 0x08000914
_0801E0A8: .4byte 0x080008F0
_0801E0AC: .4byte 0x081E256C
_0801E0B0: .4byte 0x001FFFFF
_0801E0B4: .4byte 0x03000D4C
_0801E0B8: .4byte 0x03000D50
_0801E0BC: .4byte 0x03000D58
_0801E0C0: .4byte 0x05000006
_0801E0C4: .4byte 0x0839EE1C
_0801E0C8: .4byte 0x0839EE34
_0801E0CC: .4byte 0x0839EE40
_0801E0D0:
	ldr r0, [r7, #0x00]
_0801E0D2:
	str r0, [r5, #0x00]
	mov r2, r9
	adds r2, #0x04
	adds r4, r6, #0x1
	ldr r0, [sp, #0x004]
	asrs r0, r4
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0801E120
	ldr r0, _0801E118 @ =0x0839EE34
	lsls r4, r4, #0x01
	adds r4, r4, r0
	ldrh r1, [r4, #0x00]
	ldr r0, _0801E11C @ =0x0839EE40
	adds r0, r2, r0
	ldr r2, [r0, #0x00]
	movs r0, #0x00
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r5, #0x04]
	mov r2, r8
	ldr r0, [r2, #0x04]
	ldrh r2, [r4, #0x00]
	lsrs r2, r2, #0x02
	movs r3, #0x80
	lsls r3, r3, #0x13
	orrs r2, r3
	bl CpuSet
	ldr r0, [r5, #0x04]
	adds r0, #0x01
	b _0801E122
	.byte 0x00, 0x00
_0801E118: .4byte 0x0839EE34
_0801E11C: .4byte 0x0839EE40
_0801E120:
	ldr r0, [r7, #0x04]
_0801E122:
	str r0, [r5, #0x04]
	adds r5, #0x08
	adds r7, #0x08
	movs r0, #0x08
	add r8, r0
	add r9, r0
	adds r6, #0x02
	cmp r6, #0x05
	ble _0801E054
	ldr r0, _0801E14C @ =0x03000D70
	mov r1, sp
	ldrb r1, [r1, #0x04]
	strb r1, [r0, #0x00]
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0801E14C: .4byte 0x03000D70
