	.syntax unified
	.text

	thumb_func_start sub_816B45C
sub_816B45C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	cmp r2, #0x00
	beq _0816B48C
	ldr r0, [r7, #0x1C]
	adds r0, #0x01
	str r0, [r7, #0x1C]
	cmp r0, #0x3B
	ble _0816B48C
	movs r1, #0x00
	str r1, [r7, #0x1C]
	ldr r0, [r7, #0x18]
	subs r0, #0x01
	str r0, [r7, #0x18]
	cmp r0, #0x00
	bge _0816B48C
	str r1, [r7, #0x18]
_0816B48C:
	ldr r6, _0816B510 @ =0x03001038
	ldr r4, _0816B514 @ =0x0819832C
	ldr r0, _0816B518 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r6, #0x00]
	adds r4, r2, r4
	ldr r5, _0816B51C @ =0x08198350
	subs r5, r5, r0
	adds r2, r2, r5
	ldr r0, [r7, #0x18]
	movs r1, #0x64
	bl _call_via_r2
	movs r1, #0x0A
	bl _call_via_r4
	str r0, [sp, #0x008]
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	ldr r0, [r7, #0x18]
	movs r1, #0x0A
	bl _call_via_r2
	str r0, [sp, #0x00C]
	mov r0, r8
	cmp r0, #0x00
	beq _0816B520
	movs r6, #0x00
	movs r4, #0x00
	ldr r1, [sp, #0x008]
	str r1, [r7, #0x10]
	str r1, [r7, #0x08]
	ldr r0, [r7, #0x00]
	ldr r0, [r0, #0x10]
	adds r1, #0x1B
	str r6, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x00]
	ldr r1, [r0, #0x18]
	movs r2, #0xC0
	lsls r2, r2, #0x06
	movs r3, #0x00
	bl sub_8163A64
	ldr r1, [sp, #0x00C]
	str r1, [r7, #0x14]
	str r1, [r7, #0x0C]
	ldr r0, [r7, #0x04]
	ldr r0, [r0, #0x10]
	adds r1, #0x1B
	str r4, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x04]
	ldr r1, [r0, #0x18]
	movs r2, #0xC0
	lsls r2, r2, #0x06
	movs r3, #0x00
	bl sub_8163A64
	b _0816B5A4
_0816B510: .4byte 0x03001038
_0816B514: .4byte 0x0819832C
_0816B518: .4byte 0x08198220
_0816B51C: .4byte 0x08198350
_0816B520:
	movs r6, #0x00
	adds r5, r7, #0x0
_0816B524:
	lsls r4, r6, #0x02
	ldr r0, [r5, #0x00]
	bl sub_8163A08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0816B596
	adds r0, r7, #0x0
	adds r0, #0x08
	adds r1, r0, r4
	adds r0, r4, #0x0
	add r0, sp
	adds r0, #0x08
	ldr r2, [r1, #0x00]
	ldr r0, [r0, #0x00]
	cmp r2, r0
	beq _0816B59C
	adds r0, r7, #0x0
	adds r0, #0x10
	adds r0, r0, r4
	str r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bge _0816B55C
	movs r0, #0x09
	str r0, [r1, #0x00]
_0816B55C:
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x10]
	ldr r1, [r1, #0x00]
	adds r1, #0x1B
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x06
	movs r3, #0x00
	bl sub_8163A64
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x18]
	movs r2, #0x06
	str r2, [sp, #0x000]
	add r3, sp, #0x004
	movs r2, #0x01
	strb r2, [r3, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x06
	movs r3, #0x00
	bl sub_8163978
	b _0816B59C
_0816B596:
	ldr r0, [r5, #0x00]
	bl sub_8161E38
_0816B59C:
	adds r5, #0x04
	adds r6, #0x01
	cmp r6, #0x01
	ble _0816B524
_0816B5A4:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
