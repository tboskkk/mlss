	.syntax unified
	.text

	thumb_func_start sub_80E5118
sub_80E5118:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x000]
	adds r7, r1, #0x0
	ldr r2, _080E51A0 @ =0x03000F94
	ldr r0, _080E51A4 @ =0x03000F98
	ldr r1, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x07
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [sp, #0x004]
	ldr r0, _080E51A8 @ =0x03001034
	movs r4, #0x01
	negs r4, r4
	movs r2, #0xA0
	lsls r2, r2, #0x02
	ldr r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl _call_via_r3
	lsls r0, r7, #0x03
	ldr r1, [sp, #0x000]
	adds r0, r1, r0
	subs r0, #0x08
	mov r10, r0
	subs r7, #0x01
	cmp r7, r4
	bne _080E515E
	b _080E5288
_080E515E:
	mov r2, r10
	ldr r4, [sp, #0x000]
	mov r10, r4
	mov r0, r10
	adds r0, #0x08
	str r0, [sp, #0x000]
	ldr r3, [r2, #0x04]
	ldr r1, [r4, #0x04]
	cmp r3, r1
	bge _080E51AC
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _080E517A
	adds r0, #0xFF
_080E517A:
	asrs r5, r0, #0x08
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _080E5184
	adds r0, #0xFF
_080E5184:
	asrs r4, r0, #0x08
	mov r2, r10
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _080E5190
	adds r0, #0xFF
_080E5190:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080E519A
	adds r0, #0xFF
_080E519A:
	asrs r1, r0, #0x08
	ldr r3, [sp, #0x004]
	b _080E51DA
_080E51A0: .4byte 0x03000F94
_080E51A4: .4byte 0x03000F98
_080E51A8: .4byte 0x03001034
_080E51AC:
	mov r4, r10
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bge _080E51B6
	adds r0, #0xFF
_080E51B6:
	asrs r5, r0, #0x08
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _080E51C0
	adds r0, #0xFF
_080E51C0:
	asrs r4, r0, #0x08
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _080E51CA
	adds r0, #0xFF
_080E51CA:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _080E51D4
	adds r0, #0xFF
_080E51D4:
	asrs r1, r0, #0x08
	ldr r3, [sp, #0x004]
	adds r3, #0x01
_080E51DA:
	subs r0, r7, #0x1
	mov r8, r0
	cmp r1, #0x00
	ble _080E527C
	cmp r4, #0x9F
	bgt _080E527C
	subs r6, r2, r5
	adds r1, #0x01
	subs r2, r1, r4
	mov r12, r2
	cmp r6, #0x00
	bge _080E51FC
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x008]
	negs r6, r6
	b _080E5200
_080E51FC:
	movs r2, #0x01
	str r2, [sp, #0x008]
_080E5200:
	cmp r4, #0x00
	bge _080E521E
	adds r2, r6, #0x0
	muls r2, r4
	subs r7, #0x01
	mov r8, r7
	cmp r2, #0x00
	bge _080E521A
_080E5210:
	ldr r4, [sp, #0x008]
	adds r5, r5, r4
	add r2, r12
	cmp r2, #0x00
	blt _080E5210
_080E521A:
	movs r4, #0x00
	b _080E5228
_080E521E:
	movs r2, #0x00
	lsls r0, r4, #0x02
	adds r3, r3, r0
	subs r7, #0x01
	mov r8, r7
_080E5228:
	cmp r1, #0xA0
	ble _080E522E
	movs r1, #0xA0
_080E522E:
	subs r1, r1, r4
	subs r1, #0x01
	cmp r1, #0x00
	beq _080E527C
_080E5236:
	subs r2, r2, r6
	subs r1, #0x01
	mov r9, r1
	ldrb r4, [r3, #0x00]
	adds r7, r3, #0x4
	cmp r2, #0x00
	bge _080E524E
_080E5244:
	ldr r0, [sp, #0x008]
	adds r5, r5, r0
	add r2, r12
	cmp r2, #0x00
	blt _080E5244
_080E524E:
	cmp r5, #0x00
	bge _080E5256
	movs r0, #0x00
	b _080E5262
_080E5256:
	cmp r5, #0xEF
	bgt _080E5260
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	b _080E5262
_080E5260:
	movs r0, #0xF0
_080E5262:
	adds r1, r4, #0x0
	cmp r1, #0xFF
	beq _080E5272
	cmp r1, r0
	bcs _080E5270
	strb r0, [r3, #0x02]
	b _080E5274
_080E5270:
	strb r4, [r3, #0x02]
_080E5272:
	strb r0, [r3, #0x00]
_080E5274:
	adds r3, r7, #0x0
	mov r1, r9
	cmp r1, #0x00
	bne _080E5236
_080E527C:
	mov r7, r8
	movs r0, #0x01
	negs r0, r0
	cmp r7, r0
	beq _080E5288
	b _080E515E
_080E5288:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
