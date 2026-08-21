	.syntax unified
	.text

	thumb_func_start sub_8081568
sub_8081568:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	mov r8, r0
	movs r7, #0x00
	ldr r0, _0808160C @ =0x03000FD8
	mov r9, r0
_0808157A:
	ldr r0, _0808160C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	beq _08081598
	b _08081784
_08081598:
	mov r1, r8
	ldr r1, [r1, #0x28]
	mov r12, r1
	movs r0, #0x81
	lsls r0, r0, #0x01
	add r0, r12
	movs r4, #0x00
	ldsh r2, [r0, r4]
	ldr r3, [r5, #0x28]
	movs r1, #0x82
	lsls r1, r1, #0x01
	adds r0, r3, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r0, #0x66
	muls r2, r0
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r1, r0, #0x04
	adds r0, r0, r1
	subs r2, r2, r0
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080815CC
	ldr r1, _08081610 @ =0x000001FF
	adds r0, r2, r1
_080815CC:
	asrs r2, r0, #0x09
	cmp r2, #0x01
	bgt _080815D4
	movs r2, #0x02
_080815D4:
	adds r4, r2, #0x0
	mov r0, r8
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080815E2
	lsls r4, r4, #0x01
_080815E2:
	ldr r0, _08081614 @ =0x0000012B
	add r0, r12
	ldrb r0, [r0, #0x00]
	cmp r0, #0x09
	bne _080816D2
	cmp r4, #0x00
	ble _08081666
	ldr r0, _08081618 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0x8A
	ldrb r1, [r2, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0xFF
	beq _0808161C
	adds r0, r1, #0x0
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	b _0808161E
_0808160C: .4byte 0x03000FD8
_08081610: .4byte 0x000001FF
_08081614: .4byte 0x0000012B
_08081618: .4byte 0x03000FF4
_0808161C:
	movs r1, #0x00
_0808161E:
	adds r2, r1, #0x0
	ldr r6, [r6, #0x00]
	mov r12, r6
	mov r1, r12
	adds r1, #0x8B
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _08081638
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	adds r2, r2, r1
_08081638:
	mov r1, r12
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _08081646
	lsls r0, r0, #0x06
	adds r2, r2, r0
_08081646:
	mov r1, r12
	adds r1, #0x8D
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _08081658
	movs r1, #0x4C
	muls r0, r1
	adds r0, r2, r0
	b _0808165A
_08081658:
	adds r0, r2, #0x0
_0808165A:
	cmp r0, #0x00
	bge _08081660
	adds r0, #0xFF
_08081660:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	b _080816D0
_08081666:
	ldr r0, _08081684 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0x8A
	ldrb r1, [r2, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0xFF
	beq _08081688
	adds r0, r1, #0x0
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	b _0808168A
	.byte 0x00, 0x00
_08081684: .4byte 0x03000FF4
_08081688:
	movs r1, #0x00
_0808168A:
	adds r2, r1, #0x0
	ldr r6, [r6, #0x00]
	mov r12, r6
	mov r1, r12
	adds r1, #0x8B
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080816A4
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	adds r2, r2, r1
_080816A4:
	mov r1, r12
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080816B2
	lsls r0, r0, #0x06
	adds r2, r2, r0
_080816B2:
	mov r1, r12
	adds r1, #0x8D
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080816C4
	movs r1, #0x4C
	muls r0, r1
	adds r0, r2, r0
	b _080816C6
_080816C4:
	adds r0, r2, #0x0
_080816C6:
	cmp r0, #0x00
	bge _080816CC
	adds r0, #0xFF
_080816CC:
	asrs r0, r0, #0x08
	subs r0, r4, r0
_080816D0:
	adds r4, r0, #0x0
_080816D2:
	mov r1, r9
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x0D]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080816E2
	lsls r4, r4, #0x01
_080816E2:
	adds r3, #0xF6
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r4
	bgt _080816F8
	movs r0, #0x00
	strh r0, [r3, #0x00]
	adds r0, r5, #0x0
	bl sub_8086700
	b _080816FE
_080816F8:
	ldrh r0, [r3, #0x00]
	subs r0, r0, r4
	strh r0, [r3, #0x00]
_080816FE:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08081706
	adds r1, #0xFF
_08081706:
	asrs r6, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08081710
	adds r2, #0xFF
_08081710:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0808171A
	adds r3, #0xFF
_0808171A:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r0, #0x0B
	str r0, [sp, #0x004]
	str r1, [sp, #0x008]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_807CC3C
	ldr r0, _0808179C @ =0x0000017B
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08081744
	adds r1, #0xFF
_08081744:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0808174E
	adds r2, #0xFF
_0808174E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08081758
	adds r3, #0xFF
_08081758:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	bl sub_80DF024
	ldr r0, [r5, #0x28]
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r2, [r0, #0x08]
	movs r1, #0x08
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08081776
	movs r2, #0x01
_08081776:
	lsls r1, r2, #0x18
	asrs r1, r1, #0x18
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08081784:
	adds r7, #0x01
	cmp r7, #0x05
	bgt _0808178C
	b _0808157A
_0808178C:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808179C: .4byte 0x0000017B
