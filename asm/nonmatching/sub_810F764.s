	.syntax unified
	.text

	thumb_func_start sub_810F764
sub_810F764:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0810F80E
	adds r0, r5, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	mov r8, r0
	ands r0, r1
	movs r7, #0x02
	orrs r0, r7
	strb r0, [r2, #0x12]
	ldr r6, [r5, #0x2C]
	ldr r4, [r5, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r1, _0810F81C @ =0x000040E1
	cmp r0, #0x3C
	bne _0810F7AC
	subs r1, #0x01
_0810F7AC:
	ldr r2, [r6, #0x10]
	cmp r2, #0x00
	bge _0810F7B4
	adds r2, #0xFF
_0810F7B4:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x14]
	cmp r3, #0x00
	bge _0810F7BE
	adds r3, #0xFF
_0810F7BE:
	asrs r3, r3, #0x08
	movs r0, #0x00
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	mov r0, r8
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #0x12]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r4, #0x75
	strb r0, [r4, #0x00]
	ldr r0, _0810F820 @ =0x0810FD11
	str r0, [r5, #0x4C]
_0810F80E:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810F81C: .4byte 0x000040E1
_0810F820: .4byte sub_810FD10
