	.syntax unified
	.text

	thumb_func_start sub_80751A8
sub_80751A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0x0
	movs r0, #0x9C
	adds r0, r0, r7
	mov r10, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x02
	bne _080751D0
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	ldr r2, _08075238 @ =0xFFFFFA00
	adds r1, r1, r2
	str r1, [r0, #0x00]
	ldr r0, [r7, #0x08]
	strh r1, [r0, #0x0C]
_080751D0:
	ldr r1, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x02
	mov r9, r3
	add r1, r9
	str r1, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r4, [r0, r2]
	lsls r4, r4, #0x08
	movs r3, #0xAE
	adds r3, r3, r7
	mov r8, r3
	movs r2, #0x00
	ldsh r0, [r3, r2]
	lsls r0, r0, #0x08
	subs r0, r0, r1
	adds r6, r7, #0x0
	adds r6, #0x88
	ldr r1, [r6, #0x00]
	muls r0, r1
	adds r5, r7, #0x0
	adds r5, #0x84
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r4, r4, r0
	str r4, [r7, #0x14]
	adds r2, r7, #0x0
	adds r2, #0x8C
	ldr r0, [r7, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x18]
	ldr r0, [r2, #0x00]
	subs r0, #0x80
	str r0, [r2, #0x00]
	mov r3, r10
	ldr r0, [r3, #0x00]
	mov r3, r8
	cmp r0, #0x02
	bne _08075240
	ldr r1, [r7, #0x18]
	ldr r0, _0807523C @ =0x000007FF
	cmp r1, r0
	bgt _0807524E
	mov r0, r9
	str r0, [r2, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x04
	b _0807524C
_08075238: .4byte 0xFFFFFA00
_0807523C: .4byte 0x000007FF
_08075240:
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bge _0807524E
	mov r1, r9
	str r1, [r2, #0x00]
	movs r0, #0x00
_0807524C:
	str r0, [r7, #0x18]
_0807524E:
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r7, #0x10]
	cmp r1, r0
	ble _080752A8
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r0, r3
	str r0, [r6, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	ldr r0, _080752B8 @ =0x08075DF5
	str r0, [r7, #0x4C]
_080752A8:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080752B8: .4byte sub_8075DF4
