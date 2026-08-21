	.syntax unified
	.text

	thumb_func_start sub_8072FDC
sub_8072FDC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r5, r6, #0x0
	adds r5, #0x0C
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	adds r4, r6, #0x0
	adds r4, #0x84
	ldr r1, [r4, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r3, r6, #0x0
	adds r3, #0x88
	ldr r1, [r3, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r0, #0x08
	lsls r0, r0, #0x08
	adds r2, r6, #0x0
	adds r2, #0x8C
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x008]
	movs r7, #0x80
	lsls r7, r7, #0x01
	movs r0, #0x00
	mov r8, r0
	cmp r5, #0x00
	beq _080730B8
	str r4, [sp, #0x00C]
	mov r10, r3
	mov r9, r2
_0807303C:
	ldr r0, _080730A0 @ =0x03000E80
	mov r2, r8
	lsls r1, r2, #0x01
	adds r4, r1, r0
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080730A4
	ldr r1, [sp, #0x000]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	ldr r2, [sp, #0x00C]
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x04]
	ldrh r0, [r4, #0x00]
	ldr r1, [sp, #0x004]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	mov r2, r10
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x08]
	ldrh r0, [r4, #0x00]
	ldr r1, [sp, #0x008]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x0C]
	ldrh r0, [r4, #0x00]
	adds r0, #0x0C
	movs r1, #0x00
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xFF
	bls _080730AE
	strh r1, [r4, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x01
	strh r0, [r1, #0x00]
	b _080730AE
_080730A0: .4byte 0x03000E80
_080730A4:
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r5, #0x04]
	str r0, [r5, #0x08]
	str r0, [r5, #0x0C]
_080730AE:
	ldr r5, [r5, #0x00]
	movs r0, #0x01
	add r8, r0
	cmp r5, #0x00
	bne _0807303C
_080730B8:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
