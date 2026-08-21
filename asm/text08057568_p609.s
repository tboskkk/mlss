	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8086424
sub_8086424:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r8, r0
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	mov r0, r8
	ldr r4, [r0, #0x38]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r3, [r0, #0x00]
	mov r5, r8
	ldr r2, [r5, #0x3C]
	adds r0, #0x04
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x40]
	adds r5, #0xAE
	str r5, [sp, #0x004]
	adds r5, #0x02
	str r5, [sp, #0x008]
	adds r5, #0x02
	str r5, [sp, #0x00C]
	ldr r5, [sp, #0x000]
	subs r7, r5, r4
	subs r3, r3, r2
	subs r6, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x02
	mov r10, r0
	adds r0, r7, #0x0
	cmp r7, #0x00
	bge _08086472
	adds r0, r7, #0x3
_08086472:
	asrs r7, r0, #0x02
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _0808647C
	adds r0, r3, #0x3
_0808647C:
	asrs r3, r0, #0x02
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _08086486
	adds r0, r6, #0x3
_08086486:
	asrs r6, r0, #0x02
	cmp r7, #0x00
	bne _080864A2
	cmp r3, #0x00
	bne _080864A2
	cmp r6, #0x00
	bne _080864A2
	ldr r1, [sp, #0x004]
	strh r6, [r1, #0x00]
	ldr r2, [sp, #0x008]
	strh r6, [r2, #0x00]
	ldr r5, [sp, #0x00C]
	strh r6, [r5, #0x00]
	b _08086506
_080864A2:
	ldr r0, _08086544 @ =0x03001038
	mov r9, r0
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	mov r2, r9
	ldr r1, [r2, #0x00]
	str r3, [sp, #0x010]
	bl _call_via_r1
	adds r5, r0, #0x0
	ldr r4, _08086548 @ =0x0819832C
	ldr r0, _0808654C @ =0x08198220
	subs r4, r4, r0
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	mov r0, r10
	muls r0, r7
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x004]
	strh r0, [r1, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r3, [sp, #0x010]
	mov r0, r10
	muls r0, r3
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x008]
	strh r0, [r1, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	mov r0, r10
	muls r0, r6
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x00C]
	strh r0, [r1, #0x00]
_08086506:
	mov r0, r8
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _08086550
	adds r0, #0x02
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	bne _08086550
	mov r0, r8
	movs r1, #0x01
	negs r1, r1
	adds r2, r1, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	mov r5, r8
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	str r4, [r5, #0x58]
	ldr r0, [r5, #0x50]
	str r0, [r5, #0x4C]
	str r4, [r5, #0x50]
	b _080865D6
	.byte 0x00, 0x00
_08086544: .4byte 0x03001038
_08086548: .4byte 0x0819832C
_0808654C: .4byte 0x08198220
_08086550:
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08086586
	mov r1, r8
	ldr r0, [r1, #0x08]
	ldrh r1, [r0, #0x16]
	ldrb r0, [r0, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r1, r0
	ldr r2, _080865E8 @ =0x00002002
	cmp r1, r2
	beq _08086586
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08086586:
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _080865BC
	mov r1, r8
	ldr r0, [r1, #0x08]
	ldrh r1, [r0, #0x16]
	ldrb r0, [r0, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r1, r0
	ldr r2, _080865EC @ =0x0000204F
	cmp r1, r2
	beq _080865BC
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080865BC:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _080865D0
	mov r2, r8
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_080865D0:
	ldr r0, _080865F0 @ =0x080865F5
	mov r5, r8
	str r0, [r5, #0x4C]
_080865D6:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080865E8: .4byte 0x00002002
_080865EC: .4byte 0x0000204F
_080865F0: .4byte sub_80865F4
	thumb_func_start sub_80865F4
sub_80865F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r3, [r4, #0x38]
	mov r10, r3
	add r1, r10
	str r1, [r4, #0x10]
	adds r0, #0x02
	movs r5, #0x00
	ldsh r0, [r0, r5]
	ldr r7, [r4, #0x3C]
	str r7, [sp, #0x000]
	adds r5, r7, r0
	str r5, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	ldr r3, [r4, #0x40]
	str r3, [sp, #0x004]
	adds r2, r3, r0
	str r2, [r4, #0x18]
	ldr r7, [r4, #0x28]
	mov r12, r7
	mov r0, r12
	adds r0, #0xD8
	ldr r6, [r0, #0x00]
	subs r1, r1, r6
	cmp r1, #0x00
	bge _08086640
	adds r1, #0x0F
_08086640:
	asrs r1, r1, #0x04
	mov r9, r1
	mov r0, r12
	adds r0, #0xDC
	str r0, [sp, #0x008]
	ldr r1, [r0, #0x00]
	subs r0, r5, r1
	cmp r0, #0x00
	bge _08086654
	adds r0, #0x0F
_08086654:
	asrs r0, r0, #0x04
	mov r8, r0
	movs r3, #0xE0
	add r12, r3
	mov r5, r12
	ldr r3, [r5, #0x00]
	subs r0, r2, r3
	cmp r0, #0x00
	bge _08086668
	adds r0, #0x0F
_08086668:
	asrs r0, r0, #0x04
	str r0, [sp, #0x00C]
	mov r7, r10
	subs r0, r7, r6
	cmp r0, #0x00
	bge _08086676
	adds r0, #0x0F
_08086676:
	asrs r5, r0, #0x04
	ldr r0, [sp, #0x000]
	subs r1, r0, r1
	cmp r1, #0x00
	bge _08086682
	adds r1, #0x0F
_08086682:
	asrs r1, r1, #0x04
	ldr r2, [sp, #0x004]
	subs r3, r2, r3
	cmp r3, #0x00
	bge _0808668E
	adds r3, #0x0F
_0808668E:
	asrs r3, r3, #0x04
	mov r7, r9
	mov r2, r9
	muls r2, r7
	mov r7, r8
	mov r0, r8
	muls r0, r7
	adds r2, r2, r0
	ldr r7, [sp, #0x00C]
	adds r0, r7, #0x0
	muls r0, r7
	adds r2, r2, r0
	adds r0, r5, #0x0
	muls r0, r5
	adds r5, r1, #0x0
	muls r5, r1
	adds r1, r5, #0x0
	adds r0, r0, r1
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	cmp r2, r0
	blt _080866EE
	str r6, [r4, #0x10]
	ldr r7, [sp, #0x008]
	ldr r0, [r7, #0x00]
	str r0, [r4, #0x14]
	mov r1, r12
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x18]
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	movs r1, #0x00
	str r1, [r4, #0x58]
	ldr r0, [r4, #0x50]
	str r0, [r4, #0x4C]
	str r1, [r4, #0x50]
_080866EE:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8086700
sub_8086700:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x06
	beq _0808675C
	cmp r1, #0x02
	beq _0808675C
	ldr r2, [r5, #0x28]
	cmp r2, #0x00
	beq _0808675C
	ldr r0, _08086750 @ =0x00000111
	adds r4, r2, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _0808675C
	ldr r0, _08086754 @ =0x08087441
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0x80
	str r1, [r0, #0x00]
	ldr r0, _08086758 @ =0x0808742D
	adds r1, r2, #0x0
	bl sub_807FF48
	ldrb r0, [r4, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r0, [r5, #0x28]
	bl sub_807B7A8
	movs r0, #0x01
	b _0808675E
_08086750: .4byte 0x00000111
_08086754: .4byte 0x08087441
_08086758: .4byte 0x0808742D
_0808675C:
	movs r0, #0x00
_0808675E:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_8086764
sub_8086764:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r2, [r5, #0x28]
	adds r4, r2, #0x0
	adds r4, #0xEC
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080867A0
	ldr r0, _08086798 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0808679C
	adds r1, #0x08
	lsls r1, r1, #0x02
	adds r0, r3, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	b _080867CA
	.byte 0x00, 0x00
_08086798: .4byte 0x03000FD8
_0808679C:
	movs r3, #0x00
	b _080867CA
_080867A0:
	adds r3, r2, #0x0
	ldr r0, _080867C4 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080867C8
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r1, #0x08
	lsls r1, r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	b _080867CA
	.byte 0x00, 0x00
_080867C4: .4byte 0x03000FD8
_080867C8:
	movs r2, #0x00
_080867CA:
	ldr r0, [r5, #0x28]
	cmp r0, r2
	bne _08086804
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08086834
	ldr r0, [r3, #0x48]
	cmp r0, #0x00
	bgt _080867E8
	adds r0, r3, #0x0
	b _0808681A
_080867E8:
	ldr r0, _080867FC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08086834
	ldr r0, _08086800 @ =0x0808722D
	str r0, [r3, #0x54]
	b _08086834
_080867FC: .4byte 0x03000FD8
_08086800: .4byte sub_808722C
_08086804:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08086834
	ldr r0, [r2, #0x48]
	cmp r0, #0x00
	bgt _08086822
	adds r0, r2, #0x0
_0808681A:
	adds r0, #0x08
	bl sub_8086424
	b _08086834
_08086822:
	ldr r0, _0808684C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08086834
	ldr r0, _08086850 @ =0x0808722D
	str r0, [r2, #0x54]
_08086834:
	ldr r0, _0808684C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	ldr r0, _08086854 @ =0x08086A19
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_0808684C: .4byte 0x03000FD8
_08086850: .4byte sub_808722C
_08086854: .4byte sub_8086A18
	thumb_func_start sub_8086858
sub_8086858:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _0808686A
	adds r2, #0xFF
_0808686A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _08086874
	adds r3, #0xFF
_08086874:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0808687E
	adds r0, #0xFF
_0808687E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x00
	bl sub_807BF34
	adds r5, r0, #0x0
	lsls r2, r4, #0x01
	ldr r0, _08086958 @ =0x0838F8B4
	adds r2, r2, r0
	adds r3, r5, #0x0
	adds r3, #0x76
	ldrb r0, [r3, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x44
	strb r1, [r0, #0x00]
	ldrh r0, [r2, #0x02]
	adds r1, r5, #0x0
	adds r1, #0x45
	strb r0, [r1, #0x00]
	ldrh r0, [r2, #0x04]
	adds r1, #0x01
	strb r0, [r1, #0x00]
	ldrh r0, [r2, #0x06]
	adds r1, #0x01
	strb r0, [r1, #0x00]
	ldrh r1, [r2, #0x08]
	adds r0, r5, #0x0
	adds r0, #0x48
	strb r1, [r0, #0x00]
	ldrh r0, [r2, #0x0A]
	adds r1, r5, #0x0
	adds r1, #0x49
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r1, #0x3B
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x18]
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x08]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	str r6, [r5, #0x30]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	ldr r3, [r5, #0x08]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	movs r4, #0x01
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	adds r1, r5, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r4, _0808695C @ =0x08086961
	str r4, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	adds r0, r5, #0x0
	bl _call_via_r4
	ldr r0, [r5, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x14]
	str r0, [r5, #0x3C]
	ldr r0, [r5, #0x18]
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x58]
	str r0, [r6, #0x58]
	ldr r0, [r5, #0x5C]
	str r0, [r6, #0x5C]
	ldr r0, [r5, #0x60]
	str r0, [r6, #0x60]
	ldr r0, [r5, #0x64]
	str r0, [r6, #0x64]
	adds r0, r5, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08086958: .4byte 0x0838F8B4
_0808695C: .4byte sub_8086960
