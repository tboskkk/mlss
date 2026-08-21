	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F64AC
sub_80F64AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	mov r10, r0
	mov r9, r3
	movs r0, #0x04
	ldsh r1, [r3, r0]
	add r3, sp, #0x01C
	movs r0, #0x00
	str r0, [sp, #0x000]
	mov r0, r10
	add r2, sp, #0x018
	bl sub_80F7B1C
	mov r1, r9
	ldr r2, [r1, #0x04]
	cmp r2, #0x07
	bgt _080F64EC
	ldr r0, _080F64E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F64FC
	.byte 0x00, 0x00
_080F64E8: .4byte 0x03000FD8
_080F64EC:
	ldr r1, _080F6554 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r0, r2
_080F64FC:
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [sp, #0x018]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, _080F6558 @ =0x083BA4B4
	mov r3, r9
	ldrb r0, [r3, #0x08]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	mov r8, r0
	ldr r1, [r3, #0x0C]
	movs r5, #0x1F
	ands r5, r1
	lsls r0, r1, #0x01
	movs r3, #0xF0
	lsls r3, r3, #0x02
	adds r2, r3, #0x0
	ands r0, r2
	orrs r5, r0
	lsls r1, r1, #0x02
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	ands r1, r0
	orrs r5, r1
	movs r0, #0x03
	ands r0, r5
	mov r3, r9
	ldr r7, [r3, #0x08]
	cmp r0, #0x02
	bne _080F656E
	mov r0, r8
	cmp r0, #0x03
	bhi _080F655C
	movs r1, #0x04
	mov r8, r1
	b _080F656E
	.byte 0x00, 0x00
_080F6554: .4byte 0x03000FDC
_080F6558: .4byte 0x083BA4B4
_080F655C:
	mov r0, r8
	adds r0, #0x01
	movs r2, #0x02
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080F656E:
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r0, r5, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _080F659C
	movs r2, #0x02
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x01C]
	subs r1, r1, r0
	mov r0, r8
	adds r0, #0x03
	lsls r0, r0, #0x10
	asrs r0, r0, #0x0D
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080F6594
	movs r2, #0x01
_080F6594:
	lsls r0, r2, #0x08
	ands r0, r3
	orrs r5, r0
	b _080F65BE
_080F659C:
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0x00
	beq _080F65BE
	movs r0, #0x80
	ands r0, r5
	movs r1, #0x18
	cmp r0, #0x00
	beq _080F65B0
	ldr r1, _080F65E4 @ =0x0000FFE8
_080F65B0:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080F65BE:
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r5
	movs r1, #0x80
	lsls r1, r1, #0x02
	cmp r0, r1
	bne _080F65E8
	ldr r2, [sp, #0x01C]
	subs r2, #0x0D
	mov r1, r8
	adds r1, #0x02
	lsls r1, r1, #0x03
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	subs r2, r2, r1
	str r2, [sp, #0x01C]
	b _080F65EE
	.byte 0x00, 0x00
_080F65E4: .4byte 0x0000FFE8
_080F65E8:
	ldr r0, [sp, #0x01C]
	subs r0, #0x02
	str r0, [sp, #0x01C]
_080F65EE:
	ldr r0, [sp, #0x01C]
	cmp r0, #0x00
	bge _080F6606
	movs r0, #0x00
	str r0, [sp, #0x01C]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _080F6630
	movs r0, #0x10
	b _080F6626
_080F6606:
	mov r3, r8
	lsls r1, r3, #0x03
	adds r0, r0, r1
	adds r0, #0x14
	cmp r0, #0x9F
	ble _080F6630
	movs r0, #0x90
	subs r1, r0, r1
	str r1, [sp, #0x01C]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r5
	cmp r0, #0x00
	beq _080F6630
	adds r0, r1, #0x0
	subs r0, #0x10
_080F6626:
	str r0, [sp, #0x01C]
	movs r0, #0x40
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
_080F6630:
	asrs r4, r7, #0x08
	movs r7, #0xFF
	ands r4, r7
	cmp r4, #0x00
	bne _080F664A
	mov r1, r10
	ldr r0, [r1, #0x30]
	mov r2, r9
	ldr r1, [r2, #0x14]
	bl sub_80E9310
	lsrs r4, r0, #0x10
	ands r4, r7
_080F664A:
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x02
	bne _080F6670
	adds r0, r4, #0x2
	movs r1, #0x03
	bl __divsi3
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _080F6670
	ldr r0, [sp, #0x018]
	adds r0, #0x04
	str r0, [sp, #0x018]
_080F6670:
	lsls r0, r4, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x00
	bne _080F667C
	movs r4, #0x02
	movs r7, #0x02
_080F667C:
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bge _080F6690
	movs r6, #0x20
	ldr r0, _080F668C @ =0x0000FF7F
	ands r5, r0
	movs r0, #0x40
	b _080F6698
_080F668C: .4byte 0x0000FF7F
_080F6690:
	cmp r0, #0xEF
	ble _080F669A
	movs r6, #0xD0
	movs r0, #0xC0
_080F6698:
	orrs r5, r0
_080F669A:
	ldr r0, [sp, #0x018]
	subs r0, #0x10
	lsls r1, r4, #0x02
	subs r3, r0, r1
	str r3, [sp, #0x018]
	adds r1, r3, #0x0
	adds r1, #0x18
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	adds r6, r0, #0x0
	cmp r1, r2
	ble _080F66B8
	adds r0, r2, #0x0
	subs r0, #0x18
	b _080F66C8
_080F66B8:
	lsls r1, r4, #0x03
	adds r0, r3, r1
	adds r0, #0x08
	cmp r0, r2
	bge _080F66CA
	adds r0, r2, #0x0
	subs r0, #0x08
	subs r0, r0, r1
_080F66C8:
	str r0, [sp, #0x018]
_080F66CA:
	asrs r2, r6, #0x10
	cmp r2, #0x17
	bgt _080F6708
	movs r1, #0xC0
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0xC0
	bne _080F66E4
	adds r0, r2, #0x0
	adds r0, #0x30
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _080F66E6
_080F66E4:
	movs r6, #0x18
_080F66E6:
	movs r3, #0x00
	str r3, [sp, #0x018]
	ldr r0, _080F6704 @ =0x0000FF7F
	ands r5, r0
	movs r0, #0x40
	orrs r5, r0
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	lsls r1, r4, #0x01
	subs r0, r0, r1
	subs r0, #0x18
	adds r6, r2, #0x0
	cmp r3, r0
	bge _080F673C
	b _080F673A
_080F6704: .4byte 0x0000FF7F
_080F6708:
	cmp r2, #0xD7
	ble _080F673C
	movs r1, #0xC0
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x40
	bne _080F6720
	adds r0, r2, #0x0
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _080F6722
_080F6720:
	movs r6, #0xD8
_080F6722:
	lsls r0, r4, #0x03
	movs r1, #0xD0
	subs r1, r1, r0
	str r1, [sp, #0x018]
	movs r0, #0xC0
	orrs r5, r0
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	subs r0, #0x18
	adds r6, r2, #0x0
	cmp r1, r0
	ble _080F673C
_080F673A:
	str r0, [sp, #0x018]
_080F673C:
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bge _080F6764
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x02
	bne _080F6760
	asrs r1, r6, #0x10
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080F6754
	adds r0, r1, #0x7
_080F6754:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080F6796
_080F6760:
	movs r0, #0x00
	b _080F6796
_080F6764:
	lsls r1, r4, #0x03
	adds r0, r0, r1
	adds r0, #0x20
	cmp r0, #0xF0
	ble _080F6798
	movs r0, #0xD0
	subs r1, r0, r1
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x02
	bne _080F6794
	subs r1, #0x08
	asrs r2, r6, #0x10
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080F6786
	adds r0, r2, #0x7
_080F6786:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r1, r0
	b _080F6796
_080F6794:
	adds r0, r1, #0x0
_080F6796:
	str r0, [sp, #0x018]
_080F6798:
	ldr r2, [sp, #0x018]
	asrs r4, r6, #0x10
	subs r4, r4, r2
	ldr r3, _080F67E8 @ =0xFFFFFF00
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r6, r10
	ldr r0, [r6, #0x30]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r3, [sp, #0x01C]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r7, [sp, #0x000]
	mov r6, r8
	str r6, [sp, #0x004]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x008]
	str r5, [sp, #0x00C]
	mov r5, r9
	ldrb r4, [r5, #0x10]
	str r4, [sp, #0x010]
	ldr r4, [r5, #0x14]
	str r4, [sp, #0x014]
	bl sub_80E5BCC
	movs r0, #0x01
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F67E8: .4byte 0xFFFFFF00
	thumb_func_start sub_80F67EC
sub_80F67EC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r6, r0, #0x0
	adds r5, r2, #0x0
	movs r2, #0x00
	str r2, [sp, #0x010]
	str r2, [sp, #0x00C]
	ldr r0, [r5, #0x08]
	cmp r0, #0x00
	beq _080F6848
	movs r0, #0x00
	ldsh r1, [r5, r0]
	add r3, sp, #0x010
	str r2, [sp, #0x000]
	adds r0, r6, #0x0
	add r2, sp, #0x00C
	bl sub_80F7B1C
	ldr r2, [r5, #0x00]
	cmp r2, #0x07
	bgt _080F682C
	ldr r0, _080F6828 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F683C
	.byte 0x00, 0x00
_080F6828: .4byte 0x03000FD8
_080F682C:
	ldr r1, _080F68B8 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F683C:
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	ldr r0, [sp, #0x010]
	subs r0, r0, r1
	str r0, [sp, #0x010]
_080F6848:
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x04]
	cmp r0, #0xFF
	bne _080F6858
	ldr r0, _080F68BC @ =0x083B950C
	adds r0, r2, r0
	ldrb r0, [r0, #0x00]
	str r0, [r5, #0x14]
_080F6858:
	ldr r0, [r6, #0x28]
	ldrb r1, [r5, #0x00]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrb r3, [r5, #0x08]
	movs r7, #0x0C
	ldsh r4, [r5, r7]
	str r4, [sp, #0x000]
	movs r7, #0x10
	ldsh r4, [r5, r7]
	str r4, [sp, #0x004]
	ldrb r4, [r5, #0x14]
	str r4, [sp, #0x008]
	bl sub_80F1F7C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x3F
	beq _080F68AE
	ldr r0, [r6, #0x28]
	lsls r2, r2, #0x04
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	ldr r1, [sp, #0x00C]
	strh r1, [r0, #0x08]
	ldr r1, [sp, #0x010]
	strh r1, [r0, #0x0A]
	ldr r0, [r6, #0x28]
	ldr r1, [r0, #0x00]
	adds r1, r1, r2
	ldr r3, [r1, #0x00]
	ldrh r0, [r1, #0x08]
	ldrh r2, [r1, #0x04]
	adds r0, r0, r2
	strh r0, [r3, #0x00]
	ldrh r2, [r1, #0x0A]
	ldrh r1, [r1, #0x06]
	adds r2, r2, r1
	strh r2, [r3, #0x02]
	ldr r7, _080F68C0 @ =0x00007FFF
	adds r0, r7, #0x0
	subs r0, r0, r2
	strh r0, [r3, #0x0E]
_080F68AE:
	movs r0, #0x01
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F68B8: .4byte 0x03000FDC
_080F68BC: .4byte 0x083B950C
_080F68C0: .4byte 0x00007FFF
	thumb_func_start sub_80F68C4
sub_80F68C4:
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0x07
	bgt _080F68E8
	ldr r0, _080F68E4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	b _080F68F8
	.byte 0x00, 0x00
_080F68E4: .4byte 0x03000FD8
_080F68E8:
	ldr r1, _080F6954 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r2, r0, r1
_080F68F8:
	ldr r1, [r2, #0x08]
	cmp r1, #0x00
	beq _080F694E
	ldrb r0, [r1, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r0, r0, r4
	ldrh r1, [r1, #0x16]
	orrs r0, r1
	adds r1, r2, #0x0
	adds r1, #0x70
	strh r0, [r1, #0x00]
	ldr r0, [r2, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	adds r1, #0x02
	strh r0, [r1, #0x00]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x07
	bgt _080F694E
	ldr r0, _080F6958 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	adds r3, r2, #0x0
	adds r3, #0x76
	lsrs r1, r1, #0x1F
	ldrb r2, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080F694E:
	pop {r4}
	pop {r0}
	bx r0
_080F6954: .4byte 0x03000FDC
_080F6958: .4byte 0x03000FD8
