	.syntax unified
	.text

	thumb_func_start sub_8190310
sub_8190310:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	mov r8, r0
	ldr r0, [r0, #0x0C]
	mov r9, r0
	mov r1, r9
	adds r1, #0x04
	mov r9, r1
	subs r1, #0x04
	ldr r1, [r1, #0x00]
	mov r10, r1
	mov r2, r9
	adds r2, #0x04
	mov r9, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x01C]
	mov r3, r8
	ldr r0, [r3, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x020]
	movs r4, #0x00
	str r4, [sp, #0x024]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x020]
	bl sub_807F9A8
	mov r6, sp
	adds r6, #0x10
	str r6, [sp, #0x02C]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x030]
	mov r1, sp
	adds r1, #0x18
	str r1, [sp, #0x034]
	movs r2, #0x05
	str r2, [sp, #0x028]
_0819036A:
	mov r3, r9
	ldm r3!, {r0}
	str r0, [sp, #0x00C]
	ldm r3!, {r1}
	str r1, [sp, #0x010]
	adds r3, #0x04
	mov r9, r3
	subs r3, #0x04
	ldm r3!, {r2}
	str r2, [sp, #0x014]
	mov r4, r10
	muls r4, r0
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _0819038A
	adds r0, #0xFF
_0819038A:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	mov r0, r10
	muls r0, r1
	cmp r0, #0x00
	bge _08190398
	adds r0, #0xFF
_08190398:
	asrs r7, r0, #0x08
	str r7, [sp, #0x010]
	mov r0, r10
	muls r0, r2
	cmp r0, #0x00
	bge _081903A6
	adds r0, #0xFF
_081903A6:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r2, #0x0
	ldr r5, _0819047C @ =0x08198584
	movs r6, #0x00
	ldsh r0, [r5, r6]
	cmp r0, #0x00
	bge _081903B8
	adds r0, #0x3F
_081903B8:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r6, _08190480 @ =0x08198504
	movs r4, #0x00
	ldsh r0, [r6, r4]
	cmp r0, #0x00
	bge _081903C8
	adds r0, #0x3F
_081903C8:
	asrs r0, r0, #0x06
	muls r0, r3
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081903D4
	adds r0, #0xFF
_081903D4:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _081903E2
	adds r0, #0x3F
_081903E2:
	asrs r0, r0, #0x06
	adds r1, r3, #0x0
	muls r1, r0
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _081903F2
	adds r0, #0x3F
_081903F2:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081903FE
	adds r0, #0xFF
_081903FE:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	adds r1, r7, #0x0
	adds r5, #0x80
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _08190410
	adds r0, #0x3F
_08190410:
	asrs r0, r0, #0x06
	muls r1, r0
	adds r3, r6, #0x0
	adds r3, #0x80
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r0, #0x00
	bge _08190422
	adds r0, #0x3F
_08190422:
	asrs r0, r0, #0x06
	muls r0, r4
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0819042E
	adds r0, #0xFF
_0819042E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _0819043C
	adds r0, #0x3F
_0819043C:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _0819044C
	adds r0, #0x3F
_0819044C:
	asrs r0, r0, #0x06
	muls r0, r7
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08190458
	adds r0, #0xFF
_08190458:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r6, r8
	ldrb r1, [r6, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08190484
	movs r0, #0x12
	ldsh r1, [r6, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08190474
	adds r0, #0xFF
_08190474:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08190496
	.byte 0x00, 0x00
_0819047C: .4byte 0x08198584
_08190480: .4byte 0x08198504
_08190484:
	mov r3, r8
	movs r4, #0x12
	ldsh r1, [r3, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08190492
	adds r0, #0xFF
_08190492:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08190496:
	str r0, [sp, #0x00C]
	mov r6, r8
	movs r0, #0x14
	ldsh r1, [r6, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _081904A6
	adds r0, #0xFF
_081904A6:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r2, r8
	movs r3, #0x16
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _081904BA
	adds r0, #0xFF
_081904BA:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x02C]
	ldr r2, [sp, #0x030]
	movs r3, #0x00
	bl sub_807FBD8
	ldr r2, [sp, #0x00C]
	ldr r3, [sp, #0x010]
	ldr r0, [sp, #0x014]
	lsls r0, r0, #0x0E
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	ldr r0, [sp, #0x034]
	ldr r1, [sp, #0x020]
	bl sub_807C564
	ldr r4, [sp, #0x024]
	cmp r4, #0x00
	bne _081904F6
	ldr r0, _08190540 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r6, #0x01
	str r6, [sp, #0x024]
_081904F6:
	ldr r0, [sp, #0x028]
	subs r0, #0x01
	str r0, [sp, #0x028]
	cmp r0, #0x00
	blt _08190502
	b _0819036A
_08190502:
	ldr r1, [sp, #0x024]
	cmp r1, #0x00
	beq _08190510
	ldr r0, _08190540 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08190510:
	ldr r2, [sp, #0x01C]
	add r10, r2
	lsls r0, r2, #0x01
	movs r1, #0x03
	bl __divsi3
	str r0, [sp, #0x01C]
	mov r3, r8
	ldr r3, [r3, #0x0C]
	mov r9, r3
	mov r4, r10
	mov r6, r9
	stm r6!, {r4}
	ldr r0, [sp, #0x01C]
	str r0, [r6, #0x00]
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08190540: .4byte 0x03000D74
