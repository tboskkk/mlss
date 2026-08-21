	.syntax unified
	.text

	thumb_func_start sub_81471A0
sub_81471A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	adds r7, r0, #0x0
	mov r10, r1
	str r2, [sp, #0x020]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x58
	str r1, [sp, #0x024]
	str r0, [sp, #0x028]
	add r4, sp, #0x010
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081471E0
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	b _081471E4
_081471E0:
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
_081471E4:
	strb r0, [r4, #0x00]
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r6, [r0, #0x28]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	movs r4, #0x04
	ldsh r0, [r0, r4]
	cmp r0, #0x04
	bne _081472E2
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x04
	ldsh r0, [r0, r2]
	cmp r0, #0x04
	bne _081472E2
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	adds r3, #0x42
	adds r3, r3, r6
	mov r9, r3
	movs r4, #0x00
	ldsh r1, [r3, r4]
	lsls r2, r1, #0x03
	subs r2, r2, r1
	lsls r2, r2, #0x03
	adds r2, r2, r1
	ldr r1, [r6, #0x0C]
	adds r1, r1, r2
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r2, r2, r6
	mov r8, r2
	movs r3, #0x00
	ldsh r2, [r2, r3]
	lsls r3, r2, #0x03
	subs r3, r3, r2
	lsls r3, r3, #0x03
	adds r3, r3, r2
	ldr r2, [r6, #0x10]
	adds r2, r2, r3
	add r3, sp, #0x014
	add r4, sp, #0x018
	str r4, [sp, #0x000]
	add r4, sp, #0x01C
	str r4, [sp, #0x004]
	add r5, sp, #0x008
	movs r4, #0x00
	strb r4, [r5, #0x00]
	add r5, sp, #0x00C
	movs r4, #0x01
	strb r4, [r5, #0x00]
	bl sub_803FBA4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	beq _08147270
	b _08147424
_08147270:
	mov r0, r9
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r2, [r6, #0x0C]
	adds r2, r2, r0
	mov r3, r8
	movs r0, #0x00
	ldsh r1, [r3, r0]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r3, [r6, #0x10]
	adds r3, r3, r0
	ldr r0, [sp, #0x014]
	str r0, [sp, #0x000]
	movs r5, #0x01
	str r5, [sp, #0x004]
	str r4, [sp, #0x008]
	adds r0, r7, #0x0
	mov r1, r10
	bl sub_813A068
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	beq _081472B0
	b _08147424
_081472B0:
	mov r2, r9
	movs r3, #0x00
	ldsh r1, [r2, r3]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r1, [r6, #0x0C]
	adds r1, r1, r0
	mov r0, r8
	movs r3, #0x00
	ldsh r2, [r0, r3]
	lsls r0, r2, #0x03
	subs r0, r0, r2
	lsls r0, r0, #0x03
	adds r0, r0, r2
	ldr r2, [r6, #0x10]
	adds r2, r2, r0
	ldr r3, [sp, #0x014]
	str r5, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r0, [sp, #0x028]
	bl sub_8047F60
	b _0814738A
_081472E2:
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldr r4, _08147434 @ =0x00000242
	adds r4, r4, r6
	mov r9, r4
	movs r1, #0x00
	ldsh r2, [r4, r1]
	lsls r2, r2, #0x05
	ldr r1, [r6, #0x0C]
	adds r1, r1, r2
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r2, r2, r6
	mov r8, r2
	movs r4, #0x00
	ldsh r3, [r2, r4]
	lsls r3, r3, #0x05
	ldr r2, [r6, #0x10]
	adds r2, r2, r3
	add r3, sp, #0x014
	add r4, sp, #0x018
	str r4, [sp, #0x000]
	add r4, sp, #0x01C
	str r4, [sp, #0x004]
	add r5, sp, #0x008
	movs r4, #0x00
	strb r4, [r5, #0x00]
	add r5, sp, #0x00C
	movs r4, #0x01
	strb r4, [r5, #0x00]
	bl sub_803FBA4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _08147424
	mov r2, r9
	movs r3, #0x00
	ldsh r0, [r2, r3]
	lsls r0, r0, #0x05
	ldr r2, [r6, #0x0C]
	adds r2, r2, r0
	mov r4, r8
	movs r3, #0x00
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x05
	ldr r3, [r6, #0x10]
	adds r3, r3, r0
	ldr r0, [sp, #0x014]
	str r0, [sp, #0x000]
	movs r5, #0x01
	str r5, [sp, #0x004]
	str r1, [sp, #0x008]
	adds r0, r7, #0x0
	mov r1, r10
	bl sub_813A068
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _08147424
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x05
	ldr r1, [r6, #0x0C]
	adds r1, r1, r0
	mov r3, r8
	movs r2, #0x00
	ldsh r0, [r3, r2]
	lsls r0, r0, #0x05
	ldr r2, [r6, #0x10]
	adds r2, r2, r0
	ldr r3, [sp, #0x014]
	str r5, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r0, [sp, #0x028]
	bl sub_8047F60
_0814738A:
	movs r5, #0xA5
	lsls r5, r5, #0x02
	ldr r3, [sp, #0x028]
	adds r0, r3, r5
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x11]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r4, [sp, #0x024]
	movs r0, #0xC4
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	movs r4, #0xD1
	lsls r4, r4, #0x02
	add r4, r10
	ldr r1, [r4, #0x00]
	ldr r2, _08147438 @ =0x0000020D
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	bl sub_804776C
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	bl sub_804761C
	ldr r2, [r4, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r6, #0x00
	str r6, [sp, #0x000]
	movs r1, #0x01
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x52
	ldrh r0, [r0, #0x00]
	movs r4, #0xDD
	lsls r4, r4, #0x01
	adds r1, r1, r4
	strh r0, [r1, #0x00]
	ldr r1, [sp, #0x024]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r0, r1, r2
	strh r6, [r0, #0x00]
	ldr r0, _0814743C @ =0x08148CF9
	ldr r3, [sp, #0x020]
	str r0, [r3, #0x00]
_08147424:
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08147434: .4byte 0x00000242
_08147438: .4byte 0x0000020D
_0814743C: .4byte sub_8148CF8
