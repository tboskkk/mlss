	.syntax unified
	.text

	thumb_func_start sub_80457E8
sub_80457E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	adds r4, r3, #0x0
	ldr r7, [sp, #0x018]
	ldr r0, [sp, #0x01C]
	mov r8, r0
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl get_coldef_ptr_by_xz
	adds r5, r0, #0x0
	ldrb r1, [r5, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x78
	beq _08045892
	ldr r1, [r5, #0x00]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1C
	lsls r3, r0, #0x0B
	lsrs r1, r1, #0x1F
	lsls r3, r1
	str r3, [r4, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r4, [r0, #0x00]
	movs r0, #0x40
	ands r0, r4
	ldr r2, [r5, #0x00]
	cmp r0, #0x00
	beq _08045888
	ldrb r1, [r5, #0x02]
	movs r0, #0xF0
	ands r0, r1
	lsls r4, r4, #0x1C
	cmp r0, #0x00
	bne _08045850
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1F
	lsrs r1, r4, #0x1F
	ands r0, r1
	cmp r0, #0x00
	beq _08045888
_08045850:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x1C
	lsls r0, r0, #0x0B
	lsrs r1, r2, #0x1F
	lsls r0, r1
	adds r3, r3, r0
	str r3, [r7, #0x00]
	ldr r2, [r5, #0x00]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1F
	lsrs r1, r4, #0x1F
	ands r0, r1
	cmp r0, #0x00
	bne _0804587A
	lsls r0, r2, #0x08
	lsrs r0, r0, #0x1C
	lsls r0, r0, #0x0B
	lsrs r1, r2, #0x1F
	lsls r0, r1
	adds r0, r3, r0
	b _0804587C
_0804587A:
	ldr r0, _08045884 @ =0x7FFFFFFF
_0804587C:
	mov r3, r8
	str r0, [r3, #0x00]
	b _080458A0
	.byte 0x00, 0x00
_08045884: .4byte 0x7FFFFFFF
_08045888:
	movs r0, #0x01
	negs r0, r0
	mov r1, r8
	str r0, [r1, #0x00]
	b _0804589E
_08045892:
	ldr r0, _080458AC @ =0x7FFFFFFF
	str r0, [r4, #0x00]
	movs r0, #0x01
	negs r0, r0
	mov r3, r8
	str r0, [r3, #0x00]
_0804589E:
	str r0, [r7, #0x00]
_080458A0:
	adds r0, r5, #0x0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080458AC: .4byte 0x7FFFFFFF
