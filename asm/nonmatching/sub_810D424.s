	.syntax unified
	.text

	thumb_func_start sub_810D424
sub_810D424:
	push {r4, lr}
	add sp, #-0x004
	ldr r3, _0810D464 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	movs r1, #0xC3
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r4, [r0, #0x00]
	ldrb r1, [r2, #0x07]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0xA0
	orrs r0, r1
	strb r0, [r2, #0x07]
_0810D440:
	cmp r4, #0x00
	beq _0810D440
	ldr r0, [r3, #0x00]
	ldr r0, [r0, #0x7C]
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x44]
	movs r3, #0xC0
	lsls r3, r3, #0x06
	movs r0, #0xE0
	lsls r0, r0, #0x06
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_8109CF4
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_0810D464: .4byte 0x03000FD8
