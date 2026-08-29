	.syntax unified
	.text

	thumb_func_start sub_80E8FB8
sub_80E8FB8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	adds r6, r2, #0x0
	adds r5, r3, #0x0
	ldr r0, [sp, #0x020]
	ldr r4, [sp, #0x024]
	lsls r6, r6, #0x10
	lsls r5, r5, #0x10
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r2, r9
	ldr r0, [r2, #0x04]
	movs r2, #0xCA
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldr r1, [r1, #0x2C]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	mov r0, r9
	bl sub_80E8F1C
	mov r2, r9
	ldr r1, [r2, #0x04]
	ldr r2, _080E9068 @ =0x000001B7
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1C
	lsls r1, r1, #0x0C
	orrs r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r12, r1
	lsrs r6, r6, #0x13
	mov r8, r6
	lsrs r5, r5, #0x13
	adds r0, r7, r6
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r4, r4, r5
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r5, r4
	bcs _080E905A
	adds r6, r7, #0x0
	mov r10, r4
_080E9020:
	mov r3, r8
	adds r7, r5, #0x1
	cmp r3, r6
	bcs _080E9052
	mov r1, r9
	ldr r0, [r1, #0x04]
	lsls r5, r5, #0x05
	movs r2, #0xC2
	lsls r2, r2, #0x01
	adds r4, r0, r2
_080E9034:
	adds r1, r5, r3
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r0
	mov r2, r12
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	strh r2, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r6
	bcc _080E9034
_080E9052:
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r10
	bcc _080E9020
_080E905A:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E9068: .4byte 0x000001B7
