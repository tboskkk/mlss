	.syntax unified
	.text

	thumb_func_start sub_8149EF4
sub_8149EF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	str r0, [sp, #0x020]
	adds r7, r1, #0x0
	str r2, [sp, #0x024]
	adds r0, r7, #0x0
	adds r0, #0x58
	str r0, [sp, #0x028]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x02C]
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	mov r8, r0
	ldr r0, [sp, #0x020]
	add r1, sp, #0x010
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149F3A
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r3, [sp, #0x020]
	adds r0, r0, r3
	b _08149F4C
_08149F3A:
	ldr r4, [sp, #0x020]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	adds r0, r0, r4
_08149F4C:
	ldr r5, [r0, #0x28]
	ldr r1, [r5, #0x0C]
	ldr r0, [r7, #0x0C]
	subs r1, r1, r0
	str r1, [sp, #0x030]
	ldr r1, [r5, #0x10]
	ldr r0, [r7, #0x10]
	subs r1, r1, r0
	mov r10, r1
	ldr r4, _0814A03C @ =0x0819832C
	ldr r0, _0814A040 @ =0x08198220
	subs r4, r4, r0
	ldr r3, _0814A044 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r6, r2, r4
	ldr r1, [sp, #0x030]
	adds r0, r1, #0x0
	muls r0, r1
	mov r3, r10
	mov r1, r10
	muls r1, r3
	adds r0, r0, r1
	bl _call_via_r2
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r6
	mov r9, r0
	mov r1, r8
	ldrh r0, [r1, #0x0A]
	lsls r0, r0, #0x08
	str r0, [sp, #0x038]
	ldr r2, [r5, #0x14]
	adds r2, r2, r0
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	subs r2, r2, r0
	str r2, [sp, #0x034]
	ldr r2, [sp, #0x028]
	movs r3, #0xBC
	lsls r3, r3, #0x01
	adds r2, r2, r3
	mov r8, r2
	ldrh r0, [r2, #0x00]
	ldr r1, [sp, #0x02C]
	adds r0, r0, r1
	adds r0, #0x28
	ldrb r6, [r0, #0x00]
	ldr r3, _0814A044 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	ldr r0, [sp, #0x030]
	mov r1, r9
	bl _call_via_r2
	adds r1, r0, #0x0
	muls r1, r6
	str r1, [sp, #0x030]
	ldr r3, _0814A044 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r0, r10
	mov r1, r9
	bl _call_via_r2
	adds r4, r0, #0x0
	muls r4, r6
	mov r10, r4
	mov r1, r8
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x02C]
	adds r0, r0, r2
	ldrh r6, [r0, #0x20]
	ldr r3, [sp, #0x020]
	movs r4, #0xC1
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x03C]
	add r4, sp, #0x018
	str r4, [sp, #0x000]
	add r4, sp, #0x01C
	str r4, [sp, #0x004]
	add r4, sp, #0x008
	movs r3, #0x00
	mov r9, r3
	strb r3, [r4, #0x00]
	add r4, sp, #0x00C
	movs r3, #0x01
	mov r8, r3
	strb r3, [r4, #0x00]
	ldr r3, [sp, #0x03C]
	bl sub_803FBA4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0814A048
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	ldr r4, [sp, #0x038]
	adds r3, r3, r4
	str r6, [sp, #0x000]
	add r0, sp, #0x004
	mov r4, r9
	strb r4, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_813A44C
	b _0814A05C
	.byte 0x00, 0x00
_0814A03C: .4byte 0x0819832C
_0814A040: .4byte 0x08198220
_0814A044: .4byte 0x03001038
_0814A048:
	str r6, [sp, #0x000]
	add r0, sp, #0x004
	mov r1, r8
	strb r1, [r0, #0x00]
	adds r0, r7, #0x0
	ldr r1, [sp, #0x030]
	mov r2, r10
	ldr r3, [sp, #0x034]
	bl sub_813A44C
_0814A05C:
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r1, [r0, #0x00]
	ldr r2, [sp, #0x028]
	subs r3, #0x9C
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	ldr r4, [sp, #0x02C]
	adds r0, r0, r4
	ldrb r0, [r0, #0x1C]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, _0814A0A0 @ =0x0814B805
	ldr r1, [sp, #0x024]
	str r0, [r1, #0x00]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814A0A0: .4byte sub_814B804
