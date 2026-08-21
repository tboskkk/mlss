	.syntax unified
	.text

	thumb_func_start sub_811E414
sub_811E414:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	mov r8, r0
	adds r3, r1, #0x0
	movs r0, #0xDF
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0811E432
	b _0811E53C
_0811E432:
	cmp r0, #0xFF
	bne _0811E438
	b _0811E53C
_0811E438:
	movs r0, #0x00
	mov r9, r0
	ldr r1, _0811E48C @ =0x000001C1
	add r1, r8
	str r1, [sp, #0x020]
_0811E442:
	ldr r0, [sp, #0x020]
	add r0, r9
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0811E462
	mov r2, r9
	lsls r0, r2, #0x02
	movs r1, #0x96
	lsls r1, r1, #0x02
	add r1, r8
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r2, #0x01
	str r2, [sp, #0x02C]
	cmp r0, #0x00
	beq _0811E534
_0811E462:
	mov r6, r9
	cmp r6, #0x00
	beq _0811E490
	ldr r1, [sp, #0x020]
	ldrb r0, [r1, #0x00]
	lsrs r0, r0, #0x03
	lsls r0, r0, #0x01
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r1, r2, #0x0
	subs r1, r1, r0
	movs r0, #0xE1
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x03
	lsls r0, r0, #0x01
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	b _0811E4A4
_0811E48C: .4byte 0x000001C1
_0811E490:
	ldr r6, [sp, #0x020]
	ldrb r1, [r6, #0x00]
	lsrs r1, r1, #0x03
	lsls r1, r1, #0x01
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0811E4A4:
	str r0, [sp, #0x01C]
	movs r7, #0x00
	mov r6, r9
	adds r6, #0x01
	str r6, [sp, #0x02C]
	ldr r0, _0811E550 @ =0x000001C1
	add r0, r8
	add r0, r9
	str r0, [sp, #0x028]
_0811E4B6:
	movs r5, #0x00
	ldr r1, [sp, #0x028]
	ldrb r0, [r1, #0x00]
	lsrs r0, r0, #0x03
	adds r2, r7, #0x1
	str r2, [sp, #0x030]
	cmp r5, r0
	bge _0811E52E
	ldr r0, _0811E554 @ =0x000001C3
	add r0, r8
	add r0, r9
	str r0, [sp, #0x024]
	movs r4, #0x00
	ldr r0, _0811E550 @ =0x000001C1
	add r0, r8
	add r0, r9
	str r0, [sp, #0x034]
	ldr r0, _0811E558 @ =0x000001C5
	add r0, r8
	add r0, r9
	mov r10, r0
_0811E4E0:
	lsls r1, r5, #0x03
	ldr r6, [sp, #0x024]
	ldrb r6, [r6, #0x00]
	adds r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x03
	mov r0, r10
	ldrb r0, [r0, #0x00]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r6, [sp, #0x034]
	ldrb r0, [r6, #0x00]
	lsrs r0, r0, #0x03
	muls r0, r7
	ldr r6, [sp, #0x01C]
	adds r0, r6, r0
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r4, [sp, #0x014]
	str r4, [sp, #0x018]
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_8122A20
	adds r3, r0, #0x0
	adds r5, #0x01
	ldr r1, [sp, #0x034]
	ldrb r0, [r1, #0x00]
	lsrs r0, r0, #0x03
	cmp r5, r0
	blt _0811E4E0
_0811E52E:
	ldr r7, [sp, #0x030]
	cmp r7, #0x01
	ble _0811E4B6
_0811E534:
	ldr r2, [sp, #0x02C]
	mov r9, r2
	cmp r2, #0x01
	ble _0811E442
_0811E53C:
	adds r0, r3, #0x0
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0811E550: .4byte 0x000001C1
_0811E554: .4byte 0x000001C3
_0811E558: .4byte 0x000001C5
