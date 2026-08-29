	.syntax unified
	.text

	thumb_func_start sub_81490EC
sub_81490EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	str r0, [sp, #0x00C]
	mov r8, r1
	str r2, [sp, #0x010]
	mov r0, r8
	adds r0, #0x58
	str r0, [sp, #0x014]
	movs r1, #0x80
	lsls r1, r1, #0x01
	add r1, r8
	str r1, [sp, #0x018]
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r8
	ldr r4, [r0, #0x00]
	movs r0, #0xDA
	lsls r0, r0, #0x01
	add r0, r8
	ldr r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	add r1, r8
	strh r0, [r1, #0x00]
	ldrh r1, [r1, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x26]
	str r0, [sp, #0x01C]
	adds r1, r1, r4
	adds r1, #0x2E
	ldrb r1, [r1, #0x00]
	str r1, [sp, #0x020]
	ldrh r5, [r5, #0x0A]
	str r5, [sp, #0x024]
	ldr r0, [sp, #0x00C]
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149160
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r2, [sp, #0x00C]
	adds r0, r0, r2
	b _08149172
_08149160:
	ldr r3, [sp, #0x00C]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	adds r0, r0, r3
_08149172:
	ldr r0, [r0, #0x28]
	mov r9, r0
	mov r2, r9
	ldr r1, [r2, #0x0C]
	mov r3, r8
	ldr r0, [r3, #0x0C]
	subs r6, r1, r0
	ldr r1, [r2, #0x10]
	ldr r0, [r3, #0x10]
	subs r7, r1, r0
	ldr r0, _08149294 @ =0x03001038
	mov r10, r0
	ldr r5, _08149298 @ =0x0819832C
	ldr r0, _0814929C @ =0x08198220
	subs r5, r5, r0
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r5
	adds r0, r6, #0x0
	movs r1, #0x10
	bl _call_via_r2
	adds r6, r0, #0x0
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	adds r0, r7, #0x0
	movs r1, #0x10
	bl _call_via_r2
	adds r7, r0, #0x0
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	mov r2, r10
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r4, r0, #0x0
	lsls r4, r4, #0x04
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x020]
	adds r6, r0, #0x0
	muls r6, r1
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	ldr r2, [sp, #0x020]
	adds r1, r0, #0x0
	muls r1, r2
	adds r7, r1, #0x0
	ldr r3, [sp, #0x024]
	lsls r0, r3, #0x08
	mov r1, r9
	ldr r2, [r1, #0x14]
	adds r2, r2, r0
	mov r3, r8
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x18]
	adds r0, r0, r1
	subs r5, r2, r0
	ldr r0, [sp, #0x00C]
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	ldr r0, [sp, #0x01C]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	movs r4, #0x01
	strb r4, [r0, #0x00]
	mov r0, r8
	adds r1, r6, #0x0
	adds r2, r7, #0x0
	adds r3, r5, #0x0
	bl sub_813A44C
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x02
	bl sub_8047154
	movs r3, #0x85
	lsls r3, r3, #0x02
	add r3, r8
	ldrb r2, [r3, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	orrs r0, r4
	strb r0, [r3, #0x00]
	mov r2, r8
	adds r2, #0x24
	ldrb r0, [r2, #0x00]
	ands r1, r0
	strb r1, [r2, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [sp, #0x014]
	movs r3, #0xBC
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x018]
	adds r0, r0, r2
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r3, [sp, #0x014]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081492A0 @ =0x08148E99
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08149294: .4byte 0x03001038
_08149298: .4byte 0x0819832C
_0814929C: .4byte 0x08198220
_081492A0: .4byte sub_8148E98
