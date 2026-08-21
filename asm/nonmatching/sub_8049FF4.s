	.syntax unified
	.text

	thumb_func_start sub_8049FF4
sub_8049FF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	ldr r1, _0804A0CC @ =0x01000001
	ands r0, r1
	cmp r0, r1
	beq _0804A016
	b _0804A112
_0804A016:
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _0804A01E
	adds r0, #0xFF
_0804A01E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _0804A02A
	adds r0, #0xFF
_0804A02A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r1, [r2, #0x14]
	ldr r0, [r2, #0x18]
	adds r1, r1, r0
	str r0, [sp, #0x01C]
	cmp r1, #0x00
	bge _0804A03C
	adds r1, #0xFF
_0804A03C:
	asrs r1, r1, #0x08
	str r1, [sp, #0x008]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x08
	lsls r4, r0, #0x10
	adds r1, #0x04
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	ldrb r0, [r3, #0x04]
	str r0, [sp, #0x010]
	ldrb r0, [r3, #0x06]
	lsls r0, r0, #0x08
	ldrb r1, [r3, #0x05]
	orrs r0, r1
	subs r2, r3, r0
	movs r1, #0x00
	str r1, [sp, #0x014]
	ldr r0, [sp, #0x010]
	cmp r1, r0
	bge _0804A112
	lsrs r4, r4, #0x11
	str r4, [sp, #0x018]
_0804A072:
	ldrb r0, [r2, #0x00]
	lsls r4, r0, #0x04
	ldrb r0, [r2, #0x02]
	lsls r0, r0, #0x04
	adds r7, r4, r0
	subs r5, r7, #0x1
	ldrb r0, [r2, #0x01]
	lsls r3, r0, #0x04
	ldrb r0, [r2, #0x03]
	lsls r0, r0, #0x04
	adds r6, r3, r0
	subs r1, r6, #0x1
	mov r12, r1
	ldrb r1, [r2, #0x04]
	movs r0, #0x7F
	ands r0, r1
	lsls r0, r0, #0x03
	mov r9, r0
	ldrb r0, [r2, #0x05]
	movs r1, #0x7F
	ands r1, r0
	movs r0, #0xFF
	lsls r0, r0, #0x03
	mov r8, r0
	cmp r1, #0x7F
	beq _0804A0AA
	lsls r1, r1, #0x03
	mov r8, r1
_0804A0AA:
	mov r1, r9
	add r1, r8
	mov r10, r1
	ldrb r1, [r2, #0x06]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0804A0D0
	ldr r0, [sp, #0x018]
	subs r4, r4, r0
	adds r5, r5, r0
	subs r3, #0x01
	subs r0, r6, #0x2
	ldr r1, [sp, #0x00C]
	adds r0, r0, r1
	mov r12, r0
	b _0804A0D6
_0804A0CC: .4byte 0x01000001
_0804A0D0:
	adds r4, #0x04
	subs r5, r7, #0x5
	adds r3, #0x07
_0804A0D6:
	ldr r0, [sp, #0x000]
	cmp r0, r4
	blt _0804A104
	cmp r0, r5
	bgt _0804A104
	ldr r1, [sp, #0x004]
	cmp r1, r3
	blt _0804A104
	cmp r1, r12
	bgt _0804A104
	ldr r0, [sp, #0x008]
	cmp r0, r9
	blt _0804A104
	cmp r0, r10
	bgt _0804A104
	mov r1, r8
	cmp r1, #0x00
	bne _0804A100
	ldr r0, [sp, #0x01C]
	cmp r0, #0x00
	bgt _0804A104
_0804A100:
	adds r0, r2, #0x0
	b _0804A114
_0804A104:
	ldr r1, [sp, #0x014]
	adds r1, #0x01
	str r1, [sp, #0x014]
	adds r2, #0x0B
	ldr r0, [sp, #0x010]
	cmp r1, r0
	blt _0804A072
_0804A112:
	movs r0, #0x00
_0804A114:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
