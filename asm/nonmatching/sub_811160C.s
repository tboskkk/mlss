	.syntax unified
	.text

	thumb_func_start sub_811160C
sub_811160C:
	push {r4, r5, lr}
	mov r12, r0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0811161A
	adds r0, #0xFF
_0811161A:
	asrs r4, r0, #0x08
	movs r3, #0xFF
	ands r4, r3
	adds r2, r4, #0x0
	subs r2, #0x40
	ands r2, r3
	cmp r2, #0x7F
	bgt _08111644
	mov r0, r12
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ands r2, r3
	muls r0, r2
	cmp r0, #0x00
	bge _0811163C
	adds r0, #0x7F
_0811163C:
	asrs r0, r0, #0x07
	adds r2, r0, #0x0
	adds r2, #0x19
	b _08111660
_08111644:
	mov r0, r12
	adds r0, #0xAE
	movs r5, #0x00
	ldsh r1, [r0, r5]
	adds r0, r2, #0x0
	subs r0, #0x80
	ands r0, r3
	muls r0, r1
	cmp r0, #0x00
	bge _0811165A
	adds r0, #0x7F
_0811165A:
	asrs r1, r0, #0x07
	movs r0, #0x30
	subs r2, r0, r1
_08111660:
	ldr r0, _081116B8 @ =0x08198584
	lsls r3, r4, #0x01
	adds r0, r3, r0
	movs r4, #0x00
	ldsh r1, [r0, r4]
	cmp r1, #0x00
	bge _08111670
	adds r1, #0x3F
_08111670:
	asrs r1, r1, #0x06
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x04
	lsls r1, r2, #0x08
	adds r0, r0, r1
	mov r5, r12
	str r0, [r5, #0x10]
	ldr r0, _081116BC @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0811168E
	adds r0, #0x3F
_0811168E:
	asrs r1, r0, #0x06
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x02
	movs r4, #0xD8
	lsls r4, r4, #0x07
	adds r0, r0, r4
	mov r5, r12
	str r0, [r5, #0x14]
	mov r2, r12
	adds r2, #0x98
	mov r1, r12
	adds r1, #0x94
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081116B8: .4byte 0x08198584
_081116BC: .4byte 0x08198504
