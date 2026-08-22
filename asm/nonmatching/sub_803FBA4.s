	.syntax unified
	.text

	thumb_func_start sub_803FBA4
sub_803FBA4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	adds r4, r3, #0x0
	ldr r0, [sp, #0x028]
	mov r9, r0
	ldr r7, [sp, #0x02C]
	add r0, sp, #0x030
	add r1, sp, #0x034
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x000]
	ldrb r1, [r1, #0x00]
	str r1, [sp, #0x004]
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0803FBD4
	ldr r1, _0803FC3C @ =0x00000FFF
	adds r0, r6, r1
_0803FBD4:
	lsls r0, r0, #0x04
	asrs r1, r0, #0x10
	mov r2, r8
	cmp r2, #0x00
	bge _0803FBE2
	ldr r2, _0803FC3C @ =0x00000FFF
	add r2, r8
_0803FBE2:
	lsls r2, r2, #0x04
	asrs r2, r2, #0x10
	adds r0, r5, #0x0
	bl get_coldef_ptr_by_xz
	adds r5, r0, #0x0
	ldr r1, [r5, #0x00]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1C
	lsls r0, r0, #0x0B
	lsrs r1, r1, #0x1F
	lsls r0, r1
	str r0, [r4, #0x00]
	ldrb r1, [r5, #0x02]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x00
	bne _0803FC16
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1F
	ldr r2, [sp, #0x004]
	ands r0, r2
	cmp r0, #0x00
	bne _0803FC16
	b _0803FD00
_0803FC16:
	movs r3, #0x00
	mov r10, r3
	ldr r0, _0803FC3C @ =0x00000FFF
	adds r3, r6, #0x0
	ands r3, r0
	mov r2, r8
	ands r2, r0
	ldr r1, [r5, #0x00]
	lsls r0, r1, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x08
	mov r12, r1
	cmp r0, #0x07
	bhi _0803FCB6
	lsls r0, r0, #0x02
	ldr r1, _0803FC40 @ =lbl_0803FC44
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0803FC3C: .4byte 0x00000FFF
_0803FC40: .4byte lbl_0803FC44
lbl_0803FC44:
	.4byte _0803FC64
	.4byte _0803FC70
	.4byte _0803FC7C
	.4byte _0803FC88
	.4byte _0803FC90
	.4byte _0803FC96
	.4byte _0803FCA2
	.4byte _0803FCAE
_0803FC64:
	ldr r0, [pc, #4] @ (0x803fc6c)
	cmp r2, r0
	ble.n _0803FCB6
	b.n _0803FCBC
	lsls r7, r7, #31
	movs r0, r0
_0803FC70:
	ldr r0, [pc, #4] @ (0x803fc78)
	cmp r2, r0
	bgt.n _0803FCB6
	b.n _0803FCBC
	lsls r7, r7, #31
	movs r0, r0
_0803FC7C:
	ldr r0, [pc, #4] @ (0x803fc84)
	cmp r3, r0
	bgt.n _0803FCB6
	b.n _0803FCBC
	lsls r7, r7, #31
	movs r0, r0
_0803FC88:
	ldr r0, [pc, #0] @ (0x803fc8c)
	b.n _0803FCA8
	lsls r7, r7, #31
	movs r0, r0
_0803FC90:
	cmp r3, r2
	bge.n _0803FCB6
	b.n _0803FCBC
_0803FC96:
	movs r0, #240 @ 0xf0
	lsls r0, r0, #4
	subs r0, r0, r2
	cmp r3, r0
	bge.n _0803FCB6
	b.n _0803FCBC
_0803FCA2:
	movs r0, #240 @ 0xf0
	lsls r0, r0, #4
	subs r0, r0, r2
_0803FCA8:
	cmp r3, r0
	ble.n _0803FCB6
	b.n _0803FCBC
_0803FCAE:
	cmp r3, r2
	ble.n _0803FCB6
	movs r0, #1
	mov sl, r0
_0803FCB6:
	mov r1, r10
	cmp r1, #0x00
	beq _0803FCC6
_0803FCBC:
	movs r0, #0x01
	negs r0, r0
	mov r2, r9
	str r0, [r2, #0x00]
	b _0803FD08
_0803FCC6:
	mov r3, r12
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x1C
	lsls r0, r0, #0x0B
	lsrs r1, r3, #0x1F
	lsls r0, r1
	ldr r1, [r4, #0x00]
	adds r2, r1, r0
	mov r0, r9
	str r2, [r0, #0x00]
	ldr r1, [r5, #0x00]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1F
	ldr r3, [sp, #0x004]
	ands r0, r3
	cmp r0, #0x00
	bne _0803FCF6
	lsls r0, r1, #0x08
	lsrs r0, r0, #0x1C
	lsls r0, r0, #0x0B
	lsrs r1, r1, #0x1F
	lsls r0, r1
	adds r1, r2, r0
	b _0803FCF8
_0803FCF6:
	ldr r1, _0803FCFC @ =0x7FFFFFFF
_0803FCF8:
	str r1, [r7, #0x00]
	b _0803FD0A
_0803FCFC: .4byte 0x7FFFFFFF
_0803FD00:
	movs r0, #0x01
	negs r0, r0
	mov r1, r9
	str r0, [r1, #0x00]
_0803FD08:
	str r0, [r7, #0x00]
_0803FD0A:
	ldr r2, [sp, #0x000]
	cmp r2, #0x00
	beq _0803FDA8
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x05
	beq _0803FD38
	cmp r0, #0x05
	bhi _0803FD24
	cmp r0, #0x04
	beq _0803FD2A
	b _0803FD5C
_0803FD24:
	cmp r0, #0x06
	beq _0803FD48
	b _0803FD5C
_0803FD2A:
	movs r1, #0xF0
	lsls r1, r1, #0x04
	ands r1, r6
	ldr r0, [r4, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x00]
	b _0803FD5C
_0803FD38:
	ldr r1, [r4, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r1, r1, r3
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r0, r6
	b _0803FD58
_0803FD48:
	ldr r1, [r4, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r1, r1, r0
	movs r0, #0xF0
	lsls r0, r0, #0x04
	mov r2, r8
	ands r0, r2
_0803FD58:
	subs r1, r1, r0
	str r1, [r4, #0x00]
_0803FD5C:
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x05
	beq _0803FD84
	cmp r0, #0x05
	bhi _0803FD70
	cmp r0, #0x04
	beq _0803FD76
	b _0803FDA8
_0803FD70:
	cmp r0, #0x06
	beq _0803FD94
	b _0803FDA8
_0803FD76:
	movs r1, #0xF0
	lsls r1, r1, #0x04
	ands r1, r6
	ldr r0, [r7, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x00]
	b _0803FDA8
_0803FD84:
	ldr r1, [r7, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r1, r1, r3
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r0, r6
	b _0803FDA4
_0803FD94:
	ldr r1, [r7, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r1, r1, r0
	movs r0, #0xF0
	lsls r0, r0, #0x04
	mov r2, r8
	ands r0, r2
_0803FDA4:
	subs r1, r1, r0
	str r1, [r7, #0x00]
_0803FDA8:
	adds r0, r5, #0x0
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
