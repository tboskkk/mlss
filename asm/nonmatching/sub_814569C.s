	.syntax unified
	.text

	thumb_func_start sub_814569C
sub_814569C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r5, r1, #0x0
	mov r9, r2
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r4, r5, r2
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _081457AA
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r7, r5, r0
	ldrb r1, [r7, #0x00]
	movs r2, #0x08
	negs r2, r2
	mov r10, r2
	mov r0, r10
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r7, #0x00]
	ldr r2, _08145740 @ =0x03001038
	ldr r0, _08145744 @ =0x0819832C
	ldr r1, _08145748 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	add r0, sp, #0x010
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	movs r0, #0xE8
	lsls r0, r0, #0x01
	adds r6, r5, r0
	ldrh r0, [r6, #0x00]
	add r0, r8
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldr r2, _0814574C @ =0x00007FFF
	add r0, sp, #0x010
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08145758
	ldr r0, _08145750 @ =0x0813B1E9
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r0, _08145754 @ =0x08144CD5
	b _081457A8
	.byte 0x00, 0x00
_08145740: .4byte 0x03001038
_08145744: .4byte 0x0819832C
_08145748: .4byte 0x08198220
_0814574C: .4byte 0x00007FFF
_08145750: .4byte sub_813B1E8
_08145754: .4byte sub_8144CD4
_08145758:
	ldrh r1, [r6, #0x00]
	lsls r0, r1, #0x01
	add r0, r8
	ldrh r4, [r0, #0x38]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	add r1, r8
	adds r1, #0x34
	ldrb r1, [r1, #0x00]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldrb r1, [r7, #0x00]
	mov r0, r10
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r7, #0x00]
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	subs r2, #0xB4
	adds r0, r5, r2
	ldr r2, [r0, #0x00]
	ldr r3, [r5, #0x14]
	str r4, [sp, #0x000]
	add r4, sp, #0x004
	movs r0, #0x00
	strb r0, [r4, #0x00]
	mov r0, r9
	str r0, [sp, #0x008]
	ldr r0, _081457BC @ =0x0813B1E9
	str r0, [sp, #0x00C]
	adds r0, r5, #0x0
	bl sub_814585C
	ldr r0, _081457C0 @ =0x08144CD5
	mov r1, r9
_081457A8:
	str r0, [r1, #0x0C]
_081457AA:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081457BC: .4byte sub_813B1E8
_081457C0: .4byte sub_8144CD4
