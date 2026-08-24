	.syntax unified
	.text

	thumb_func_start sub_80608FC
sub_80608FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _0806091C
	b _08060A34
_0806091C:
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0xA4
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD8
	bl play_sfx_80195B4
	ldr r4, _08060A44 @ =0x03000E18
	ldr r2, _08060A48 @ =0x0820000C
	movs r0, #0x10
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_801B75C
	str r0, [r4, #0x00]
	ldr r1, _08060A4C @ =0x03000E28
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08060958
	adds r0, #0xFF
_08060958:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08060964
	adds r0, #0xFF
_08060964:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x02]
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r1, #0xA8
	adds r1, r1, r5
	mov r10, r1
	ldr r0, _08060A4C @ =0x03000E28
	adds r0, #0x06
	mov r8, r0
	movs r6, #0x00
	ldr r1, _08060A4C @ =0x03000E28
	adds r1, #0x04
	mov r12, r1
_08060980:
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bge _0806098E
	adds r1, #0xFF
_0806098E:
	ldr r7, _08060A50 @ =0x083B866C
	mov r3, r10
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x04
	adds r0, r6, r0
	adds r0, r0, r7
	asrs r1, r1, #0x08
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	mov r0, r12
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bge _080609B2
	adds r2, #0xFF
_080609B2:
	ldr r1, [r3, #0x00]
	lsls r1, r1, #0x04
	adds r1, r6, r1
	adds r0, r7, #0x2
	mov r9, r0
	add r1, r9
	asrs r0, r2, #0x08
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	adds r2, r6, #0x4
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bge _080609D8
	adds r1, #0xFF
_080609D8:
	adds r4, r2, #0x0
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x04
	adds r0, r4, r0
	adds r0, r0, r7
	asrs r1, r1, #0x08
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	mov r0, r12
	strh r1, [r0, #0x04]
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bge _080609FA
	adds r2, #0xFF
_080609FA:
	mov r1, r10
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x04
	adds r0, r4, r0
	add r0, r9
	asrs r1, r2, #0x08
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	mov r0, r8
	strh r1, [r0, #0x04]
	movs r1, #0x08
	add r8, r1
	adds r6, #0x08
	add r12, r1
	ldr r0, [sp, #0x000]
	adds r0, #0x02
	str r0, [sp, #0x000]
	cmp r0, #0x04
	ble _08060980
	ldr r1, _08060A44 @ =0x03000E18
	ldr r0, [r1, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x01
	ldr r1, _08060A4C @ =0x03000E28
	movs r2, #0x05
	bl sub_801B748
	ldr r0, _08060A54 @ =0x08060B69
	str r0, [r5, #0x4C]
_08060A34:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08060A44: .4byte 0x03000E18
_08060A48: .4byte dword_820000C @ =0x0820000C
_08060A4C: .4byte 0x03000E28
_08060A50: .4byte dword_83B866C @ =0x083B866C
_08060A54: .4byte sub_8060B68
