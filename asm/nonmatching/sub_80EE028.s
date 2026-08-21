	.syntax unified
	.text

	thumb_func_start sub_80EE028
sub_80EE028:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r4
	mov r12, r0
	ldr r0, [r3, #0x00]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080EE05E
	ldr r0, [r3, #0x08]
	lsls r0, r0, #0x04
	str r0, [r3, #0x08]
	ldr r0, [r3, #0x0C]
	lsls r0, r0, #0x04
	str r0, [r3, #0x0C]
	ldr r1, [r3, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r1, r0
	beq _080EE05C
	lsls r1, r1, #0x04
_080EE05C:
	str r1, [r3, #0x10]
_080EE05E:
	ldr r0, [r3, #0x00]
	asrs r0, r0, #0x01
	ldr r1, [r3, #0x04]
	mov r8, r1
	mov r5, r12
	adds r5, #0x32
	mov r6, r12
	adds r6, #0x52
	movs r2, #0x72
	add r2, r12
	mov r9, r2
	cmp r0, #0x01
	bne _080EE0FE
	cmp r1, #0x00
	beq _080EE0B4
	mov r0, r8
	subs r0, #0x01
	lsls r0, r0, #0x10
	asrs r2, r0, #0x0F
	adds r0, r5, r2
	movs r7, #0x00
	ldsh r1, [r0, r7]
	ldr r0, [r3, #0x08]
	adds r0, r0, r1
	str r0, [r3, #0x08]
	adds r0, r6, r2
	movs r7, #0x00
	ldsh r1, [r0, r7]
	ldr r0, [r3, #0x0C]
	adds r0, r0, r1
	str r0, [r3, #0x0C]
	ldr r1, [r3, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r1, r0
	beq _080EE0B0
	mov r7, r9
	adds r0, r7, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r1, r1, r0
_080EE0B0:
	str r1, [r3, #0x10]
	b _080EE0FE
_080EE0B4:
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	bge _080EE0BC
	adds r1, #0xFF
_080EE0BC:
	asrs r1, r1, #0x08
	ldr r0, [r3, #0x08]
	adds r0, r0, r1
	str r0, [r3, #0x08]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _080EE0CC
	adds r0, #0xFF
_080EE0CC:
	asrs r0, r0, #0x08
	ldr r1, [r3, #0x0C]
	adds r1, r1, r0
	str r1, [r3, #0x0C]
	ldr r2, [r3, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r2, r0
	beq _080EE0EE
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080EE0EA
	adds r0, #0xFF
_080EE0EA:
	asrs r0, r0, #0x08
	adds r2, r2, r0
_080EE0EE:
	str r2, [r3, #0x10]
	mov r5, r12
	adds r5, #0x32
	mov r6, r12
	adds r6, #0x52
	movs r7, #0x72
	add r7, r12
	mov r9, r7
_080EE0FE:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x0F
	adds r2, r5, r1
	ldr r0, [r3, #0x08]
	strh r0, [r2, #0x00]
	adds r2, r6, r1
	ldr r0, [r3, #0x0C]
	strh r0, [r2, #0x00]
	mov r7, r9
	adds r2, r7, r1
	ldr r3, [r3, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r3, r0
	beq _080EE122
	adds r0, r3, #0x0
	b _080EE130
_080EE122:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080EE12E
	adds r1, #0xFF
_080EE12E:
	lsrs r0, r1, #0x08
_080EE130:
	strh r0, [r2, #0x00]
	movs r0, #0x01
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
