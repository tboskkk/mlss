	.syntax unified
	.text

	thumb_func_start sub_8073F70
sub_8073F70:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x28]
	mov r8, r0
	adds r0, #0xB0
	ldr r3, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r1, _08073FFC @ =0x08198584
	adds r6, r5, #0x0
	adds r6, #0xA4
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bge _08073F92
	adds r0, #0xFF
_08073F92:
	asrs r0, r0, #0x08
	movs r4, #0xFF
	ands r0, r4
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08073FA6
	adds r0, #0x3F
_08073FA6:
	asrs r0, r0, #0x06
	adds r1, r0, #0x0
	muls r1, r3
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r7, r5, #0x0
	adds r7, #0x88
	ldr r1, _08074000 @ =0x08198504
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bge _08073FC0
	adds r0, #0xFF
_08073FC0:
	asrs r0, r0, #0x08
	ands r0, r4
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08073FD2
	adds r0, #0x3F
_08073FD2:
	asrs r4, r0, #0x06
	adds r0, r3, #0x0
	movs r1, #0x03
	bl __divsi3
	adds r1, r4, #0x0
	muls r1, r0
	ldr r0, [r7, #0x00]
	subs r0, r0, r1
	str r0, [r5, #0x14]
	mov r0, r8
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08074004
	ldr r0, [r6, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	b _08074008
	.byte 0x00, 0x00
_08073FFC: .4byte word_8198584 @ =0x08198584
_08074000: .4byte word_8198504 @ =0x08198504
_08074004:
	ldr r0, [r6, #0x00]
	adds r0, #0xE0
_08074008:
	str r0, [r6, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xB0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08074024
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08074030 @ =0x08074035
	str r0, [r5, #0x4C]
_08074024:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074030: .4byte sub_8074034
