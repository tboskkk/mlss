	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F1EE8
sub_80F1EE8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r7, r0, #0x0
	ldr r2, _080F1F68 @ =0x082001C0
	movs r0, #0x01
	movs r1, #0x40
	bl alloc_heap_8018CEC
	str r0, [r7, #0x00]
	adds r5, r0, #0x0
	ldr r0, _080F1F6C @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r2, #0x40
	bl _call_via_r3
	ldr r1, _080F1F70 @ =0x00008001
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x0F
	str r0, [sp, #0x008]
	movs r0, #0x07
	movs r2, #0x01
	movs r3, #0x00
	bl sub_8021574
	ldr r4, _080F1F74 @ =0x00008004
	adds r0, r4, #0x0
	bl sub_8082AAC
	adds r0, r4, #0x0
	bl sub_8082A6C
	movs r6, #0x04
	movs r4, #0x01
	negs r4, r4
_080F1F36:
	movs r0, #0xFF
	strb r0, [r5, #0x0C]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r5, #0x00]
	lsls r0, r6, #0x10
	ldr r1, _080F1F78 @ =0xFFFF0000
	adds r0, r0, r1
	adds r5, #0x10
	lsrs r6, r0, #0x10
	cmp r0, #0x00
	bgt _080F1F36
	adds r0, r7, #0x0
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F1F68: .4byte 0x082001C0
_080F1F6C: .4byte 0x03001034
_080F1F70: .4byte 0x00008001
_080F1F74: .4byte 0x00008004
_080F1F78: .4byte 0xFFFF0000
	thumb_func_start sub_80F1F7C
sub_80F1F7C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	ldr r4, [sp, #0x030]
	ldr r5, [sp, #0x034]
	ldr r6, [sp, #0x038]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x004]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x008]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r10, r4
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r9, r5
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	str r6, [sp, #0x00C]
	movs r7, #0x00
	ldr r4, [r0, #0x00]
_080F1FB6:
	ldrb r6, [r4, #0x0F]
	cmp r6, #0x00
	bne _080F204C
	ldr r5, [r4, #0x00]
	ldrh r1, [r5, #0x16]
	ldrb r0, [r5, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r1, r0
	ldr r2, _080F2048 @ =0x00008004
	cmp r1, r2
	beq _080F1FDC
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	bl sub_807FB78
_080F1FDC:
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	mov r1, r8
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_801E150
	mov r0, sp
	ldrb r0, [r0, #0x04]
	strb r0, [r4, #0x0C]
	mov r1, sp
	ldrb r1, [r1, #0x08]
	strb r1, [r4, #0x0E]
	mov r2, r10
	strh r2, [r4, #0x04]
	mov r0, r9
	strh r0, [r4, #0x06]
	strh r6, [r4, #0x08]
	strh r6, [r4, #0x0A]
	mov r1, sp
	ldrb r1, [r1, #0x0C]
	strb r1, [r4, #0x0D]
	movs r0, #0x01
	strb r0, [r4, #0x0F]
	ldrb r1, [r5, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r2, #0x31
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	adds r2, #0x24
	adds r1, r2, #0x0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	adds r2, #0x09
	adds r1, r2, #0x0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r5, #0x1F]
	strh r6, [r5, #0x0E]
	adds r0, r5, #0x0
	bl sub_807BC90
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	b _080F2060
_080F2048: .4byte 0x00008004
_080F204C:
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r0, r2
	adds r4, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080F1FB6
	movs r0, #0xFF
_080F2060:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start init_ybai_process_80F2070
init_ybai_process_80F2070: @ 080F2070
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _080F20FC @ =0x08CDC318
	str r0, [r5, #0x18]
	movs r4, #0xBD
	lsls r4, r4, #0x05
	ldr r2, _080F2100 @ =0x082001C8
	movs r0, #0x01
	adds r1, r4, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r5, #0x2C]
	ldr r0, _080F2104 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r0, _080F2108 @ =0x03000FC0
	ldr r1, [r0, #0x00]
	ldr r0, _080F210C @ =0x0000055C
	adds r2, r1, r0
	ldr r0, _080F2110 @ =0x083B9704
	ldr r0, [r0, #0x04]
	str r0, [r2, #0x00]
	movs r0, #0xAC
	lsls r0, r0, #0x03
	adds r2, r1, r0
	ldr r0, _080F2114 @ =0x083B98C4
	ldr r0, [r0, #0x04]
	str r0, [r2, #0x00]
	ldr r0, _080F2118 @ =0x00000564
	adds r2, r1, r0
	ldr r0, _080F211C @ =0x083B9D00
	ldr r0, [r0, #0x04]
	str r0, [r2, #0x00]
	movs r0, #0xAD
	lsls r0, r0, #0x03
	adds r2, r1, r0
	ldr r0, _080F2120 @ =0x083BA13C
	ldr r0, [r0, #0x04]
	str r0, [r2, #0x00]
	ldr r0, _080F2124 @ =0x0000056C
	adds r1, r1, r0
	ldr r0, _080F2128 @ =0x083BA4A8
	ldr r0, [r0, #0x04]
	str r0, [r1, #0x00]
	movs r1, #0x02
	adds r2, r5, #0x0
	adds r2, #0x20
	movs r3, #0x00
_080F20E0:
	stm r2!, {r3}
	lsls r0, r1, #0x10
	ldr r1, _080F212C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	cmp r0, #0x00
	bgt _080F20E0
	movs r0, #0x00
	str r0, [r5, #0x30]
	str r0, [r5, #0x28]
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_080F20FC: .4byte 0x08CDC318
_080F2100: .4byte 0x082001C8
_080F2104: .4byte 0x03001034
_080F2108: .4byte 0x03000FC0
_080F210C: .4byte 0x0000055C
_080F2110: .4byte 0x083B9704
_080F2114: .4byte 0x083B98C4
_080F2118: .4byte 0x00000564
_080F211C: .4byte 0x083B9D00
_080F2120: .4byte 0x083BA13C
_080F2124: .4byte 0x0000056C
_080F2128: .4byte 0x083BA4A8
_080F212C: .4byte 0xFFFF0000
	thumb_func_start sub_80F2130
sub_80F2130:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	mov r8, r1
	ldr r0, _080F21D0 @ =0x08CDC318
	str r0, [r5, #0x18]
	movs r6, #0x02
	adds r4, r5, #0x0
	adds r4, #0x20
_080F2144:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080F2150
	movs r1, #0x03
	bl sub_80E5968
_080F2150:
	movs r7, #0x00
	stm r4!, {r7}
	lsls r0, r6, #0x10
	ldr r1, _080F21D4 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	cmp r0, #0x00
	bgt _080F2144
	ldr r4, [r5, #0x28]
	cmp r4, #0x00
	beq _080F2174
	ldr r0, [r4, #0x00]
	bl free_heap_memory_8018C68
	adds r0, r4, #0x0
	bl free_heap_8018DA8
	str r7, [r5, #0x28]
_080F2174:
	ldr r0, [r5, #0x2C]
	cmp r0, #0x00
	beq _080F2180
	bl free_heap_memory_8018C68
	str r7, [r5, #0x2C]
_080F2180:
	str r7, [r5, #0x30]
	ldr r0, _080F21D8 @ =0x03000FC0
	ldr r1, [r0, #0x00]
	ldr r0, _080F21DC @ =0x0000055C
	adds r2, r1, r0
	ldr r0, _080F21E0 @ =0x083B9704
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	movs r0, #0xAC
	lsls r0, r0, #0x03
	adds r2, r1, r0
	ldr r0, _080F21E4 @ =0x083B98C4
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	ldr r0, _080F21E8 @ =0x00000564
	adds r2, r1, r0
	ldr r0, _080F21EC @ =0x083B9D00
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	movs r0, #0xAD
	lsls r0, r0, #0x03
	adds r2, r1, r0
	ldr r0, _080F21F0 @ =0x083BA13C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	ldr r0, _080F21F4 @ =0x0000056C
	adds r1, r1, r0
	ldr r0, _080F21F8 @ =0x083BA4A8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	mov r1, r8
	bl process_remove
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F21D0: .4byte 0x08CDC318
_080F21D4: .4byte 0xFFFF0000
_080F21D8: .4byte 0x03000FC0
_080F21DC: .4byte 0x0000055C
_080F21E0: .4byte 0x083B9704
_080F21E4: .4byte 0x083B98C4
_080F21E8: .4byte 0x00000564
_080F21EC: .4byte 0x083B9D00
_080F21F0: .4byte 0x083BA13C
_080F21F4: .4byte 0x0000056C
_080F21F8: .4byte 0x083BA4A8
	thumb_func_start ybai_update
ybai_update: @ 080F21FC
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	ldr r4, [r7, #0x2C]
	ldr r0, _080F2288 @ =0x0000179C
	adds r5, r4, r0
	adds r0, r7, #0x0
	bl sub_80F2618
	movs r0, #0x00
	strb r0, [r5, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	ldr r0, _080F228C @ =0x00000C14
	ands r0, r1
	cmp r0, #0x00
	bne _080F222E
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl ybai_script_update_80F8ACC
_080F222E:
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r4, r4, r1
	ldr r2, [r7, #0x2C]
	movs r3, #0xE0
	lsls r3, r3, #0x03
	adds r3, r3, r2
	mov r8, r3
	cmp r4, r8
	beq _080F230A
	subs r1, r3, r4
	ldr r0, _080F2290 @ =0x000001FF
	ands r1, r0
	cmp r1, #0x00
	beq _080F229C
	subs r0, #0xFE
	cmp r1, r0
	bge _080F229C
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	ldr r3, _080F2294 @ =0x00001E34
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080F2280
	ldr r0, _080F2298 @ =0x0000177C
	adds r1, r2, r0
	adds r0, r4, #0x0
	adds r0, #0xFD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl ybai_script_update_80F8ACC
_080F2280:
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r4, r4, r1
	b _080F2300
_080F2288: .4byte 0x0000179C
_080F228C: .4byte 0x00000C14
_080F2290: .4byte 0x000001FF
_080F2294: .4byte 0x00001E34
_080F2298: .4byte 0x0000177C
_080F229C:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r0, [r0, #0x00]
	ldr r2, _080F2358 @ =0x00001E34
	adds r6, r2, #0x0
	ands r0, r6
	cmp r0, #0x00
	bne _080F22C6
	ldr r1, [r7, #0x2C]
	ldr r3, _080F235C @ =0x0000177C
	adds r1, r1, r3
	adds r0, r4, #0x0
	adds r0, #0xFD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl ybai_script_update_80F8ACC
_080F22C6:
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	ands r0, r6
	cmp r0, #0x00
	bne _080F22FA
	ldr r1, [r7, #0x2C]
	ldr r3, _080F235C @ =0x0000177C
	adds r1, r1, r3
	ldr r3, _080F2360 @ =0x000001FD
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r1, r2, #0x0
	bl ybai_script_update_80F8ACC
_080F22FA:
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r4, r0
_080F2300:
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	cmp r4, r8
	bne _080F229C
_080F230A:
	ldr r2, [r7, #0x2C]
	movs r1, #0xB8
	lsls r1, r1, #0x05
	adds r1, r1, r2
	mov r8, r1
	cmp r4, r8
	beq _080F23DE
	subs r1, r1, r4
	ldr r0, _080F2364 @ =0x000001FF
	ands r1, r0
	cmp r1, #0x00
	beq _080F2370
	subs r0, #0xFE
	cmp r1, r0
	bge _080F2370
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	ldr r3, _080F2368 @ =0x00000436
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080F2350
	ldr r0, _080F236C @ =0x0000178C
	adds r1, r2, r0
	adds r0, r4, #0x0
	adds r0, #0xFD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl ybai_script_update_80F8ACC
_080F2350:
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r4, r4, r1
	b _080F23D4
_080F2358: .4byte 0x00001E34
_080F235C: .4byte 0x0000177C
_080F2360: .4byte 0x000001FD
_080F2364: .4byte 0x000001FF
_080F2368: .4byte 0x00000436
_080F236C: .4byte 0x0000178C
_080F2370:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r0, [r0, #0x00]
	ldr r2, _080F2428 @ =0x00000436
	adds r6, r2, #0x0
	ands r0, r6
	cmp r0, #0x00
	bne _080F239A
	ldr r1, [r7, #0x2C]
	ldr r3, _080F242C @ =0x0000178C
	adds r1, r1, r3
	adds r0, r4, #0x0
	adds r0, #0xFD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl ybai_script_update_80F8ACC
_080F239A:
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	ands r0, r6
	cmp r0, #0x00
	bne _080F23CE
	ldr r1, [r7, #0x2C]
	ldr r3, _080F242C @ =0x0000178C
	adds r1, r1, r3
	ldr r3, _080F2430 @ =0x000001FD
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r1, r2, #0x0
	bl ybai_script_update_80F8ACC
_080F23CE:
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r4, r0
_080F23D4:
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	cmp r4, r8
	bne _080F2370
_080F23DE:
	adds r0, r7, #0x0
	bl sub_80F2984
	ldr r1, [r7, #0x30]
	ldr r0, [r1, #0x04]
	movs r2, #0xD9
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080F2406
	adds r0, r1, #0x0
	bl sub_80E635C
	ldr r1, [r7, #0x30]
	ldr r1, [r1, #0x04]
	movs r3, #0xD9
	lsls r3, r3, #0x01
	adds r1, r1, r3
	strb r0, [r1, #0x00]
_080F2406:
	movs r0, #0x00
	mov r9, r0
	ldr r0, [r7, #0x28]
	ldr r6, [r0, #0x00]
_080F240E:
	mov r1, r9
	lsls r0, r1, #0x18
	ldr r4, [r7, #0x28]
	lsrs r2, r0, #0x14
	ldr r1, [r4, #0x00]
	adds r3, r1, r2
	ldrb r1, [r3, #0x0F]
	mov r8, r0
	cmp r1, #0x00
	bne _080F2434
	movs r0, #0x00
	b _080F2458
	.byte 0x00, 0x00
_080F2428: .4byte 0x00000436
_080F242C: .4byte 0x0000178C
_080F2430: .4byte 0x000001FD
_080F2434:
	ldrb r0, [r3, #0x0D]
	cmp r0, #0x00
	beq _080F2456
	subs r0, #0x01
	strb r0, [r3, #0x0D]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _080F2456
	ldr r4, [r4, #0x00]
	adds r4, r4, r2
	ldr r0, [r4, #0x00]
	bl sub_807FB64
	strb r5, [r4, #0x0F]
	movs r0, #0x00
	b _080F2458
_080F2456:
	movs r0, #0x01
_080F2458:
	cmp r0, #0x00
	beq _080F24DA
	ldrb r0, [r6, #0x0E]
	cmp r0, #0x00
	beq _080F24B6
	ldrb r1, [r6, #0x0C]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	add r2, sp, #0x004
	add r3, sp, #0x008
	bl sub_80F7B1C
	ldrb r0, [r6, #0x0C]
	cmp r0, #0x07
	bhi _080F2490
	ldr r0, _080F248C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldrb r0, [r6, #0x0C]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	b _080F24A2
	.byte 0x00, 0x00
_080F248C: .4byte 0x03000FD8
_080F2490:
	ldr r2, _080F2514 @ =0x03000FDC
	ldrb r1, [r6, #0x0C]
	movs r0, #0xD0
	muls r0, r1
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r0, r2
_080F24A2:
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	ldr r0, [sp, #0x008]
	subs r0, r0, r1
	str r0, [sp, #0x008]
	ldr r0, [sp, #0x004]
	strh r0, [r6, #0x08]
	ldr r0, [sp, #0x008]
	strh r0, [r6, #0x0A]
_080F24B6:
	ldr r0, [r7, #0x28]
	mov r3, r8
	lsrs r2, r3, #0x14
	ldr r1, [r0, #0x00]
	adds r1, r1, r2
	ldr r3, [r1, #0x00]
	ldrh r0, [r1, #0x08]
	ldrh r2, [r1, #0x04]
	adds r0, r0, r2
	strh r0, [r3, #0x00]
	ldrh r2, [r1, #0x0A]
	ldrh r1, [r1, #0x06]
	adds r2, r2, r1
	strh r2, [r3, #0x02]
	ldr r1, _080F2518 @ =0x00007FFF
	adds r0, r1, #0x0
	subs r0, r0, r2
	strh r0, [r3, #0x0E]
_080F24DA:
	mov r2, r9
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x09
	adds r0, r0, r3
	adds r6, #0x10
	lsrs r1, r0, #0x10
	mov r9, r1
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080F240E
	ldr r1, [r7, #0x2C]
	ldr r2, _080F251C @ =0x00001788
	adds r3, r1, r2
	ldr r0, _080F2520 @ =0x00001798
	adds r1, r1, r0
	ldr r2, [r1, #0x00]
	ldr r0, [r3, #0x00]
	bics r0, r2
	str r0, [r3, #0x00]
	movs r0, #0x00
	str r0, [r1, #0x00]
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F2514: .4byte 0x03000FDC
_080F2518: .4byte 0x00007FFF
_080F251C: .4byte 0x00001788
_080F2520: .4byte 0x00001798
	thumb_func_start sub_80F2524
sub_80F2524:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r0, r7, #0x08
	ldr r1, [r5, #0x2C]
	adds r3, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r2, [sp, #0x004]
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrh r6, [r0, #0x00]
	cmp r6, #0x00
	beq _080F25FC
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	bne _080F25B8
	ldr r0, [r4, #0x00]
	mov r10, r0
	ldr r1, [r4, #0x04]
	mov r8, r1
	adds r2, #0x04
	adds r0, r3, r2
	ldrb r0, [r0, #0x00]
	mov r9, r0
	movs r0, #0xD6
	lsls r0, r0, #0x01
	adds r1, r3, r0
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r2, #0x0C
	adds r1, r3, r2
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	movs r0, #0xFA
	lsls r0, r0, #0x01
	adds r1, r3, r0
	subs r2, #0x18
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	movs r0, #0xFC
	lsls r0, r0, #0x01
	adds r1, r3, r0
	adds r2, #0x04
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	movs r1, #0xD3
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	adds r2, #0x60
	adds r0, r3, r2
	strb r1, [r0, #0x00]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r3, r1
	subs r2, #0x48
	adds r1, r3, r2
	movs r2, #0x20
	bl CpuSet
	b _080F25CE
_080F25B8:
	mov r10, r0
	ldr r0, [r4, #0x0C]
	mov r8, r0
	ldr r1, _080F25F8 @ =0x000001A5
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	mov r9, r0
	movs r2, #0xD1
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrh r6, [r0, #0x00]
_080F25CE:
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x2C]
	adds r0, r5, #0x0
	mov r2, sp
	adds r3, r7, #0x0
	bl sub_80F8984
	mov r0, r10
	str r0, [r4, #0x08]
	mov r1, r8
	str r1, [r4, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0xA2
	strh r6, [r0, #0x00]
	adds r0, #0x03
	mov r2, r9
	strb r2, [r0, #0x00]
	b _080F2606
_080F25F8: .4byte 0x000001A5
_080F25FC:
	adds r0, r5, #0x0
	mov r2, sp
	adds r3, r7, #0x0
	bl sub_80F8984
_080F2606:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80F2618
sub_80F2618:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	movs r7, #0x01
	ldr r4, [r6, #0x2C]
_080F2624:
	adds r5, r4, #0x0
	adds r5, #0xA0
	ldrh r0, [r5, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r1, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F263E
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F8C8C
_080F263E:
	ldrh r0, [r5, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r1, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F2654
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F8C60
_080F2654:
	ldrh r1, [r5, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	mov r8, r0
	ands r0, r1
	cmp r0, #0x00
	beq _080F266A
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F2844
_080F266A:
	ldrh r1, [r5, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080F267E
	adds r0, r6, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	bl sub_80EA778
_080F267E:
	lsls r0, r7, #0x10
	ldr r1, _080F27B0 @ =0xFFFF0000
	adds r0, r0, r1
	add r4, r8
	lsrs r7, r0, #0x10
	cmp r0, #0x00
	bgt _080F2624
	movs r7, #0x00
_080F268E:
	adds r5, r4, #0x0
	adds r5, #0xA0
	ldrh r0, [r5, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r1, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F26A8
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F8C60
_080F26A8:
	ldrh r0, [r5, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F26C2
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F8B84
_080F26C2:
	ldrh r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080F26D8
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F27B4
_080F26D8:
	ldrh r0, [r5, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r1, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F26EE
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F8C8C
_080F26EE:
	ldrh r1, [r5, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	mov r8, r0
	ands r0, r1
	cmp r0, #0x00
	beq _080F2704
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F2844
_080F2704:
	ldrh r1, [r5, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080F2718
	adds r0, r6, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	bl sub_80EA778
_080F2718:
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	add r4, r8
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x05
	ble _080F268E
	movs r7, #0x00
	adds r5, r4, #0x0
	adds r5, #0xA0
_080F2730:
	ldrh r1, [r5, #0x00]
	movs r0, #0x84
	ands r0, r1
	cmp r0, #0x00
	bne _080F278E
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080F274E
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F8B34
_080F274E:
	ldrh r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080F2764
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F27B4
_080F2764:
	ldrh r0, [r5, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r1, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F277A
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F2844
_080F277A:
	ldrh r1, [r5, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080F278E
	adds r0, r6, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	bl sub_80EA778
_080F278E:
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r5, r5, r2
	adds r4, r4, r2
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0F
	ble _080F2730
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F27B0: .4byte 0xFFFF0000
	thumb_func_start sub_80F27B4
sub_80F27B4:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x07
	bhi _080F27D8
	ldr r0, _080F27D4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F27E8
	.byte 0x00, 0x00
_080F27D4: .4byte 0x03000FD8
_080F27D8:
	ldr r1, _080F2840 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F27E8:
	ldr r4, [r0, #0x08]
	cmp r4, #0x00
	beq _080F283A
	ldrb r1, [r4, #0x12]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _080F2804
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r4, #0x12]
_080F2804:
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080F283A
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080F2830
	adds r0, r3, #0x0
	adds r1, r2, #0x0
	bl sub_80F695C
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r2, #0x20
	eors r1, r2
	strh r1, [r0, #0x00]
_080F2830:
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x12]
_080F283A:
	pop {r4, r5}
	pop {r0}
	bx r0
_080F2840: .4byte 0x03000FDC
	thumb_func_start sub_80F2844
sub_80F2844:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r1, [sp, #0x000]
	ldr r0, _080F2908 @ =0x03000FD8
	mov r10, r0
	ldr r1, [r0, #0x00]
	movs r2, #0xD6
	lsls r2, r2, #0x02
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r5, [r0, r3]
	adds r2, #0x02
	adds r0, r1, r2
	movs r2, #0x00
	ldsh r3, [r0, r2]
	mov r8, r3
	ldr r3, _080F290C @ =0x0000035E
	adds r2, r1, r3
	movs r0, #0xD7
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	movs r4, #0x00
	strh r0, [r2, #0x00]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	bge _080F288A
	adds r0, #0x0F
_080F288A:
	asrs r6, r0, #0x04
	ldr r0, _080F2910 @ =0x03001038
	mov r9, r0
	adds r0, r5, #0x0
	muls r0, r5
	mov r2, r8
	mov r1, r8
	muls r1, r2
	adds r0, r0, r1
	mov r3, r9
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	adds r7, r0, #0x0
	cmp r6, r7
	bge _080F2920
	mov r1, r10
	ldr r0, [r1, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x004]
	ldr r4, _080F2914 @ =0x0819832C
	ldr r0, _080F2918 @ =0x08198220
	subs r4, r4, r0
	mov r3, r9
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	muls r0, r6
	adds r1, r7, #0x0
	bl _call_via_r2
	mov r2, r10
	ldr r1, [r2, #0x00]
	movs r3, #0xD5
	lsls r3, r3, #0x02
	adds r1, r1, r3
	movs r2, #0x00
	ldsh r5, [r1, r2]
	adds r5, r5, r0
	mov r3, r9
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r0, r8
	muls r0, r6
	adds r1, r7, #0x0
	bl _call_via_r2
	mov r2, r10
	ldr r1, [r2, #0x00]
	ldr r3, _080F291C @ =0x00000356
	adds r1, r1, r3
	movs r3, #0x00
	ldsh r2, [r1, r3]
	subs r2, r2, r0
	ldr r0, [sp, #0x004]
	adds r1, r5, #0x0
	bl sub_8082D24
	b _080F2966
	.byte 0x00, 0x00
_080F2908: .4byte 0x03000FD8
_080F290C: .4byte 0x0000035E
_080F2910: .4byte 0x03001038
_080F2914: .4byte 0x0819832C
_080F2918: .4byte 0x08198220
_080F291C: .4byte 0x00000356
_080F2920:
	mov r0, r10
	ldr r2, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r3, #0xD5
	lsls r3, r3, #0x02
	adds r1, r2, r3
	movs r3, #0x00
	ldsh r1, [r1, r3]
	adds r1, r1, r5
	ldr r3, _080F2978 @ =0x00000356
	adds r2, r2, r3
	movs r3, #0x00
	ldsh r2, [r2, r3]
	mov r3, r8
	subs r2, r2, r3
	bl sub_8082D24
	mov r1, r10
	ldr r0, [r1, #0x00]
	ldr r2, _080F297C @ =0x0000035E
	adds r1, r0, r2
	strh r4, [r1, #0x00]
	movs r3, #0xD7
	lsls r3, r3, #0x02
	adds r0, r0, r3
	strh r4, [r0, #0x00]
	ldr r2, [sp, #0x000]
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080F2980 @ =0x0000FAFF
	ands r0, r1
	strh r0, [r2, #0x00]
_080F2966:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F2978: .4byte 0x00000356
_080F297C: .4byte 0x0000035E
_080F2980: .4byte 0x0000FAFF
	thumb_func_start sub_80F2984
sub_80F2984:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r3, [r5, #0x2C]
	ldr r1, _080F29B4 @ =0x0000179D
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	cmp r0, #0x00
	bne _080F299A
	b _080F2ABE
_080F299A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080F29BC
	movs r1, #0x00
	ldr r2, _080F29B8 @ =0x0000179E
	adds r0, r3, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	asrs r0, r0, #0x0B
	lsrs r2, r0, #0x10
	b _080F29CA
	.byte 0x00, 0x00
_080F29B4: .4byte 0x0000179D
_080F29B8: .4byte 0x0000179E
_080F29BC:
	movs r2, #0x00
	ldr r1, _080F2AC4 @ =0x0000179E
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	asrs r0, r0, #0x0B
	lsrs r1, r0, #0x10
_080F29CA:
	ldr r0, _080F2AC8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0x93
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_8082D00
	ldr r2, [r5, #0x2C]
	ldr r0, _080F2AC4 @ =0x0000179E
	adds r2, r2, r0
	ldrh r4, [r2, #0x00]
	lsls r1, r4, #0x16
	lsrs r1, r1, #0x1B
	subs r1, #0x01
	movs r0, #0x1F
	ands r1, r0
	lsls r3, r1, #0x05
	ldr r0, _080F2ACC @ =0xFFFFFC1F
	ands r0, r4
	orrs r0, r3
	strh r0, [r2, #0x00]
	cmp r1, #0x00
	bne _080F2A74
	ldr r0, [r5, #0x2C]
	ldr r6, _080F2AD0 @ =0x0000179D
	adds r4, r0, r6
	ldrb r3, [r4, #0x00]
	movs r0, #0x7C
	ands r0, r3
	cmp r0, #0x00
	beq _080F2A3E
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1B
	subs r1, #0x01
	movs r0, #0x1F
	ands r1, r0
	lsls r2, r1, #0x02
	movs r0, #0x7D
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x00]
	cmp r1, #0x00
	bne _080F2A3E
	ldr r2, [r5, #0x2C]
	adds r2, r2, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_080F2A3E:
	ldr r2, [r5, #0x2C]
	ldr r1, _080F2AD4 @ =0x0000179F
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	ldr r4, _080F2AC4 @ =0x0000179E
	adds r2, r2, r4
	lsrs r1, r1, #0x1B
	lsls r1, r1, #0x05
	ldrh r3, [r2, #0x00]
	ldr r0, _080F2ACC @ =0xFFFFFC1F
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r5, #0x2C]
	adds r2, r2, r4
	ldrb r3, [r2, #0x00]
	lsls r1, r3, #0x1B
	asrs r1, r1, #0x1B
	negs r1, r1
	movs r0, #0x1F
	ands r1, r0
	movs r0, #0x20
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
_080F2A74:
	ldr r2, [r5, #0x2C]
	ldr r4, _080F2AD0 @ =0x0000179D
	adds r0, r2, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x01
	bne _080F2ABE
	ldr r3, _080F2AC4 @ =0x0000179E
	adds r0, r2, r3
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	adds r3, #0x01
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r1, r1, #0x1B
	lsrs r0, r0, #0x1B
	cmp r1, r0
	bne _080F2ABE
	ldr r0, _080F2AC8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8082D24
	ldr r1, [r5, #0x2C]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_080F2ABE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080F2AC4: .4byte 0x0000179E
_080F2AC8: .4byte 0x03000FD8
_080F2ACC: .4byte 0xFFFFFC1F
_080F2AD0: .4byte 0x0000179D
_080F2AD4: .4byte 0x0000179F
	thumb_func_start sub_80F2AD8
sub_80F2AD8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x000]
	adds r7, r1, #0x0
	ldr r1, [r7, #0x00]
	ldr r0, [r7, #0x04]
	cmp r1, r0
	beq _080F2AF4
_080F2AF0:
	movs r0, #0x00
	b _080F2C96
_080F2AF4:
	adds r3, r7, #0x0
	adds r3, #0xA0
	ldrh r1, [r3, #0x00]
	movs r0, #0x08
	ands r0, r1
	str r3, [sp, #0x008]
	cmp r0, #0x00
	beq _080F2B24
	adds r0, r7, #0x0
	adds r0, #0xA4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x08
	ldr r2, [sp, #0x000]
	ldr r1, [r2, #0x2C]
	adds r1, r1, r0
	adds r1, #0xA0
	ldrh r2, [r1, #0x00]
	ldr r0, _080F2BCC @ =0x0000FFFB
	ands r0, r2
	strh r0, [r1, #0x00]
	ldrh r1, [r3, #0x00]
	ldr r0, _080F2BD0 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r3, #0x00]
_080F2B24:
	ldrh r0, [r3, #0x00]
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080F2B32
	b _080F2C46
_080F2B32:
	ldr r0, [r7, #0x08]
	cmp r0, #0x00
	bne _080F2B3A
	b _080F2C44
_080F2B3A:
	str r0, [r7, #0x00]
	ldr r0, [r7, #0x0C]
	str r0, [r7, #0x04]
	adds r0, r7, #0x0
	adds r0, #0xA2
	str r0, [sp, #0x004]
	ldrh r0, [r0, #0x00]
	strh r0, [r3, #0x00]
	movs r1, #0xA5
	adds r1, r1, r7
	mov r10, r1
	ldrb r1, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xA4
	strb r1, [r0, #0x00]
	movs r2, #0xAC
	adds r2, r2, r7
	mov r9, r2
	ldr r0, [r2, #0x00]
	str r0, [r7, #0x10]
	movs r0, #0xB0
	adds r0, r0, r7
	mov r8, r0
	ldr r0, [r0, #0x00]
	str r0, [r7, #0x14]
	adds r1, r7, #0x0
	adds r1, #0x98
	adds r6, r7, #0x0
	adds r6, #0xF4
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r5, r7, #0x0
	adds r5, #0xF8
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x00]
	adds r4, r7, #0x0
	adds r4, #0xFC
	ldrb r0, [r4, #0x00]
	adds r1, #0x0A
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xB4
	subs r1, #0x4E
	movs r2, #0x20
	bl CpuSet
	ldr r1, [sp, #0x000]
	ldr r0, [r1, #0x2C]
	ldr r2, _080F2BD4 @ =0x0000179C
	adds r1, r0, r2
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, [sp, #0x004]
	mov r12, r2
	mov r3, r8
	cmp r0, #0x0B
	bhi _080F2C0C
	ldrb r2, [r1, #0x00]
	subs r1, r2, #0x1
	cmp r1, #0x07
	bgt _080F2BDC
	ldr r0, _080F2BD8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x08
	b _080F2BEC
_080F2BCC: .4byte 0x0000FFFB
_080F2BD0: .4byte 0x0000FFF7
_080F2BD4: .4byte 0x0000179C
_080F2BD8: .4byte 0x03000FD8
_080F2BDC:
	ldr r1, _080F2C38 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0x8C
	lsls r2, r2, #0x02
	adds r1, r0, r2
_080F2BEC:
	ldr r0, [sp, #0x008]
	ldrh r2, [r0, #0x00]
	ldr r0, [r1, #0x4C]
	cmp r0, #0x00
	beq _080F2C04
	adds r0, r1, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	beq _080F2C08
_080F2C04:
	ldr r0, _080F2C3C @ =0xFFFFFDFF
	ands r2, r0
_080F2C08:
	ldr r1, [sp, #0x008]
	strh r2, [r1, #0x00]
_080F2C0C:
	movs r0, #0x00
	str r0, [r3, #0x00]
	mov r2, r9
	str r0, [r2, #0x00]
	str r0, [r7, #0x0C]
	str r0, [r7, #0x08]
	str r0, [r5, #0x00]
	str r0, [r6, #0x00]
	movs r1, #0x00
	mov r2, r12
	strh r0, [r2, #0x00]
	strb r1, [r4, #0x00]
	mov r0, r10
	strb r1, [r0, #0x00]
	ldr r2, [sp, #0x008]
	ldrh r1, [r2, #0x00]
	ldr r0, _080F2C40 @ =0x00000E34
	ands r0, r1
	cmp r0, #0x00
	bne _080F2C94
	b _080F2AF0
	.byte 0x00, 0x00
_080F2C38: .4byte 0x03000FDC
_080F2C3C: .4byte 0xFFFFFDFF
_080F2C40: .4byte 0x00000E34
_080F2C44:
	strh r0, [r3, #0x00]
_080F2C46:
	ldr r0, [sp, #0x000]
	ldr r1, [r0, #0x2C]
	ldr r2, _080F2CA8 @ =0x0000179C
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x05
	bhi _080F2C94
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r1, r0
	movs r2, #0x06
	movs r4, #0x01
	adds r3, r0, #0x0
_080F2C66:
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080F2C94
	adds r7, r7, r3
	lsls r0, r2, #0x10
	ldr r1, _080F2CAC @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	cmp r0, #0x00
	bgt _080F2C66
	ldr r0, _080F2CB0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, _080F2CB4 @ =0x000002BF
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_080F2C94:
	movs r0, #0x01
_080F2C96:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F2CA8: .4byte 0x0000179C
_080F2CAC: .4byte 0xFFFF0000
_080F2CB0: .4byte 0x03000FD8
_080F2CB4: .4byte 0x000002BF
