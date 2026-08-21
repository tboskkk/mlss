	.syntax unified
	.text

	thumb_func_start sub_809B7D8
sub_809B7D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _0809B888 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r7, [r0, #0x74]
	movs r0, #0x08
	adds r0, r0, r7
	mov r8, r0
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809B87A
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809B810
	adds r1, #0xFF
_0809B810:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809B81A
	adds r2, #0xFF
_0809B81A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809B824
	adds r3, #0xFF
_0809B824:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809B88C @ =0x000011F0
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r5, #0x06
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0809B852
	str r6, [r4, #0x2C]
	ldr r1, _0809B890 @ =0x000040C2
	adds r0, r4, #0x0
	adds r2, r6, #0x0
	bl sub_807C0D0
	ldr r1, _0809B894 @ =0x0809B961
	str r1, [r0, #0x4C]
	bl _call_via_r1
_0809B852:
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0809B876
	mov r0, r8
	str r0, [r4, #0x2C]
	ldr r1, _0809B890 @ =0x000040C2
	adds r0, r4, #0x0
	mov r2, r8
	bl sub_807C0D0
	ldr r1, _0809B894 @ =0x0809B961
	str r1, [r0, #0x4C]
	bl _call_via_r1
_0809B876:
	ldr r0, _0809B898 @ =0x0809B9CD
	str r0, [r4, #0x4C]
_0809B87A:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B888: .4byte 0x03000FD8
_0809B88C: .4byte 0x000011F0
_0809B890: .4byte 0x000040C2
_0809B894: .4byte sub_809B960
_0809B898: .4byte sub_809B9CC
