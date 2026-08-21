	.syntax unified
	.text

	thumb_func_start sub_81416B0
sub_81416B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	mov r9, r2
	adds r7, r6, #0x0
	adds r7, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081416E2
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _081416EE
_081416E2:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081416EE:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x28]
	ldr r2, _0814172C @ =0x03001038
	ldr r0, _08141730 @ =0x0819832C
	ldr r1, _08141734 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, [r3, #0x0C]
	ldr r0, [r6, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r6, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141738
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _0814173C
_0814172C: .4byte 0x03001038
_08141730: .4byte 0x0819832C
_08141734: .4byte 0x08198220
_08141738:
	movs r1, #0x01
	negs r1, r1
_0814173C:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, _081417E8 @ =0x03001038
	ldr r0, _081417EC @ =0x0819832C
	ldr r1, _081417F0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, r4
	beq _08141772
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
_08141772:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r3, r7, r2
	movs r5, #0x00
	strh r0, [r3, #0x00]
	ldrh r0, [r3, #0x00]
	add r0, r8
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r1, [r4, #0x00]
	ldrh r0, [r3, #0x00]
	add r0, r8
	adds r0, #0x22
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r5, [sp, #0x000]
	movs r1, #0x03
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r0, _081417F4 @ =0x081427AD
	mov r2, r9
	str r0, [r2, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081417E8: .4byte 0x03001038
_081417EC: .4byte 0x0819832C
_081417F0: .4byte 0x08198220
_081417F4: .4byte sub_81427AC
