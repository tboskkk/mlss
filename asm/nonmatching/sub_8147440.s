	.syntax unified
	.text

	thumb_func_start sub_8147440
sub_8147440:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	adds r5, r1, #0x0
	mov r10, r2
	movs r0, #0x58
	adds r0, r0, r5
	mov r9, r0
	add r4, sp, #0x00C
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08147476
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	b _0814747A
_08147476:
	add r0, sp, #0x00C
	ldrb r0, [r0, #0x00]
_0814747A:
	strb r0, [r4, #0x00]
	add r0, sp, #0x00C
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	add r0, r8
	ldr r2, [r0, #0x28]
	movs r4, #0xD1
	lsls r4, r4, #0x02
	adds r1, r5, r4
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x0C]
	str r0, [r5, #0x0C]
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r1, #0x00]
	movs r1, #0xF0
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x10]
	subs r1, r1, r0
	cmp r1, #0x00
	blt _081474BA
	movs r4, #0xA0
	lsls r4, r4, #0x08
	adds r1, r1, r4
	ldr r0, [r2, #0x18]
	b _081474C0
_081474BA:
	ldr r0, [r2, #0x18]
	movs r1, #0xA0
	lsls r1, r1, #0x08
_081474C0:
	adds r0, r0, r1
	str r0, [r5, #0x18]
	movs r0, #0xAC
	lsls r0, r0, #0x01
	add r0, r9
	ldr r6, [r0, #0x00]
	movs r0, #0xAE
	lsls r0, r0, #0x01
	add r0, r9
	ldr r7, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x30
	ldrh r1, [r0, #0x00]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r4, #0x00
	mov r12, r4
	strh r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x2E
	ldrh r0, [r0, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	ldr r4, _08147520 @ =0x0000027A
	adds r0, r5, r4
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	mov r0, r12
	str r0, [sp, #0x008]
	mov r0, r8
	bl sub_813B920
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08147528
	ldr r0, _08147524 @ =0x08148C61
	mov r1, r10
	str r0, [r1, #0x00]
	b _08147572
	.byte 0x00, 0x00
_08147520: .4byte 0x0000027A
_08147524: .4byte 0x08148C61
_08147528:
	movs r4, #0x83
	lsls r4, r4, #0x02
	adds r2, r5, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	ldr r0, _08147584 @ =0x0000020F
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x32
	ldrh r1, [r0, #0x00]
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r9
	strh r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x34
	ldrh r1, [r0, #0x00]
	ldr r2, _08147588 @ =0x0000023E
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	ldr r0, _0814758C @ =0x08148CA5
	mov r4, r10
	str r0, [r4, #0x00]
_08147572:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147584: .4byte 0x0000020F
_08147588: .4byte 0x0000023E
_0814758C: .4byte sub_8148CA4
