	.syntax unified
	.text

	thumb_func_start sub_808552C
sub_808552C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	mov r10, r3
	ldr r4, [sp, #0x03C]
	ldr r6, [sp, #0x044]
	mov r0, r10
	muls r0, r3
	ldr r2, [sp, #0x034]
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	ldr r2, _08085724 @ =0x03001038
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r5, r0, #0x0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	muls r0, r4
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	ldr r2, [sp, #0x038]
	lsrs r1, r2, #0x1F
	adds r1, r2, r1
	asrs r1, r1, #0x01
	muls r1, r4
	lsrs r2, r1, #0x1F
	adds r1, r1, r2
	asrs r1, r1, #0x01
	subs r0, r0, r1
	ldr r2, _08085724 @ =0x03001038
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	lsls r0, r0, #0x01
	adds r7, r4, r0
	lsrs r0, r7, #0x1F
	adds r0, r7, r0
	asrs r0, r0, #0x01
	muls r0, r7
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r1, r0, #0x01
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _0808559C
	adds r0, r5, #0x3
_0808559C:
	asrs r0, r0, #0x02
	muls r0, r5
	cmp r0, #0x00
	bge _080855A6
	adds r0, #0x03
_080855A6:
	asrs r0, r0, #0x02
	adds r0, r1, r0
	ldr r4, _08085724 @ =0x03001038
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	adds r4, r0, #0x0
	lsls r4, r4, #0x02
	ldr r0, _08085728 @ =0x08198220
	mov r8, r0
	ldr r1, _0808572C @ =0x0819832C
	subs r5, r1, r0
	ldr r0, _08085724 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	ldr r1, [sp, #0x040]
	adds r0, r1, #0x0
	muls r0, r7
	lsls r0, r0, #0x01
	asrs r1, r4, #0x01
	adds r0, r0, r1
	adds r1, r4, #0x0
	bl _call_via_r2
	ldr r2, [sp, #0x008]
	strh r0, [r2, #0x00]
	ldr r0, _08085724 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	ldr r1, [sp, #0x040]
	lsrs r0, r1, #0x1F
	adds r0, r1, r0
	asrs r0, r0, #0x01
	adds r4, r4, r0
	adds r0, r4, #0x0
	bl _call_via_r2
	mov r9, r0
	movs r3, #0x00
	mov r2, r10
	lsls r2, r2, #0x0E
	mov r12, r2
	ldr r4, [sp, #0x034]
	lsls r4, r4, #0x0E
	str r4, [sp, #0x00C]
	ldr r1, _08085724 @ =0x03001038
	mov r10, r1
	mov r5, r8
	movs r2, #0x01
	add r2, r9
	mov r8, r2
_0808560C:
	movs r2, #0x80
	lsls r2, r2, #0x07
	subs r7, r0, #0x1
	cmp r0, #0x00
	ble _0808568C
	adds r4, r0, #0x0
	negs r1, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08085656
	cmp r1, #0x03
	bge _08085644
	cmp r1, #0x02
	bge _08085636
	lsls r0, r6, #0x0E
	cmp r0, #0x00
	bge _08085632
	adds r0, #0xFF
_08085632:
	asrs r2, r0, #0x08
	adds r4, r7, #0x0
_08085636:
	adds r0, r2, #0x0
	muls r0, r6
	cmp r0, #0x00
	bge _08085640
	adds r0, #0xFF
_08085640:
	asrs r2, r0, #0x08
	subs r4, #0x01
_08085644:
	adds r0, r2, #0x0
	muls r0, r6
	cmp r0, #0x00
	bge _0808564E
	adds r0, #0xFF
_0808564E:
	asrs r2, r0, #0x08
	subs r4, #0x01
	cmp r4, #0x00
	beq _0808568C
_08085656:
	adds r0, r2, #0x0
	muls r0, r6
	cmp r0, #0x00
	bge _08085660
	adds r0, #0xFF
_08085660:
	asrs r2, r0, #0x08
	adds r0, r2, #0x0
	muls r0, r6
	cmp r0, #0x00
	bge _0808566C
	adds r0, #0xFF
_0808566C:
	asrs r2, r0, #0x08
	adds r0, r2, #0x0
	muls r0, r6
	cmp r0, #0x00
	bge _08085678
	adds r0, #0xFF
_08085678:
	asrs r2, r0, #0x08
	adds r0, r2, #0x0
	muls r0, r6
	cmp r0, #0x00
	bge _08085684
	adds r0, #0xFF
_08085684:
	asrs r2, r0, #0x08
	subs r4, #0x04
	cmp r4, #0x00
	bne _08085656
_0808568C:
	adds r3, r3, r2
	adds r0, r7, #0x0
	cmp r0, #0x00
	bne _0808560C
	ldr r4, _0808572C @ =0x0819832C
	subs r5, r4, r5
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	lsrs r4, r3, #0x1F
	adds r4, r3, r4
	asrs r4, r4, #0x01
	mov r1, r12
	adds r0, r1, r4
	adds r1, r3, #0x0
	str r3, [sp, #0x010]
	bl _call_via_r2
	ldr r2, [sp, #0x000]
	strh r0, [r2, #0x00]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	ldr r1, [sp, #0x00C]
	adds r4, r1, r4
	adds r0, r4, #0x0
	ldr r3, [sp, #0x010]
	adds r1, r3, #0x0
	bl _call_via_r2
	ldr r2, [sp, #0x004]
	strh r0, [r2, #0x00]
	mov r4, r8
	mov r1, r9
	muls r1, r4
	mov r0, r10
	ldr r3, [r0, #0x00]
	adds r3, r3, r5
	ldr r2, [sp, #0x008]
	movs r4, #0x00
	ldsh r0, [r2, r4]
	mov r2, r9
	muls r2, r0
	adds r0, r2, #0x0
	ldr r4, [sp, #0x038]
	subs r0, r4, r0
	lsls r0, r0, #0x01
	lsrs r2, r1, #0x1F
	adds r2, r1, r2
	asrs r2, r2, #0x01
	adds r0, r0, r2
	bl _call_via_r3
	adds r4, r0, #0x0
	ldr r0, [sp, #0x048]
	cmp r0, #0x00
	beq _08085710
	ldr r1, [sp, #0x008]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r1, r4, #0x0
	ldr r2, [sp, #0x038]
	bl sub_80878FC
	ldr r1, [sp, #0x048]
	str r0, [r1, #0x00]
_08085710:
	adds r0, r4, #0x0
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08085724: .4byte 0x03001038
_08085728: .4byte 0x08198220
_0808572C: .4byte 0x0819832C
