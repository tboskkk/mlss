	.syntax unified
	.text

	thumb_func_start sub_80E5298
sub_80E5298:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	str r2, [sp, #0x000]
	adds r4, r3, #0x0
	ldr r2, _080E533C @ =0x03000F94
	ldr r0, _080E5340 @ =0x03000F98
	ldr r1, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x07
	ldr r1, [r2, #0x00]
	adds r5, r1, r0
	ldr r1, _080E5344 @ =0x03001034
	movs r0, #0x01
	negs r0, r0
	movs r2, #0xA0
	lsls r2, r2, #0x02
	ldr r3, [r1, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r3
	mov r10, r6
	adds r0, r4, #0x0
	muls r0, r4
	mov r8, r0
	ldr r2, _080E5348 @ =0x03001038
	ldr r0, _080E534C @ =0x0819832C
	ldr r1, _080E5350 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	mov r1, r8
	bl _call_via_r2
	mov r9, r0
	movs r6, #0x00
	movs r3, #0x00
_080E52F2:
	mov r1, r10
	subs r0, r6, r1
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	cmp r0, r8
	bge _080E5368
	ldr r2, _080E5348 @ =0x03001038
	mov r1, r9
	muls r1, r0
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _080E5310
	ldr r1, _080E5354 @ =0x0000FFFF
	adds r0, r0, r1
_080E5310:
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x07
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	str r3, [sp, #0x004]
	bl _call_via_r1
	ldr r1, [sp, #0x000]
	muls r0, r1
	ldr r3, [sp, #0x004]
	cmp r0, #0x00
	bge _080E532C
	adds r0, #0x7F
_080E532C:
	asrs r1, r0, #0x07
	subs r0, r7, r1
	cmp r0, #0xEF
	bgt _080E5368
	cmp r0, #0x00
	bge _080E5358
	strb r3, [r5, #0x01]
	b _080E535A
_080E533C: .4byte 0x03000F94
_080E5340: .4byte 0x03000F98
_080E5344: .4byte 0x03001034
_080E5348: .4byte 0x03001038
_080E534C: .4byte 0x0819832C
_080E5350: .4byte 0x08198220
_080E5354: .4byte 0x0000FFFF
_080E5358:
	strb r0, [r5, #0x01]
_080E535A:
	adds r0, r7, r1
	cmp r0, #0x00
	bge _080E5362
	strb r3, [r5, #0x00]
_080E5362:
	cmp r0, #0xEF
	bgt _080E5368
	strb r0, [r5, #0x00]
_080E5368:
	adds r4, r5, #0x4
	adds r0, r6, #0x1
	mov r1, r10
	subs r0, r0, r1
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	cmp r0, r8
	bge _080E53D0
	ldr r2, _080E53B8 @ =0x03001038
	mov r1, r9
	muls r1, r0
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _080E538A
	ldr r1, _080E53BC @ =0x0000FFFF
	adds r0, r0, r1
_080E538A:
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x07
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	str r3, [sp, #0x004]
	bl _call_via_r1
	ldr r1, [sp, #0x000]
	muls r0, r1
	ldr r3, [sp, #0x004]
	cmp r0, #0x00
	bge _080E53A6
	adds r0, #0x7F
_080E53A6:
	asrs r1, r0, #0x07
	subs r0, r7, r1
	cmp r0, #0xEF
	bgt _080E53D0
	cmp r0, #0x00
	bge _080E53C0
	strb r3, [r4, #0x01]
	b _080E53C2
	.byte 0x00, 0x00
_080E53B8: .4byte 0x03001038
_080E53BC: .4byte 0x0000FFFF
_080E53C0:
	strb r0, [r4, #0x01]
_080E53C2:
	adds r0, r7, r1
	cmp r0, #0x00
	bge _080E53CA
	strb r3, [r4, #0x00]
_080E53CA:
	cmp r0, #0xEF
	bgt _080E53D0
	strb r0, [r4, #0x00]
_080E53D0:
	adds r5, #0x08
	adds r6, #0x02
	cmp r6, #0x9F
	ble _080E52F2
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
