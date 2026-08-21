	.syntax unified
	.text

	thumb_func_start sub_80291EC
sub_80291EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	mov r8, r2
	ldr r0, [sp, #0x02C]
	ldr r2, [sp, #0x030]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r9, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r2, #0x10
	ldr r1, _08029234 @ =0x0300034C
	ldr r0, _08029238 @ =0x00000884
	adds r1, r1, r0
	lsrs r6, r2, #0x10
	orrs r2, r5
	ldr r0, [r1, #0x00]
	orrs r0, r2
	str r0, [r1, #0x00]
	cmp r7, #0x00
	bne _0802923C
	adds r0, r4, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08029246
	adds r0, r4, #0x0
	bl sub_80290E0
	b _08029246
	.byte 0x00, 0x00
_08029234: .4byte 0x0300034C
_08029238: .4byte 0x00000884
_0802923C:
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_8029120
_08029246:
	adds r0, r4, #0x0
	adds r0, #0xF4
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	movs r1, #0xC5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	lsls r0, r7, #0x18
	lsrs r1, r0, #0x18
	mov r3, r8
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	str r5, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08029272
	ldr r0, _08029298 @ =0x03000E00
	ldr r0, [r0, #0x00]
_08029272:
	str r0, [sp, #0x008]
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08029280
	ldr r0, _0802929C @ =0x03000E04
	ldr r0, [r0, #0x00]
_08029280:
	str r0, [sp, #0x00C]
	adds r0, r2, #0x0
	mov r2, r9
	bl sub_81151E4
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08029298: .4byte 0x03000E00
_0802929C: .4byte 0x03000E04
