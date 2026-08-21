	.syntax unified
	.text

	thumb_func_start sub_806259C
sub_806259C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080625B8
	b _08062770
_080625B8:
	mov r0, r8
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r0, r8
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _080625D0
	adds r0, #0xFF
_080625D0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x08
	mov r4, r8
	ldr r3, [r4, #0x14]
	cmp r3, #0x00
	bge _080625E0
	adds r3, #0xFF
_080625E0:
	asrs r3, r3, #0x08
	mov r4, r8
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080625EC
	adds r0, #0xFF
_080625EC:
	asrs r0, r0, #0x08
	adds r0, #0x18
	str r0, [sp, #0x000]
	mov r4, r8
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08062780 @ =0x000040D9
	bl sub_807BF34
	adds r7, r0, #0x0
	str r7, [r4, #0x30]
	adds r1, r7, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r7, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r2, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x2C]
	str r0, [r7, #0x2C]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r0, r8
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x0C
	bl sub_807FA50
	str r0, [r7, #0x04]
	ldr r1, [r7, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	ldr r1, _08062784 @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldrb r5, [r6, #0x07]
	lsls r4, r5, #0x1B
	lsrs r3, r4, #0x1B
	subs r3, #0x01
	movs r1, #0x1F
	ands r3, r1
	movs r2, #0x20
	negs r2, r2
	adds r1, r2, #0x0
	ands r1, r5
	orrs r1, r3
	strb r1, [r6, #0x07]
	lsrs r4, r4, #0x1B
	ldrb r1, [r0, #0x0C]
	ands r2, r1
	orrs r2, r4
	strb r2, [r0, #0x0C]
	mov r6, r8
	adds r6, #0x84
	movs r0, #0x88
	add r0, r8
	mov r9, r0
	movs r1, #0x8C
	add r1, r8
	mov r10, r1
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r7, #0x0C]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	movs r5, #0x07
_080626F0:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	subs r5, #0x04
	cmp r5, #0x00
	bge _080626F0
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _08062788 @ =0x08062A69
	str r0, [r7, #0x4C]
	mov r2, r8
	ldr r0, [r2, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	mov r4, r9
	str r0, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	mov r1, r10
	str r0, [r1, #0x00]
	ldr r0, _0806278C @ =0x0000010B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08062790 @ =0x08062C95
	mov r2, r8
	str r0, [r2, #0x4C]
_08062770:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08062780: .4byte 0x000040D9
_08062784: .4byte 0x03000FD8
_08062788: .4byte sub_8062A68
_0806278C: .4byte 0x0000010B
_08062790: .4byte sub_8062C94
