	.syntax unified
	.text

	thumb_func_start sub_816B690
sub_816B690:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	mov r9, r1
	mov r0, r9
	lsrs r0, r0, #0x18
	mov r9, r0
	ldr r1, _0816B880 @ =0x03001038
	mov r8, r1
	ldr r5, _0816B884 @ =0x0819832C
	ldr r0, _0816B888 @ =0x08198220
	subs r5, r5, r0
	ldr r2, [r1, #0x00]
	adds r6, r2, r5
	ldr r4, _0816B88C @ =0x08198350
	subs r4, r4, r0
	adds r2, r2, r4
	ldr r0, [r7, #0x18]
	movs r1, #0xFA
	lsls r1, r1, #0x02
	mov r10, r1
	bl _call_via_r2
	movs r1, #0x64
	bl _call_via_r6
	str r0, [sp, #0x008]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r6, r2, r5
	adds r2, r2, r4
	ldr r0, [r7, #0x18]
	movs r1, #0x64
	bl _call_via_r2
	movs r1, #0x0A
	bl _call_via_r6
	str r0, [sp, #0x00C]
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x18]
	movs r1, #0x0A
	bl _call_via_r2
	str r0, [sp, #0x010]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r6, r2, r5
	adds r2, r2, r4
	ldr r0, [r7, #0x34]
	mov r1, r10
	bl _call_via_r2
	movs r1, #0x64
	bl _call_via_r6
	add r6, sp, #0x014
	str r0, [sp, #0x014]
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r5, r2, r5
	adds r2, r2, r4
	ldr r0, [r7, #0x34]
	movs r1, #0x64
	bl _call_via_r2
	movs r1, #0x0A
	bl _call_via_r5
	str r0, [r6, #0x04]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x34]
	movs r1, #0x0A
	bl _call_via_r2
	str r0, [r6, #0x08]
	mov r10, r6
	mov r1, r9
	cmp r1, #0x00
	bne _0816B744
	b _0816B890
_0816B744:
	ldr r1, [sp, #0x008]
	str r1, [r7, #0x28]
	str r1, [r7, #0x1C]
	ldr r0, [r7, #0x00]
	ldr r0, [r0, #0x10]
	adds r1, #0x11
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x00]
	ldr r1, [r0, #0x18]
	movs r2, #0xC0
	lsls r2, r2, #0x05
	movs r3, #0x00
	bl sub_8163A64
	ldr r1, [sp, #0x014]
	str r1, [r7, #0x44]
	str r1, [r7, #0x38]
	ldr r0, [r7, #0x0C]
	ldr r0, [r0, #0x10]
	adds r1, #0x11
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x0C]
	ldr r1, [r0, #0x18]
	movs r2, #0xC0
	lsls r2, r2, #0x05
	movs r3, #0x00
	bl sub_8163A64
	adds r5, r7, #0x0
	adds r5, #0x10
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0x024]
	adds r1, r7, #0x0
	adds r1, #0x48
	str r1, [sp, #0x028]
	movs r2, #0x3C
	adds r2, r2, r7
	mov r10, r2
	adds r4, r7, #0x4
	add r0, sp, #0x00C
	mov r9, r0
	movs r1, #0x2C
	adds r1, r1, r7
	mov r8, r1
	adds r6, r7, #0x0
	adds r6, #0x20
	movs r2, #0x01
	str r2, [sp, #0x020]
_0816B7B6:
	mov r0, r9
	ldr r1, [r0, #0x00]
	mov r2, r8
	str r1, [r2, #0x00]
	str r1, [r6, #0x00]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x10]
	adds r1, #0x11
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x18]
	movs r2, #0xC0
	lsls r2, r2, #0x05
	movs r3, #0x00
	bl sub_8163A64
	ldr r0, [sp, #0x024]
	ldr r1, [r0, #0x00]
	ldr r2, [sp, #0x028]
	str r1, [r2, #0x00]
	mov r0, r10
	str r1, [r0, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x10]
	adds r1, #0x11
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x18]
	movs r2, #0xC0
	lsls r2, r2, #0x05
	movs r3, #0x00
	bl sub_8163A64
	mov r0, r9
	ldr r1, [r0, #0x04]
	mov r2, r8
	str r1, [r2, #0x04]
	str r1, [r6, #0x04]
	ldr r0, [r4, #0x04]
	ldr r0, [r0, #0x10]
	adds r1, #0x11
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x04]
	ldr r1, [r0, #0x18]
	movs r2, #0xC0
	lsls r2, r2, #0x05
	movs r3, #0x00
	bl sub_8163A64
	ldr r0, [sp, #0x024]
	ldr r1, [r0, #0x04]
	ldr r2, [sp, #0x028]
	str r1, [r2, #0x04]
	mov r0, r10
	str r1, [r0, #0x04]
	ldr r0, [r5, #0x04]
	ldr r0, [r0, #0x10]
	adds r1, #0x11
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x04]
	ldr r1, [r0, #0x18]
	movs r2, #0xC0
	lsls r2, r2, #0x05
	movs r3, #0x00
	bl sub_8163A64
	adds r5, #0x08
	ldr r0, [sp, #0x024]
	adds r0, #0x08
	str r0, [sp, #0x024]
	ldr r1, [sp, #0x028]
	adds r1, #0x08
	str r1, [sp, #0x028]
	movs r2, #0x08
	add r10, r2
	adds r4, #0x08
	add r9, r2
	add r8, r2
	adds r6, #0x08
	ldr r0, [sp, #0x020]
	subs r0, #0x02
	str r0, [sp, #0x020]
	cmp r0, #0x00
	bge _0816B7B6
	b _0816B99E
_0816B880: .4byte 0x03001038
_0816B884: .4byte 0x0819832C
_0816B888: .4byte 0x08198220
_0816B88C: .4byte 0x08198350
_0816B890:
	movs r1, #0x00
	mov r8, r1
	adds r5, r7, #0x0
	adds r5, #0x0C
	adds r4, r7, #0x0
	movs r6, #0x00
	movs r2, #0x02
	str r2, [sp, #0x020]
_0816B8A0:
	ldr r0, [r4, #0x00]
	bl sub_8163A08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0816B912
	adds r0, r7, #0x0
	adds r0, #0x1C
	adds r1, r0, r6
	mov r0, sp
	adds r0, r0, r6
	adds r0, #0x08
	ldr r2, [r1, #0x00]
	ldr r0, [r0, #0x00]
	cmp r2, r0
	beq _0816B918
	adds r0, r7, #0x0
	adds r0, #0x28
	adds r0, r0, r6
	str r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x09
	ble _0816B8D6
	mov r0, r8
	str r0, [r1, #0x00]
_0816B8D6:
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x10]
	ldr r1, [r1, #0x00]
	adds r1, #0x11
	mov r2, r8
	str r2, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x04
	movs r3, #0x00
	bl sub_8163A64
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x18]
	movs r2, #0x06
	str r2, [sp, #0x000]
	add r3, sp, #0x004
	movs r2, #0x01
	strb r2, [r3, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x05
	movs r3, #0x00
	bl sub_8163978
	b _0816B918
_0816B912:
	ldr r0, [r4, #0x00]
	bl sub_8161E38
_0816B918:
	ldr r0, [r5, #0x00]
	bl sub_8163A08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0816B988
	adds r0, r7, #0x0
	adds r0, #0x38
	adds r1, r0, r6
	mov r2, r10
	adds r0, r2, r6
	ldr r2, [r1, #0x00]
	ldr r0, [r0, #0x00]
	cmp r2, r0
	beq _0816B98E
	adds r0, r7, #0x0
	adds r0, #0x44
	adds r0, r0, r6
	str r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x09
	ble _0816B94C
	mov r0, r8
	str r0, [r1, #0x00]
_0816B94C:
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x10]
	ldr r1, [r1, #0x00]
	adds r1, #0x11
	mov r2, r8
	str r2, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x04
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
	lsls r2, r2, #0x05
	movs r3, #0x00
	bl sub_8163978
	b _0816B98E
_0816B988:
	ldr r0, [r5, #0x00]
	bl sub_8161E38
_0816B98E:
	adds r5, #0x04
	adds r4, #0x04
	adds r6, #0x04
	ldr r0, [sp, #0x020]
	subs r0, #0x01
	str r0, [sp, #0x020]
	cmp r0, #0x00
	bge _0816B8A0
_0816B99E:
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
