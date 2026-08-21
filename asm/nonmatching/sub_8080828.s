	.syntax unified
	.text

	thumb_func_start sub_8080828
sub_8080828:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	str r0, [sp, #0x00C]
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08080842
	b _08080A2A
_08080842:
	ldr r0, _08080988 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x1C]
	adds r0, #0x08
	str r0, [sp, #0x010]
	movs r0, #0x00
	mov r10, r0
	ldr r4, [sp, #0x010]
_08080852:
	ldrb r1, [r4, #0x02]
	movs r5, #0x01
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08080868
	ldrh r1, [r4, #0x00]
	mov r0, r10
	movs r2, #0x01
	bl sub_807B838
_08080868:
	mov r2, r10
	adds r2, #0x01
	ldrb r1, [r4, #0x06]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08080880
	ldrh r1, [r4, #0x04]
	adds r0, r2, #0x0
	movs r2, #0x01
	bl sub_807B838
_08080880:
	mov r2, r10
	adds r2, #0x02
	ldrb r1, [r4, #0x0A]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08080898
	ldrh r1, [r4, #0x08]
	adds r0, r2, #0x0
	movs r2, #0x01
	bl sub_807B838
_08080898:
	adds r4, #0x0C
	movs r1, #0x03
	add r10, r1
	mov r0, r10
	cmp r0, #0x05
	ble _08080852
	movs r1, #0x00
	mov r10, r1
_080808A8:
	ldr r0, _08080988 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x58
	mov r9, r0
	mov r0, r10
	lsls r2, r0, #0x02
	ldr r1, [sp, #0x010]
	adds r0, r2, r1
	ldrb r1, [r0, #0x02]
	movs r0, #0x30
	ands r0, r1
	adds r4, r2, #0x0
	mov r1, r10
	adds r1, #0x01
	str r1, [sp, #0x014]
	cmp r0, #0x00
	beq _08080968
	mov r1, r9
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08080968
	movs r7, #0x00
	movs r0, #0x30
	mov r8, r0
	mov r6, r9
	ldr r5, [sp, #0x010]
_080808E8:
	cmp r10, r7
	beq _0808090C
	ldrb r2, [r5, #0x02]
	ldr r1, [sp, #0x010]
	adds r0, r4, r1
	ldrb r3, [r0, #0x02]
	mov r1, r8
	ands r1, r2
	mov r0, r8
	ands r0, r3
	cmp r1, r0
	bne _0808090C
	mov r1, r9
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x00]
	bl sub_807FDE8
_0808090C:
	adds r1, r5, #0x4
	adds r0, r7, #0x1
	cmp r10, r0
	beq _08080934
	ldrb r2, [r1, #0x02]
	ldr r1, [sp, #0x010]
	adds r0, r4, r1
	ldrb r3, [r0, #0x02]
	mov r1, r8
	ands r1, r2
	mov r0, r8
	ands r0, r3
	cmp r1, r0
	bne _08080934
	mov r1, r9
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x04]
	bl sub_807FDE8
_08080934:
	adds r1, r5, #0x0
	adds r1, #0x08
	adds r0, r7, #0x2
	cmp r10, r0
	beq _0808095E
	ldrb r2, [r1, #0x02]
	ldr r1, [sp, #0x010]
	adds r0, r4, r1
	ldrb r3, [r0, #0x02]
	mov r1, r8
	ands r1, r2
	mov r0, r8
	ands r0, r3
	cmp r1, r0
	bne _0808095E
	mov r1, r9
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x08]
	bl sub_807FDE8
_0808095E:
	adds r6, #0x0C
	adds r5, #0x0C
	adds r7, #0x03
	cmp r7, #0x05
	ble _080808E8
_08080968:
	ldr r0, [sp, #0x014]
	mov r10, r0
	cmp r0, #0x05
	ble _080808A8
	ldr r5, _08080988 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r1, _0808098C @ =0x000002B9
	adds r0, r0, r1
	ldrb r4, [r0, #0x00]
	cmp r4, #0x01
	beq _080809A0
	cmp r4, #0x01
	bgt _08080990
	cmp r4, #0x00
	beq _0808099A
	b _08080A20
_08080988: .4byte 0x03000FD8
_0808098C: .4byte 0x000002B9
_08080990:
	cmp r4, #0x02
	beq _080809DC
	cmp r4, #0x03
	beq _080809FC
	b _08080A20
_0808099A:
	movs r1, #0x01
	negs r1, r1
	b _080809A6
_080809A0:
	movs r1, #0x01
	negs r1, r1
	movs r4, #0x00
_080809A6:
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x06
	movs r2, #0x36
	movs r3, #0x5C
	bl sub_807AFD4
	movs r1, #0x02
	negs r1, r1
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x07
	movs r2, #0x28
	movs r3, #0x7C
	bl sub_807AFD4
	ldr r2, [r5, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x80
	ldr r0, [r2, #0x70]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r2, #0x74]
	str r0, [r1, #0x00]
	b _08080A20
_080809DC:
	movs r1, #0x01
	negs r1, r1
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x06
	movs r2, #0x2F
	movs r3, #0x73
	bl sub_807AFD4
	ldr r0, [r5, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x80
	ldr r1, [r0, #0x70]
	b _08080A1A
_080809FC:
	movs r1, #0x02
	negs r1, r1
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x07
	movs r2, #0x2F
	movs r3, #0x73
	bl sub_807AFD4
	ldr r0, [r5, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x80
	ldr r1, [r0, #0x74]
_08080A1A:
	str r1, [r2, #0x00]
	adds r0, #0x84
	str r4, [r0, #0x00]
_08080A20:
	movs r0, #0x00
	ldr r1, [sp, #0x00C]
	strh r0, [r1, #0x10]
	ldr r0, _08080A3C @ =0x08080A41
	str r0, [r1, #0x04]
_08080A2A:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080A3C: .4byte sub_8080A40
