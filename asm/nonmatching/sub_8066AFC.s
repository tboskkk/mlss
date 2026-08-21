	.syntax unified
	.text

	thumb_func_start sub_8066AFC
sub_8066AFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r0, #0xA4
	str r0, [sp, #0x000]
	adds r6, r4, #0x0
	adds r6, #0xAC
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r7, r4, #0x0
	adds r7, #0xA0
	ldr r1, [r7, #0x00]
	bl __divsi3
	adds r3, r4, #0x0
	adds r3, #0xAE
	str r3, [sp, #0x004]
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r4, #0x10]
	subs r3, #0x06
	str r3, [sp, #0x008]
	movs r0, #0x00
	ldsh r1, [r6, r0]
	ldr r0, [r3, #0x00]
	muls r0, r1
	ldr r1, [r7, #0x00]
	bl __divsi3
	movs r1, #0xB0
	adds r1, r1, r4
	mov r10, r1
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r3, #0x00
	ldsh r2, [r6, r3]
	ldr r0, [r7, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r0, [sp, #0x00C]
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r5, r4, #0x0
	adds r5, #0x8C
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	movs r2, #0xB2
	adds r2, r2, r4
	mov r8, r2
	movs r3, #0x00
	ldsh r0, [r2, r3]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	movs r1, #0x00
	mov r9, r1
	strh r0, [r6, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08066C2A
	str r1, [r4, #0x18]
	subs r1, #0x01
	movs r0, #0x7C
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _08066BAE
	adds r1, #0xFF
_08066BAE:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _08066BC0
	adds r0, r4, #0x0
	bl sub_807C298
	b _08066C2A
_08066BC0:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08066BC8
	adds r0, #0xFF
_08066BC8:
	asrs r0, r0, #0x08
	ldr r2, [sp, #0x004]
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08066BD6
	adds r0, #0xFF
_08066BD6:
	asrs r0, r0, #0x08
	mov r3, r10
	strh r0, [r3, #0x00]
	mov r1, r9
	mov r0, r8
	strh r1, [r0, #0x00]
	movs r0, #0x02
	str r0, [r5, #0x00]
	ldr r1, _08066C3C @ =0x03001038
	movs r0, #0x80
	lsls r0, r0, #0x0F
	ldr r1, [r1, #0x00]
	bl _call_via_r1
	ldr r1, _08066C40 @ =0x00000299
	bl __divsi3
	adds r4, r0, #0x0
	lsrs r1, r4, #0x1F
	adds r1, r4, r1
	asrs r1, r1, #0x01
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x08
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	bl __divsi3
	cmp r0, #0x01
	bne _08066C14
	movs r0, #0x02
_08066C14:
	negs r0, r0
	ldr r3, [sp, #0x00C]
	str r0, [r3, #0x00]
	str r4, [r7, #0x00]
	ldr r0, _08066C44 @ =0xFFFFF800
	ldr r1, [sp, #0x000]
	str r0, [r1, #0x00]
	mov r2, r9
	ldr r3, [sp, #0x008]
	str r2, [r3, #0x00]
	strh r2, [r6, #0x00]
_08066C2A:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066C3C: .4byte 0x03001038
_08066C40: .4byte 0x00000299
_08066C44: .4byte 0xFFFFF800
