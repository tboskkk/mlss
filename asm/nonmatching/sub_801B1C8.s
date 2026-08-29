	.syntax unified
	.text

	thumb_func_start sub_801B1C8
sub_801B1C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	str r1, [sp, #0x000]
	str r2, [sp, #0x004]
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bne _0801B1E2
	b _0801B2EA
_0801B1E2:
	movs r0, #0x00
	mov r9, r0
	mov r10, r0
	movs r5, #0x02
	negs r5, r5
	ldrh r0, [r6, #0x04]
	adds r1, r0, #0x1
	adds r7, r0, #0x0
	ldr r2, [r6, #0x0C]
	mov r8, r2
	ldr r3, [r6, #0x08]
	str r3, [sp, #0x008]
	cmp r5, r1
	bgt _0801B28C
_0801B1FE:
	adds r4, r5, #0x0
	cmp r5, #0x00
	bge _0801B206
	movs r4, #0x00
_0801B206:
	subs r0, r7, #0x1
	cmp r5, r0
	ble _0801B20E
	adds r4, r0, #0x0
_0801B20E:
	lsls r0, r5, #0x10
	mov r1, r8
	subs r2, r1, r0
	cmp r2, #0x00
	bge _0801B21A
	negs r2, r2
_0801B21A:
	ldr r0, _0801B244 @ =0x0000FFFF
	cmp r2, r0
	bgt _0801B248
	asrs r2, r2, #0x08
	lsls r1, r2, #0x01
	adds r1, r1, r2
	adds r0, r2, #0x0
	muls r0, r1
	muls r0, r2
	asrs r0, r0, #0x08
	lsls r1, r1, #0x01
	muls r1, r2
	subs r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x0B
	adds r0, r0, r2
	movs r1, #0x06
	bl __divsi3
	adds r2, r0, #0x0
	b _0801B26E
_0801B244: .4byte 0x0000FFFF
_0801B248:
	ldr r0, _0801B264 @ =0x0001FFFF
	cmp r2, r0
	bgt _0801B26C
	ldr r3, _0801B268 @ =0xFFFE0000
	adds r0, r2, r3
	asrs r0, r0, #0x08
	negs r1, r0
	muls r1, r0
	muls r0, r1
	movs r1, #0x06
	bl __divsi3
	asrs r2, r0, #0x08
	b _0801B26E
_0801B264: .4byte 0x0001FFFF
_0801B268: .4byte 0xFFFE0000
_0801B26C:
	movs r2, #0x00
_0801B26E:
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x02
	adds r1, r1, r0
	movs r3, #0x00
	ldsh r0, [r1, r3]
	muls r0, r2
	add r9, r0
	movs r3, #0x02
	ldsh r0, [r1, r3]
	muls r0, r2
	add r10, r0
	adds r5, #0x01
	adds r0, r7, #0x1
	cmp r5, r0
	ble _0801B1FE
_0801B28C:
	mov r0, r9
	cmp r0, #0x00
	bge _0801B294
	adds r0, #0xFF
_0801B294:
	asrs r0, r0, #0x08
	ldr r1, [sp, #0x000]
	str r0, [r1, #0x00]
	mov r0, r10
	cmp r0, #0x00
	bge _0801B2A2
	adds r0, #0xFF
_0801B2A2:
	asrs r0, r0, #0x08
	ldr r2, [sp, #0x004]
	str r0, [r2, #0x00]
	ldr r3, [sp, #0x008]
	adds r0, r7, #0x0
	muls r0, r3
	add r0, r8
	str r0, [r6, #0x0C]
	ldrh r1, [r6, #0x04]
	lsls r1, r1, #0x10
	cmp r0, r1
	blt _0801B2E6
	str r1, [r6, #0x0C]
	ldr r1, [r6, #0x00]
	lsls r0, r7, #0x02
	adds r0, r0, r1
	subs r0, #0x04
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	ldr r3, [sp, #0x000]
	str r0, [r3, #0x00]
	ldrh r0, [r6, #0x04]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	subs r0, #0x02
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	ldr r2, [sp, #0x004]
	str r0, [r2, #0x00]
	movs r0, #0x00
	str r0, [r6, #0x00]
	b _0801B2EC
_0801B2E6:
	movs r0, #0x01
	b _0801B2EC
_0801B2EA:
	movs r0, #0x00
_0801B2EC:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
