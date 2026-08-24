	.syntax unified
	.text

	thumb_func_start sub_8195E64
sub_8195E64:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	mov r8, r0
	ldr r0, [r0, #0x0C]
	mov r9, r0
	mov r1, r9
	adds r1, #0x04
	mov r9, r1
	subs r1, #0x04
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x01C]
	mov r2, r9
	adds r2, #0x04
	mov r9, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x020]
	mov r3, r8
	ldr r3, [r3, #0x08]
	str r3, [sp, #0x024]
	ldr r0, [r3, #0x34]
	str r0, [sp, #0x018]
	adds r0, r3, #0x0
	bl sub_80841B8
	str r0, [sp, #0x028]
	movs r4, #0x00
	str r4, [sp, #0x02C]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x028]
	bl sub_807F9A8
	mov r5, sp
	adds r5, #0x10
	str r5, [sp, #0x034]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x038]
	mov r1, sp
	adds r1, #0x18
	str r1, [sp, #0x03C]
	movs r2, #0x03
	str r2, [sp, #0x030]
_08195EC2:
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
	ldr r4, [sp, #0x01C]
	muls r0, r4
	cmp r0, #0x00
	bge _08195EE0
	adds r0, #0xFF
_08195EE0:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	ldr r5, [sp, #0x01C]
	adds r0, r1, #0x0
	muls r0, r5
	cmp r0, #0x00
	bge _08195EF0
	adds r0, #0xFF
_08195EF0:
	asrs r6, r0, #0x08
	str r6, [sp, #0x010]
	ldr r1, [sp, #0x01C]
	adds r0, r2, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _08195F00
	adds r0, #0xFF
_08195F00:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r2, #0x0
	ldr r4, _08195FE8 @ =0x08198584
	mov r10, r4
	mov r7, r10
	adds r7, #0x80
	movs r5, #0x00
	ldsh r0, [r7, r5]
	cmp r0, #0x00
	bge _08195F18
	adds r0, #0x3F
_08195F18:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r0, _08195FEC @ =0x08198504
	mov r12, r0
	mov r5, r12
	adds r5, #0x80
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _08195F2E
	adds r0, #0x3F
_08195F2E:
	asrs r0, r0, #0x06
	muls r0, r3
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08195F3A
	adds r0, #0xFF
_08195F3A:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r7, r1]
	cmp r0, #0x00
	bge _08195F48
	adds r0, #0x3F
_08195F48:
	asrs r0, r0, #0x06
	adds r1, r3, #0x0
	muls r1, r0
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _08195F58
	adds r0, #0x3F
_08195F58:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08195F64
	adds r0, #0xFF
_08195F64:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	adds r1, r6, #0x0
	mov r5, r10
	movs r2, #0x18
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _08195F76
	adds r0, #0x3F
_08195F76:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r5, r12
	movs r2, #0x18
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _08195F86
	adds r0, #0x3F
_08195F86:
	asrs r0, r0, #0x06
	muls r0, r4
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08195F92
	adds r0, #0xFF
_08195F92:
	asrs r2, r0, #0x08
	str r2, [sp, #0x010]
	mov r5, r10
	movs r1, #0x18
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _08195FA2
	adds r0, #0x3F
_08195FA2:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	mov r4, r12
	movs r5, #0x18
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _08195FB4
	adds r0, #0x3F
_08195FB4:
	asrs r0, r0, #0x06
	muls r0, r6
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08195FC0
	adds r0, #0xFF
_08195FC0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r1, _08195FF0 @ =0xFFFFF800
	adds r0, r2, r1
	str r0, [sp, #0x010]
	mov r2, r8
	ldrb r1, [r2, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08195FF4
	movs r4, #0x12
	ldsh r1, [r2, r4]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08195FE2
	adds r0, #0xFF
_08195FE2:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08196006
_08195FE8: .4byte word_8198584 @ =0x08198584
_08195FEC: .4byte word_8198504 @ =0x08198504
_08195FF0: .4byte 0xFFFFF800
_08195FF4:
	mov r5, r8
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08196002
	adds r0, #0xFF
_08196002:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08196006:
	str r0, [sp, #0x00C]
	mov r2, r8
	movs r3, #0x14
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08196016
	adds r0, #0xFF
_08196016:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r4, r8
	movs r5, #0x16
	ldsh r1, [r4, r5]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0819602A
	adds r0, #0xFF
_0819602A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x034]
	ldr r2, [sp, #0x038]
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
	ldr r0, [sp, #0x03C]
	ldr r1, [sp, #0x028]
	bl sub_807C564
	ldr r0, [sp, #0x02C]
	cmp r0, #0x00
	bne _08196066
	ldr r0, _081960C0 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x02C]
_08196066:
	ldr r2, [sp, #0x030]
	subs r2, #0x01
	str r2, [sp, #0x030]
	cmp r2, #0x00
	blt _08196072
	b _08195EC2
_08196072:
	ldr r3, [sp, #0x02C]
	cmp r3, #0x00
	beq _08196080
	ldr r0, _081960C0 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08196080:
	ldr r4, [sp, #0x01C]
	ldr r5, [sp, #0x020]
	adds r4, r4, r5
	str r4, [sp, #0x01C]
	lsls r0, r5, #0x03
	subs r0, r0, r5
	cmp r0, #0x00
	bge _08196092
	adds r0, #0x07
_08196092:
	asrs r0, r0, #0x03
	str r0, [sp, #0x020]
	movs r0, #0xF0
	ldr r1, [sp, #0x024]
	strh r0, [r1, #0x04]
	strh r0, [r1, #0x06]
	mov r2, r8
	ldr r2, [r2, #0x0C]
	mov r9, r2
	ldr r3, [sp, #0x01C]
	mov r4, r9
	stm r4!, {r3}
	ldr r5, [sp, #0x020]
	str r5, [r4, #0x00]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081960C0: .4byte 0x03000D74
