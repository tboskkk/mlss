	.syntax unified
	.text

	thumb_func_start sub_8189FC0
sub_8189FC0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x03C
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldm r4!, {r0}
	str r0, [sp, #0x01C]
	ldm r4!, {r1}
	str r1, [sp, #0x020]
	ldm r4!, {r6}
	ldm r4!, {r0}
	mov r9, r0
	ldm r4!, {r7}
	ldm r4!, {r1}
	str r1, [sp, #0x024]
	ldr r0, [r5, #0x08]
	str r0, [sp, #0x028]
	ldr r0, [r0, #0x34]
	str r0, [sp, #0x018]
	ldr r0, [sp, #0x028]
	bl sub_80841B8
	mov r8, r0
	movs r1, #0x00
	str r1, [sp, #0x02C]
	ldr r0, [sp, #0x018]
	mov r1, r8
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x030]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x034]
	adds r0, #0x08
	str r0, [sp, #0x038]
	ldr r1, [sp, #0x02C]
	mov r10, r1
_0818A014:
	ldm r4!, {r2}
	str r2, [sp, #0x00C]
	ldm r4!, {r1}
	str r1, [sp, #0x010]
	ldm r4!, {r0}
	str r0, [sp, #0x014]
	ldr r0, [sp, #0x01C]
	adds r2, r2, r0
	str r2, [sp, #0x00C]
	adds r1, r1, r6
	str r1, [sp, #0x010]
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0818A046
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0818A040
	adds r0, #0xFF
_0818A040:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0818A056
_0818A046:
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0818A052
	adds r0, #0xFF
_0818A052:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0818A056:
	str r0, [sp, #0x00C]
	movs r0, #0x14
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0818A064
	adds r0, #0xFF
_0818A064:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0818A076
	adds r0, #0xFF
_0818A076:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x030]
	ldr r2, [sp, #0x034]
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
	ldr r0, [sp, #0x038]
	mov r1, r8
	bl sub_807C564
	ldr r1, [sp, #0x02C]
	cmp r1, #0x00
	bne _0818A0B2
	ldr r0, _0818A108 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x02C]
_0818A0B2:
	movs r1, #0x01
	negs r1, r1
	add r10, r1
	mov r0, r10
	cmp r0, #0x00
	bge _0818A014
	ldr r1, [sp, #0x02C]
	cmp r1, #0x00
	beq _0818A0CC
	ldr r0, _0818A108 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0818A0CC:
	ldr r0, [sp, #0x01C]
	ldr r1, [sp, #0x020]
	adds r0, r0, r1
	str r0, [sp, #0x01C]
	add r6, r9
	movs r0, #0x20
	add r9, r0
	ldr r0, _0818A10C @ =0xFFFFF800
	cmp r6, r0
	ble _0818A0EE
	adds r6, r0, #0x0
	adds r7, #0x01
	cmp r7, #0x00
	ble _0818A0EA
	movs r7, #0x00
_0818A0EA:
	lsls r1, r7, #0x08
	mov r9, r1
_0818A0EE:
	ldr r0, [sp, #0x024]
	adds r0, #0x06
	str r0, [sp, #0x024]
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0818A110
	ldr r1, [sp, #0x024]
	negs r0, r1
	lsls r0, r0, #0x08
	b _0818A114
	.byte 0x00, 0x00
_0818A108: .4byte 0x03000D74
_0818A10C: .4byte 0xFFFFF800
_0818A110:
	ldr r1, [sp, #0x024]
	lsls r0, r1, #0x08
_0818A114:
	ldr r1, [sp, #0x028]
	strh r0, [r1, #0x0C]
	ldr r4, [r5, #0x0C]
	ldr r0, [sp, #0x01C]
	stm r4!, {r0}
	ldr r1, [sp, #0x020]
	stm r4!, {r1}
	stm r4!, {r6}
	mov r0, r9
	stm r4!, {r0}
	stm r4!, {r7}
	ldr r1, [sp, #0x024]
	str r1, [r4, #0x00]
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
