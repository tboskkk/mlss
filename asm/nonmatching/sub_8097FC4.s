	.syntax unified
	.text

	thumb_func_start sub_8097FC4
sub_8097FC4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r0, [sp, #0x000]
	ldr r0, _0809816C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r10, r0
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	mov r9, r0
	movs r6, #0x00
	movs r5, #0x00
	movs r7, #0x00
	movs r0, #0x00
	mov r8, r0
	adds r3, r1, #0x0
	adds r3, #0x58
	movs r1, #0x06
	mov r12, r1
	movs r4, #0x05
_08097FF6:
	ldr r2, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _0809802C
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r6, #0x01
_0809802C:
	ldr r2, [r3, #0x04]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _08098062
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r6, #0x01
_08098062:
	ldr r2, [r3, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _08098098
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r6, #0x01
_08098098:
	adds r3, #0x0C
	subs r4, #0x03
	cmp r4, #0x00
	bge _08097FF6
	ldr r3, _08098170 @ =0x0819832C
	ldr r0, _08098174 @ =0x08198220
	subs r4, r3, r0
	ldr r1, _08098178 @ =0x03001038
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	movs r5, #0x00
	mov r2, r9
	strh r0, [r2, #0x1C]
	mov r3, r10
	strh r0, [r3, #0x1C]
	ldr r0, _08098178 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	mov r1, r9
	strh r0, [r1, #0x1E]
	mov r2, r10
	strh r0, [r2, #0x1E]
	ldr r3, _08098178 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r0, r8
	adds r1, r6, #0x0
	bl _call_via_r2
	mov r4, r9
	strh r0, [r4, #0x20]
	mov r1, r10
	strh r0, [r1, #0x20]
	ldr r1, _0809817C @ =0x03000FDC
	ldr r0, [r1, #0x00]
	ldr r2, _08098180 @ =0x00005470
	adds r0, r0, r2
	str r5, [r0, #0x00]
	ldr r2, [r1, #0x00]
	ldr r3, _08098184 @ =0x00005474
	adds r1, r2, r3
	movs r0, #0x14
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r4, _08098188 @ =0x00005478
	adds r1, r2, r4
	movs r0, #0xB3
	str r0, [r1, #0x00]
	ldr r0, _0809818C @ =0x0000547C
	adds r2, r2, r0
	ldr r1, [sp, #0x000]
	ldr r0, [r1, #0x28]
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r3, #0x1C
	ldsh r1, [r1, r3]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r4, [sp, #0x000]
	cmp r4, r10
	bne _0809813A
	mov r0, r9
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809813A
	ldr r0, _08098190 @ =0x08098711
	mov r1, r9
	str r0, [r1, #0x4C]
_0809813A:
	ldr r2, [sp, #0x000]
	cmp r2, r9
	bne _08098154
	mov r0, r10
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08098154
	ldr r0, _08098190 @ =0x08098711
	mov r3, r10
	str r0, [r3, #0x4C]
_08098154:
	ldr r0, _08098194 @ =0x08098199
	ldr r4, [sp, #0x000]
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809816C: .4byte 0x03000FD8
_08098170: .4byte 0x0819832C
_08098174: .4byte 0x08198220
_08098178: .4byte 0x03001038
_0809817C: .4byte 0x03000FDC
_08098180: .4byte 0x00005470
_08098184: .4byte 0x00005474
_08098188: .4byte 0x00005478
_0809818C: .4byte 0x0000547C
_08098190: .4byte sub_8098710
_08098194: .4byte sub_8098198
