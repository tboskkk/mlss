	.syntax unified
	.text

	thumb_func_start sub_8074FB0
sub_8074FB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	bl sub_8199F30
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r6, #0x00
	cmp r0, #0x09
	bhi _08074FD6
	movs r6, #0x01
	b _08074FDC
_08074FD6:
	cmp r0, #0x45
	bhi _08074FDC
	movs r6, #0x02
_08074FDC:
	ldr r0, [r5, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	ldr r2, _08075014 @ =0xFFFFD000
	adds r7, r1, r2
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r0
	mov r8, r1
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	ands r1, r0
	adds r0, r1, #0x0
	ldr r4, _08075018 @ =0xFFFFC000
	cmp r1, #0x00
	blt _0807502A
	cmp r1, #0x01
	bgt _0807501C
	movs r1, #0xD8
	lsls r1, r1, #0x06
	movs r0, #0xB8
	lsls r0, r0, #0x07
	b _08075032
_08075014: .4byte 0xFFFFD000
_08075018: .4byte 0xFFFFC000
_0807501C:
	cmp r0, #0x03
	bgt _0807502A
	movs r1, #0xA0
	lsls r1, r1, #0x06
	movs r0, #0xF8
	lsls r0, r0, #0x07
	b _08075032
_0807502A:
	movs r1, #0xC0
	lsls r1, r1, #0x06
	movs r0, #0xD8
	lsls r0, r0, #0x07
_08075032:
	subs r1, r7, r1
	mov r9, r1
	mov r2, r8
	subs r2, r2, r0
	mov r10, r2
	subs r0, r7, r4
	mov r1, r10
	muls r1, r0
	adds r0, r1, #0x0
	mov r1, r9
	bl __divsi3
	mov r2, r8
	adds r3, r2, r0
	cmp r6, #0x00
	beq _08075062
	cmp r6, #0x01
	beq _0807508C
	ldr r1, [r5, #0x28]
	adds r2, r4, #0x0
	cmp r2, #0x00
	bge _080750B4
	adds r2, #0xFF
	b _080750B4
_08075062:
	ldr r1, [r5, #0x28]
	adds r2, r4, #0x0
	cmp r4, #0x00
	bge _0807506C
	adds r2, #0xFF
_0807506C:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _08075076
	adds r0, #0xFF
_08075076:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08075088 @ =0x00004188
	b _080750CC
	.byte 0x00, 0x00
_08075088: .4byte 0x00004188
_0807508C:
	ldr r1, [r5, #0x28]
	adds r2, r4, #0x0
	cmp r2, #0x00
	bge _08075096
	adds r2, #0xFF
_08075096:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _080750A0
	adds r0, #0xFF
_080750A0:
	asrs r3, r0, #0x08
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080750B0 @ =0x000040B1
	b _080750CC
_080750B0: .4byte 0x000040B1
_080750B4:
	asrs r2, r2, #0x08
	cmp r3, #0x00
	bge _080750BC
	adds r3, #0xFF
_080750BC:
	asrs r3, r3, #0x08
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08075198 @ =0x00004055
_080750CC:
	bl sub_807BF34
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	movs r0, #0x77
	adds r0, r0, r5
	mov r12, r0
	ldrb r0, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r12
	ldrb r2, [r1, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0807519C @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080751A0 @ =0x080753F5
	str r0, [r4, #0x58]
	ldr r0, _080751A4 @ =0x080751A9
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x84
	mov r2, r9
	str r2, [r0, #0x00]
	adds r0, #0x04
	mov r1, r10
	str r1, [r0, #0x00]
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _08075146
	adds r0, #0xFF
_08075146:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xAE
	movs r3, #0x00
	strh r0, [r2, #0x00]
	mov r0, r8
	cmp r0, #0x00
	bge _08075158
	adds r0, #0xFF
_08075158:
	asrs r1, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x80
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r6, [r0, #0x00]
	ldr r1, [r4, #0x08]
	adds r0, #0x04
	str r3, [r0, #0x00]
	strh r3, [r1, #0x0C]
	ldr r2, [r4, #0x08]
	adds r1, r4, #0x0
	adds r1, #0xA4
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	strh r0, [r2, #0x06]
	strh r0, [r2, #0x04]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08075198: .4byte 0x00004055
_0807519C: .4byte sub_8087540
_080751A0: .4byte sub_80753F4
_080751A4: .4byte sub_80751A8
