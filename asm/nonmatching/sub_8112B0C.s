	.syntax unified
	.text

	thumb_func_start sub_8112B0C
sub_8112B0C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	ldr r2, _08112BAC @ =0xFFFFFF00
	ands r1, r2
	ldr r3, [r4, #0x38]
	adds r0, r3, #0x0
	ands r0, r2
	cmp r1, r0
	beq _08112B70
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _08112B6A
	adds r1, r3, #0x0
	cmp r3, #0x00
	bge _08112B38
	adds r1, #0xFF
_08112B38:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r0, [r0, r2]
	ldr r6, _08112BB0 @ =0x00002971
	cmp r1, r0
	bge _08112B4A
	adds r6, #0x09
_08112B4A:
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08112B52
	adds r2, #0xFF
_08112B52:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08112B5C
	adds r3, #0xFF
_08112B5C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_80DF024
	movs r0, #0x0A
	str r0, [r5, #0x00]
_08112B6A:
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
_08112B70:
	adds r0, r4, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08112BA4
	ldr r0, [r4, #0x28]
	ldr r1, _08112BB4 @ =0x00000113
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08112BB8 @ =0x08113385
	str r0, [r4, #0x4C]
_08112BA4:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08112BAC: .4byte 0xFFFFFF00
_08112BB0: .4byte 0x00002971
_08112BB4: .4byte 0x00000113
_08112BB8: .4byte sub_8113384
