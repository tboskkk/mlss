	.syntax unified
	.text

	thumb_func_start sub_80712D8
sub_80712D8:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r5, [r4, #0x08]
	ldrb r1, [r5, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08071378
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _080712F4
	adds r2, #0xFF
_080712F4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x3C]
	cmp r3, #0x00
	bge _080712FE
	adds r3, #0xFF
_080712FE:
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08071308
	adds r0, #0xFF
_08071308:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldrb r0, [r5, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071380 @ =0x000040B5
	bl sub_807BF34
	mov r12, r0
	str r0, [r4, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	mov r1, r12
	adds r1, #0x75
	strb r0, [r1, #0x00]
	mov r3, r12
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r0, r12
	str r2, [r0, #0x4C]
	ldr r2, _08071384 @ =0x000040B4
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08071388 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	ldr r0, [r0, #0x10]
	bl sub_807FB64
	ldr r0, _0807138C @ =0x08071391
	str r0, [r4, #0x4C]
_08071378:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_08071380: .4byte 0x000040B5
_08071384: .4byte 0x000040B4
_08071388: .4byte 0x03000FD8
_0807138C: .4byte sub_8071390
