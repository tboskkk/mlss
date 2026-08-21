	.syntax unified
	.text

	thumb_func_start sub_8149660
sub_8149660:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081496C8
	adds r0, r5, #0x0
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #0x02
	bl sub_813A5C8
	adds r0, r5, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x07
	movs r2, #0x00
	movs r3, #0x01
	bl sub_813B6DC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081496C4 @ =0x0814BC1D
	b _0814977E
	.byte 0x00, 0x00
_081496C4: .4byte sub_814BC1C
_081496C8:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	mov r8, r0
	ldr r1, [r0, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r7, r1, r0
	mov r0, r8
	ldr r1, [r0, #0x10]
	ldr r0, [r5, #0x10]
	subs r6, r1, r0
	ldr r2, _08149790 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, _08149794 @ =0x2D900000
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _081496FE
	adds r0, #0xFF
_081496FE:
	asrs r4, r0, #0x08
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl __divsi3
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r7, r1, #0x05
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl __divsi3
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r6, r1, #0x05
	mov r0, r8
	ldr r4, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r4, r4, r0
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r4, r4, r1
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	movs r3, #0x28
	bl sub_813B798
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x28
	movs r3, #0x01
	bl sub_813B6DC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r3, #0x04
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xEC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r0, _08149798 @ =0x0814BB25
_0814977E:
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08149790: .4byte 0x03001038
_08149794: .4byte 0x2D900000
_08149798: .4byte sub_814BB24
