	.syntax unified
	.text

	thumb_func_start sub_8083934
sub_8083934:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	str r0, [sp, #0x010]
	ldr r5, [sp, #0x044]
	ldr r0, [sp, #0x048]
	ldr r4, [sp, #0x04C]
	ldr r6, [sp, #0x050]
	mov r10, r6
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x014]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x018]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x01C]
	cmp r6, #0x00
	bne _08083970
	movs r0, #0x03
	bl sub_81980C8
	ldr r0, [r0, #0x00]
	mov r10, r0
_08083970:
	mov r1, r10
	ldr r0, [r1, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	ldr r2, [sp, #0x018]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #0x09
	adds r0, r0, r6
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	ldr r0, [sp, #0x01C]
	ands r0, r1
	str r0, [sp, #0x01C]
	movs r6, #0x01
	movs r1, #0x0A
	mov r9, r1
	cmp r5, #0x09
	ble _080839AC
_0808399A:
	adds r6, #0x01
	mov r2, r9
	lsls r0, r2, #0x02
	add r0, r9
	lsls r0, r0, #0x01
	mov r9, r0
	subs r0, #0x01
	cmp r0, r5
	blt _0808399A
_080839AC:
	cmp r4, #0x00
	beq _080839DC
	cmp r4, #0x01
	bne _080839C8
	lsls r0, r6, #0x03
	subs r0, r0, r6
	subs r0, r7, r0
	lsls r0, r0, #0x10
	ldr r1, _080839C4 @ =0xFFFF0000
	adds r0, r0, r1
	b _080839DA
	.byte 0x00, 0x00
_080839C4: .4byte 0xFFFF0000
_080839C8:
	cmp r4, #0x02
	bne _080839DC
	lsls r0, r6, #0x03
	subs r0, r0, r6
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r0, r7, r0
	lsls r0, r0, #0x10
_080839DA:
	lsrs r7, r0, #0x10
_080839DC:
	subs r6, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	beq _08083A6E
	ldr r1, _08083A80 @ =0x0819832C
	ldr r0, _08083A84 @ =0x08198220
	subs r1, r1, r0
	str r1, [sp, #0x020]
_080839EE:
	adds r2, r7, #0x7
	mov r8, r2
	ldr r1, [sp, #0x014]
	lsls r0, r1, #0x03
	cmp r8, r0
	bgt _08083A6E
	lsls r0, r5, #0x02
	adds r0, r0, r5
	lsls r5, r0, #0x01
	ldr r0, _08083A88 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r0, [sp, #0x020]
	adds r2, r2, r0
	adds r0, r5, #0x0
	mov r1, r9
	bl _call_via_r2
	adds r4, r0, #0x0
	adds r3, r4, #0x0
	adds r3, #0x30
	adds r1, r3, #0x0
	cmp r3, #0x00
	bge _08083A20
	adds r1, r4, #0x0
	adds r1, #0x37
_08083A20:
	asrs r1, r1, #0x03
	lsls r1, r1, #0x02
	add r1, r10
	movs r0, #0x07
	ands r0, r3
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x04]
	lsrs r1, r0
	movs r0, #0x0F
	ands r1, r0
	movs r2, #0x06
	subs r2, r2, r1
	lsrs r2, r2, #0x01
	adds r2, r7, r2
	mov r1, r10
	str r1, [sp, #0x000]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x01C]
	str r0, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldr r0, [sp, #0x010]
	ldr r1, [sp, #0x014]
	ldr r3, [sp, #0x018]
	bl sub_8199E48
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	mov r0, r9
	muls r0, r4
	subs r5, r5, r0
	subs r6, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	bne _080839EE
_08083A6E:
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08083A80: .4byte 0x0819832C
_08083A84: .4byte 0x08198220
_08083A88: .4byte 0x03001038
