	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81596E4
sub_81596E4:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	movs r0, #0xA1
	lsls r0, r0, #0x03
	adds r3, r4, r0
	ldr r0, [r3, #0x00]
	ldr r2, [r6, #0x00]
	adds r5, r0, r2
	ldr r1, _0815970C @ =0x0000050C
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r6, #0x04]
	adds r1, r1, r0
	movs r0, #0xF0
	lsls r0, r0, #0x08
	cmp r5, r0
	ble _08159710
	subs r0, r0, r2
	b _08159716
_0815970C: .4byte 0x0000050C
_08159710:
	cmp r5, #0x00
	bge _08159718
	negs r0, r2
_08159716:
	str r0, [r3, #0x00]
_08159718:
	movs r0, #0xA0
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _08159734
	ldr r3, _08159730 @ =0x0000050C
	adds r2, r4, r3
	ldr r1, [r6, #0x04]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	adds r5, r1, #0x0
	b _08159742
	.byte 0x00, 0x00
_08159730: .4byte 0x0000050C
_08159734:
	ldr r5, [r6, #0x04]
	cmp r1, #0x00
	bge _08159742
	ldr r7, _081597E8 @ =0x0000050C
	adds r1, r4, r7
	negs r0, r5
	str r0, [r1, #0x00]
_08159742:
	movs r0, #0xA3
	lsls r0, r0, #0x03
	adds r2, r4, r0
	ldrh r1, [r2, #0x00]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	ble _081597AC
	adds r0, r1, #0x0
	adds r0, #0x0C
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xFF
	ble _08159764
	movs r0, #0x00
	strh r0, [r2, #0x00]
_08159764:
	ldr r1, _081597EC @ =0x08198584
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r7, #0x00
	ldsh r1, [r0, r7]
	cmp r1, #0x00
	bge _08159776
	adds r1, #0x3F
_08159776:
	asrs r1, r1, #0x06
	lsls r0, r1, #0x01
	adds r0, r0, r1
	ldr r2, _081597F0 @ =0x0000051C
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r7, _081597F4 @ =0x00000514
	adds r3, r4, r7
	strh r0, [r3, #0x00]
	movs r0, #0xA1
	lsls r0, r0, #0x03
	adds r2, r4, r0
	movs r1, #0xA2
	lsls r1, r1, #0x03
	adds r0, r4, r1
	movs r7, #0x00
	ldsh r1, [r0, r7]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, _081597E8 @ =0x0000050C
	adds r2, r4, r0
	movs r7, #0x00
	ldsh r1, [r3, r7]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
_081597AC:
	movs r0, #0xA0
	lsls r0, r0, #0x03
	adds r2, r4, r0
	movs r3, #0xA1
	lsls r3, r3, #0x03
	adds r1, r4, r3
	ldr r0, [r6, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	negs r0, r0
	str r0, [r2, #0x00]
	ldr r7, _081597F8 @ =0x00000504
	adds r1, r4, r7
	ldr r2, _081597E8 @ =0x0000050C
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	adds r0, r5, r0
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r0, _081597FC @ =0x04000006
	ldrh r0, [r0, #0x00]
	cmp r0, #0x9F
	bls _081597E2
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_8159800
_081597E2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081597E8: .4byte 0x0000050C
_081597EC: .4byte 0x08198584
_081597F0: .4byte 0x0000051C
_081597F4: .4byte 0x00000514
_081597F8: .4byte 0x00000504
_081597FC: .4byte 0x04000006
	thumb_func_start sub_8159800
sub_8159800:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r3, r0, #0x0
	movs r0, #0xA1
	lsls r0, r0, #0x03
	adds r2, r3, r0
	ldr r0, [r1, #0x00]
	ldr r2, [r2, #0x00]
	adds r0, r0, r2
	asrs r5, r0, #0x08
	ldr r0, _08159870 @ =0x0000050C
	adds r2, r3, r0
	ldr r0, [r1, #0x04]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	asrs r2, r0, #0x08
	ldr r1, _08159874 @ =0x0000052C
	adds r4, r3, r1
	adds r1, #0x04
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08159838
	adds r0, #0xFF
_08159838:
	asrs r1, r0, #0x08
	ldr r0, [r4, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _08159844
	adds r0, #0xFF
_08159844:
	asrs r6, r0, #0x08
	movs r7, #0x00
	movs r0, #0x80
	mov r9, r0
	ldr r1, _08159878 @ =0x03001038
	mov r10, r1
	mov r0, r9
	subs r5, r0, r5
	mov r8, r5
	adds r5, r3, #0x0
_08159858:
	subs r0, r2, r6
	cmp r7, r0
	blt _08159864
	adds r0, r2, r6
	cmp r7, r0
	ble _0815987C
_08159864:
	movs r0, #0x00
	strh r0, [r5, #0x00]
	mov r1, r9
	subs r0, r1, r7
	strh r0, [r5, #0x02]
	b _0815989E
_08159870: .4byte 0x0000050C
_08159874: .4byte 0x0000052C
_08159878: .4byte 0x03001038
_0815987C:
	subs r1, r7, r2
	adds r0, r6, #0x0
	muls r0, r6
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	subs r0, r0, r1
	mov r3, r10
	ldr r1, [r3, #0x00]
	str r2, [sp, #0x000]
	bl _call_via_r1
	mov r1, r8
	strh r1, [r5, #0x00]
	subs r0, r0, r7
	strh r0, [r5, #0x02]
	ldr r2, [sp, #0x000]
_0815989E:
	adds r3, r5, #0x0
	adds r3, #0x08
	adds r4, r7, #0x1
	subs r0, r2, r6
	cmp r4, r0
	blt _081598B0
	adds r0, r2, r6
	cmp r4, r0
	ble _081598BC
_081598B0:
	movs r0, #0x00
	strh r0, [r5, #0x08]
	mov r1, r9
	subs r0, r1, r4
	strh r0, [r3, #0x02]
	b _081598EA
_081598BC:
	subs r1, r4, r2
	adds r0, r6, #0x0
	muls r0, r6
	mov r12, r0
	adds r0, r1, #0x0
	muls r0, r1
	mov r1, r12
	subs r1, r1, r0
	str r1, [sp, #0x00C]
	mov r0, r10
	ldr r0, [r0, #0x00]
	mov r12, r0
	adds r0, r1, #0x0
	str r2, [sp, #0x000]
	str r3, [sp, #0x004]
	bl sub_81DAA98
	mov r1, r8
	strh r1, [r5, #0x08]
	subs r0, r0, r4
	ldr r3, [sp, #0x004]
	strh r0, [r3, #0x02]
	ldr r2, [sp, #0x000]
_081598EA:
	adds r5, #0x10
	adds r7, #0x02
	cmp r7, #0x9F
	ble _08159858
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
