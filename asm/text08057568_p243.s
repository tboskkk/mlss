	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80EF618
sub_80EF618:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	mov r9, r2
	lsls r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _080EF65C @ =0x083BA4B4
	ldrh r0, [r0, #0x00]
	mov r8, r0
	cmp r6, #0x00
	bne _080EF64C
	ldr r0, _080EF660 @ =0x03000FCC
	ldr r0, [r0, #0x00]
	mov r1, r9
	movs r2, #0x00
	bl sub_80E92AC
	lsrs r0, r0, #0x10
	movs r1, #0xFF
	ands r0, r1
	adds r0, #0x07
	lsrs r6, r0, #0x03
_080EF64C:
	adds r0, r6, #0x2
	lsls r0, r0, #0x02
	movs r1, #0x70
	subs r5, r1, r0
	cmp r5, #0x00
	bge _080EF664
	movs r5, #0x0A
	b _080EF670
_080EF65C: .4byte 0x083BA4B4
_080EF660: .4byte 0x03000FCC
_080EF664:
	lsls r1, r6, #0x03
	movs r0, #0xE8
	subs r0, r0, r1
	cmp r5, r0
	ble _080EF670
	adds r5, r0, #0x0
_080EF670:
	cmp r4, #0x00
	bge _080EF678
	movs r4, #0x0A
	b _080EF686
_080EF678:
	mov r0, r8
	lsls r1, r0, #0x03
	movs r0, #0x94
	subs r0, r0, r1
	cmp r4, r0
	ble _080EF686
	adds r4, r0, #0x0
_080EF686:
	ldr r2, _080EF6F4 @ =0x083B8F24
	ldr r7, _080EF6F8 @ =0x0300034C
	ldr r1, _080EF6FC @ =0x00000888
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	beq _080EF69A
	adds r2, #0x20
_080EF69A:
	ldr r1, _080EF700 @ =0x02000260
	adds r0, r2, #0x0
	movs r2, #0x08
	bl CpuFastSet
	ldrh r1, [r7, #0x02]
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r2, #0x0
	movs r2, #0x00
	mov r12, r2
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldr r0, _080EF704 @ =0x03000FCC
	ldr r0, [r0, #0x00]
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	lsls r3, r4, #0x10
	asrs r3, r3, #0x10
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x000]
	mov r4, r8
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x004]
	mov r1, r12
	str r1, [sp, #0x008]
	ldr r1, _080EF708 @ =0x00000803
	str r1, [sp, #0x00C]
	mov r4, r12
	str r4, [sp, #0x010]
	mov r1, r9
	subs r1, #0x02
	str r1, [sp, #0x014]
	movs r1, #0x04
	bl sub_80E5FB0
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080EF6F4: .4byte 0x083B8F24
_080EF6F8: .4byte 0x0300034C
_080EF6FC: .4byte 0x00000888
_080EF700: .4byte 0x02000260
_080EF704: .4byte 0x03000FCC
_080EF708: .4byte 0x00000803
	thumb_func_start sub_80EF70C
sub_80EF70C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	mov r9, r0
	movs r7, #0x00
	ldr r1, _080EF794 @ =0x03000FC8
	ldr r0, [r1, #0x00]
	ldr r5, [r0, #0x00]
	mov r8, r1
_080EF722:
	mov r1, r8
	ldr r0, [r1, #0x00]
	lsls r1, r7, #0x18
	lsrs r6, r1, #0x18
	adds r1, r6, #0x0
	bl sub_80E8EA0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080EF774
	ldrb r0, [r5, #0x0E]
	cmp r0, #0x00
	beq _080EF76A
	mov r1, r9
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x14]
	ldrb r1, [r5, #0x0C]
	lsls r3, r1, #0x02
	adds r2, r0, #0x0
	adds r2, #0x28
	adds r2, r2, r3
	ldr r4, [r2, #0x00]
	mov r2, sp
	add r3, sp, #0x004
	bl get_fobj_screen_pos
	ldr r0, _080EF798 @ =0x00000283
	adds r4, r4, r0
	ldrb r1, [r4, #0x00]
	ldr r0, [sp, #0x004]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x000]
	strh r0, [r5, #0x08]
	ldr r0, [sp, #0x004]
	strh r0, [r5, #0x0A]
_080EF76A:
	mov r1, r8
	ldr r0, [r1, #0x00]
	adds r1, r6, #0x0
	bl sub_80E8E78
_080EF774:
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	adds r5, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080EF722
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080EF794: .4byte 0x03000FC8
_080EF798: .4byte 0x00000283
	thumb_func_start sub_80EF79C
sub_80EF79C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r7, r1, #0x0
	ldr r3, _080EF85C @ =0x03000FD0
	ldr r1, [r3, #0x00]
	ldr r4, _080EF860 @ =0x0000055A
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r2, [r3, #0x00]
	movs r1, #0xAB
	lsls r1, r1, #0x03
	adds r0, r2, r1
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r3, _080EF864 @ =0x00000556
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	subs r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldr r0, _080EF868 @ =0x00000549
	adds r2, r2, r0
	movs r0, #0x10
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x14]
	bl sub_8028D6C
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x14]
	ldr r2, _080EF86C @ =0x0000010B
	adds r1, r0, r2
	ldrb r4, [r1, #0x00]
	adds r6, r0, #0x0
	adds r6, #0x28
	cmp r4, #0x00
	beq _080EF82A
_080EF7FE:
	ldr r0, [r5, #0x00]
	adds r0, #0x1C
	ldm r6!, {r2}
	adds r1, r2, #0x0
	adds r1, #0x58
	movs r3, #0x8A
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldr r2, [r2, #0x00]
	movs r3, #0x01
	str r3, [sp, #0x000]
	movs r3, #0xFF
	str r3, [sp, #0x004]
	movs r3, #0x00
	bl sub_80EA5C8
	lsls r0, r4, #0x10
	ldr r1, _080EF870 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	cmp r0, #0x00
	bgt _080EF7FE
_080EF82A:
	ldr r0, [r5, #0x00]
	ldr r2, [r0, #0x18]
	movs r3, #0x08
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x0C]
	bl _call_via_r1
	ldr r0, [r5, #0x00]
	adds r0, #0x1C
	ldr r1, _080EF85C @ =0x03000FD0
	ldr r1, [r1, #0x00]
	movs r2, #0x01
	str r2, [sp, #0x000]
	movs r2, #0xFF
	str r2, [sp, #0x004]
	adds r2, r7, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080EF85C: .4byte 0x03000FD0
_080EF860: .4byte 0x0000055A
_080EF864: .4byte 0x00000556
_080EF868: .4byte 0x00000549
_080EF86C: .4byte 0x0000010B
_080EF870: .4byte 0xFFFF0000
	thumb_func_start sub_80EF874
sub_80EF874:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	str r0, [sp, #0x010]
	ldr r0, [sp, #0x03C]
	ldr r4, [sp, #0x040]
	ldr r5, [sp, #0x044]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r9, r3
	mov r1, r9
	str r1, [sp, #0x014]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r12, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r10, r4
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x018]
	ldr r3, [sp, #0x010]
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x14]
	mov r3, r8
	lsls r0, r3, #0x02
	adds r0, r0, r1
	ldr r5, [r0, #0x28]
	movs r0, #0x02
	str r0, [sp, #0x008]
	str r2, [sp, #0x00C]
	ldr r7, _080EF968 @ =0x03000FD0
	ldr r3, [r7, #0x00]
	movs r4, #0x00
	movs r1, #0xA4
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r1, [r0, #0x00]
	movs r6, #0x01
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080EF8FA
	movs r2, #0xF8
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrh r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080EF8E8
	b _080EF9F8
_080EF8E8:
	ldr r1, _080EF96C @ =0x0000055A
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080EF8F8
	b _080EF9F8
_080EF8F8:
	movs r4, #0x01
_080EF8FA:
	movs r0, #0xAA
	lsls r0, r0, #0x03
	adds r2, r3, r0
	adds r1, r6, #0x0
	lsls r1, r4
	ldr r0, [r2, #0x00]
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r1, _080EF970 @ =0x00000544
	adds r0, r3, r1
	adds r0, r0, r4
	movs r3, #0x00
	mov r2, r8
	strb r2, [r0, #0x00]
	ldr r0, [r7, #0x00]
	adds r1, #0x02
	adds r0, r0, r1
	adds r0, r0, r4
	ldrb r1, [r5, #0x02]
	strb r1, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strh r3, [r0, #0x00]
	ldr r1, _080EF974 @ =0x00000242
	adds r0, r5, r1
	strh r3, [r0, #0x00]
	mov r2, r12
	cmp r2, #0x00
	beq _080EF97C
	ldr r0, [r7, #0x00]
	movs r3, #0x96
	lsls r3, r3, #0x03
	adds r0, r0, r3
	ldr r1, _080EF978 @ =0x03000FC0
	ldr r2, [r1, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r2, r2, r1
	movs r1, #0x31
	str r1, [sp, #0x000]
	mov r1, r12
	adds r1, #0x07
	str r1, [sp, #0x004]
	movs r1, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
	b _080EF9BA
_080EF968: .4byte 0x03000FD0
_080EF96C: .4byte 0x0000055A
_080EF970: .4byte 0x00000544
_080EF974: .4byte 0x00000242
_080EF978: .4byte 0x03000FC0
_080EF97C:
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1F
	mov r3, r10
	ands r0, r3
	cmp r0, #0x00
	beq _080EF998
	adds r0, r5, #0x0
	mov r1, r9
	bl sub_80478AC
_080EF998:
	ldr r0, [r7, #0x00]
	movs r1, #0x96
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r1, _080EFA08 @ =0x03000FC0
	ldr r2, [r1, #0x00]
	movs r3, #0xE3
	lsls r3, r3, #0x02
	adds r2, r2, r3
	movs r1, #0x31
	str r1, [sp, #0x000]
	ldr r1, [sp, #0x014]
	str r1, [sp, #0x004]
	movs r1, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
_080EF9BA:
	ldr r4, _080EFA0C @ =0x03000FD0
	ldr r0, [r4, #0x00]
	movs r2, #0x96
	lsls r2, r2, #0x03
	adds r0, r0, r2
	ldr r1, _080EFA08 @ =0x03000FC0
	ldr r2, [r1, #0x00]
	movs r3, #0xE3
	lsls r3, r3, #0x02
	adds r2, r2, r3
	movs r1, #0x2F
	str r1, [sp, #0x000]
	mov r1, r8
	str r1, [sp, #0x004]
	movs r1, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, #0xA8
	add r2, sp, #0x008
	bl sub_80ECB20
	ldr r0, [r4, #0x00]
	ldr r3, _080EFA10 @ =0x0000054C
	adds r0, r0, r3
	mov r1, sp
	ldrh r1, [r1, #0x18]
	strh r1, [r0, #0x00]
_080EF9F8:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080EFA08: .4byte 0x03000FC0
_080EFA0C: .4byte 0x03000FD0
_080EFA10: .4byte 0x0000054C
	thumb_func_start sub_80EFA14
sub_80EFA14:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	mov r9, r0
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	mov r8, r0
	ldr r7, _080EFAF0 @ =0x03000FD0
	ldr r0, [r7, #0x00]
	mov r10, r0
	ldr r0, _080EFAF4 @ =0x02000010
	movs r3, #0x00
	strh r3, [r0, #0x00]
	adds r0, #0x02
	strh r3, [r0, #0x00]
	subs r0, #0x0A
	lsrs r1, r1, #0x1B
	lsls r1, r1, #0x08
	lsrs r2, r2, #0x1E
	lsls r2, r2, #0x02
	orrs r1, r2
	strh r1, [r0, #0x00]
	ldr r2, _080EFAF8 @ =0x082001A8
	movs r0, #0x08
	movs r1, #0x00
	bl alloc_Zero
	ldr r1, _080EFAFC @ =0x06000020
	add r1, r8
	ldr r2, _080EFB00 @ =0x00004AE0
	movs r3, #0x06
	bl sub_80E588C
	ldr r1, _080EFB04 @ =0x03000FCC
	str r0, [r1, #0x00]
	ldr r6, _080EFB08 @ =0x03001034
	movs r4, #0xC0
	lsls r4, r4, #0x13
	add r9, r4
	movs r5, #0x80
	lsls r5, r5, #0x04
	ldr r3, [r6, #0x00]
	ldr r0, _080EFB0C @ =0x01800180
	mov r1, r9
	adds r2, r5, #0x0
	bl _call_via_r3
	add r8, r4
	ldr r3, [r6, #0x00]
	movs r0, #0x00
	mov r1, r8
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, _080EFB10 @ =0x082001B0
	movs r0, #0x01
	adds r1, r5, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	ldr r0, [r7, #0x00]
	ldr r4, _080EFB14 @ =0x000004AC
	adds r0, r0, r4
	str r1, [r0, #0x00]
	ldr r3, [r6, #0x00]
	ldr r0, _080EFB0C @ =0x01800180
	adds r2, r5, #0x0
	bl _call_via_r3
	ldr r1, _080EFB04 @ =0x03000FCC
	ldr r0, [r1, #0x00]
	ldr r1, [r7, #0x00]
	adds r1, r1, r4
	ldr r3, [r1, #0x00]
	movs r1, #0x02
	str r1, [sp, #0x000]
	movs r1, #0xC0
	lsls r1, r1, #0x01
	str r1, [sp, #0x004]
	movs r1, #0xA8
	lsls r1, r1, #0x03
	add r1, r10
	str r1, [sp, #0x008]
	movs r1, #0xA7
	lsls r1, r1, #0x03
	add r1, r10
	str r1, [sp, #0x00C]
	movs r1, #0xA5
	lsls r1, r1, #0x03
	add r10, r1
	mov r1, r10
	str r1, [sp, #0x010]
	movs r1, #0x00
	movs r2, #0x0F
	bl sub_80E5AA0
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080EFAF0: .4byte 0x03000FD0
_080EFAF4: .4byte 0x02000010
_080EFAF8: .4byte 0x082001A8
_080EFAFC: .4byte 0x06000020
_080EFB00: .4byte 0x00004AE0
_080EFB04: .4byte 0x03000FCC
_080EFB08: .4byte 0x03001034
_080EFB0C: .4byte 0x01800180
_080EFB10: .4byte 0x082001B0
_080EFB14: .4byte 0x000004AC
	thumb_func_start sub_80EFB18
sub_80EFB18:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080EFBDC @ =0x03000FD0
	ldr r5, [r0, #0x00]
	movs r1, #0x00
_080EFB22:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x03
	beq _080EFB38
	ldr r0, _080EFBE0 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r2, #0xA8
	bl _call_via_r3
_080EFB38:
	adds r5, #0xA8
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080EFB22
	mov r0, sp
	movs r6, #0x00
	strh r6, [r0, #0x00]
	ldr r5, _080EFBDC @ =0x03000FD0
	ldr r1, [r5, #0x00]
	ldr r0, _080EFBE4 @ =0x00000544
	adds r1, r1, r0
	ldr r2, _080EFBE8 @ =0x01000001
	mov r0, sp
	bl CpuSet
	ldr r0, _080EFBE0 @ =0x03001034
	ldr r4, _080EFBEC @ =0x03000FC0
	ldr r1, [r4, #0x00]
	movs r2, #0xE3
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	movs r2, #0x08
	bl _call_via_r3
	mov r0, sp
	strh r6, [r0, #0x00]
	ldr r1, [r4, #0x00]
	ldr r3, _080EFBF0 @ =0x0000053C
	adds r1, r1, r3
	ldr r2, _080EFBF4 @ =0x01000010
	bl CpuSet
	ldr r1, [r5, #0x00]
	ldr r3, _080EFBF8 @ =0x0000055A
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x3F
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	movs r2, #0xAA
	lsls r2, r2, #0x03
	adds r0, r1, r2
	movs r2, #0x00
	str r2, [r0, #0x00]
	subs r3, #0x10
	adds r0, r1, r3
	strh r2, [r0, #0x00]
	ldr r0, _080EFBFC @ =0x00000549
	adds r1, r1, r0
	strb r6, [r1, #0x00]
	ldr r1, [r5, #0x00]
	ldr r2, _080EFC00 @ =0x0000055B
	adds r1, r1, r2
	ldrb r3, [r1, #0x00]
	movs r2, #0x61
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r3
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r3, _080EFC04 @ =0x0000055F
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	ands r2, r1
	strb r2, [r0, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080EFBDC: .4byte 0x03000FD0
_080EFBE0: .4byte 0x03001034
_080EFBE4: .4byte 0x00000544
_080EFBE8: .4byte 0x01000001
_080EFBEC: .4byte 0x03000FC0
_080EFBF0: .4byte 0x0000053C
_080EFBF4: .4byte 0x01000010
_080EFBF8: .4byte 0x0000055A
_080EFBFC: .4byte 0x00000549
_080EFC00: .4byte 0x0000055B
_080EFC04: .4byte 0x0000055F
	thumb_func_start sub_80EFC08
sub_80EFC08:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r0, #0x03
	mov r9, r0
	ldr r0, _080EFD58 @ =0x03000FD0
	ldr r5, [r0, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x01
	adds r4, r5, #0x0
	adds r4, #0xA0
_080EFC24:
	ldrh r1, [r4, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080EFC46
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x14]
	bl sub_8028E70
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080EFC46
	ldrh r1, [r4, #0x00]
	adds r0, r6, #0x0
	eors r0, r1
	strh r0, [r4, #0x00]
_080EFC46:
	ldrh r1, [r4, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080EFC5C
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r0, #0x1C
	adds r1, r5, #0x0
	bl sub_80EA778
_080EFC5C:
	mov r1, r9
	lsls r0, r1, #0x10
	ldr r2, _080EFD5C @ =0xFFFF0000
	adds r0, r0, r2
	adds r4, #0xA8
	adds r5, #0xA8
	lsrs r1, r0, #0x10
	mov r9, r1
	cmp r0, #0x00
	bgt _080EFC24
	mov r2, r8
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x14]
	ldr r4, _080EFD60 @ =0x0000010B
	adds r2, r0, r4
	ldrb r2, [r2, #0x00]
	mov r9, r2
	adds r6, r0, #0x0
	adds r6, #0x28
	cmp r2, #0x00
	beq _080EFD3E
_080EFC86:
	ldr r1, [r6, #0x00]
	adds r7, r1, #0x0
	adds r7, #0x58
	adds r4, r1, #0x0
	adds r4, #0xF8
	ldrh r2, [r4, #0x00]
	movs r0, #0x84
	ands r0, r2
	cmp r0, #0x00
	bne _080EFD2C
	movs r5, #0x02
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	beq _080EFCB6
	adds r0, r1, #0x0
	bl sub_8047B78
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080EFCB6
	ldrh r0, [r4, #0x00]
	eors r0, r5
	strh r0, [r4, #0x00]
_080EFCB6:
	adds r2, r7, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r5, #0x40
	movs r0, #0x40
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	beq _080EFCDA
	ldr r0, [r6, #0x00]
	bl sub_8047AF4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080EFCDA
	ldrh r0, [r4, #0x00]
	eors r0, r5
	strh r0, [r4, #0x00]
_080EFCDA:
	ldrh r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080EFCF0
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	adds r2, r7, #0x0
	bl sub_80EB490
_080EFCF0:
	ldrh r1, [r4, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x01
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080EFD16
	mov r2, r8
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x14]
	bl sub_8028E70
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080EFD16
	ldrh r1, [r4, #0x00]
	adds r0, r5, #0x0
	eors r0, r1
	strh r0, [r4, #0x00]
_080EFD16:
	ldrh r1, [r4, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080EFD2C
	mov r4, r8
	ldr r0, [r4, #0x00]
	adds r0, #0x1C
	adds r1, r7, #0x0
	bl sub_80EA778
_080EFD2C:
	mov r1, r9
	lsls r0, r1, #0x10
	ldr r2, _080EFD5C @ =0xFFFF0000
	adds r0, r0, r2
	adds r6, #0x04
	lsrs r4, r0, #0x10
	mov r9, r4
	cmp r0, #0x00
	bgt _080EFC86
_080EFD3E:
	ldr r0, _080EFD58 @ =0x03000FD0
	ldr r2, [r0, #0x00]
	ldr r0, _080EFD64 @ =0x00000549
	adds r1, r2, r0
	ldrb r3, [r1, #0x00]
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	beq _080EFD68
	subs r0, r3, #0x1
	strb r0, [r1, #0x00]
	b _080EFE5E
	.byte 0x00, 0x00
_080EFD58: .4byte 0x03000FD0
_080EFD5C: .4byte 0xFFFF0000
_080EFD60: .4byte 0x0000010B
_080EFD64: .4byte 0x00000549
_080EFD68:
	movs r1, #0xC8
	lsls r1, r1, #0x02
	adds r6, r2, r1
	ldr r4, _080EFDC4 @ =0x0000054A
	adds r0, r2, r4
	ldrh r7, [r0, #0x00]
	movs r0, #0x00
	mov r9, r0
	cmp r7, #0x00
	beq _080EFE5E
	movs r1, #0x01
	mov r10, r1
_080EFD80:
	adds r0, r7, #0x0
	mov r2, r10
	ands r0, r2
	mov r4, r9
	lsls r3, r4, #0x10
	cmp r0, #0x00
	beq _080EFE4C
	adds r5, r6, #0x0
	ldr r4, [r6, #0x00]
	cmp r4, #0x00
	beq _080EFDB4
	ldr r1, _080EFDC8 @ =0x0000020E
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _080EFDB4
	movs r2, #0xCF
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x01
	bne _080EFE4C
_080EFDB4:
	ldrb r0, [r5, #0x08]
	cmp r0, #0x00
	beq _080EFDCC
	subs r0, #0x01
	strb r0, [r5, #0x08]
	mov r4, r9
	lsls r3, r4, #0x10
	b _080EFE4C
_080EFDC4: .4byte 0x0000054A
_080EFDC8: .4byte 0x0000020E
_080EFDCC:
	ldr r0, _080EFE6C @ =0x083BA4BC
	ldrb r1, [r5, #0x09]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	mov r2, r8
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x14]
	ldr r2, [r1, #0x00]
	adds r1, r6, #0x0
	bl _call_via_r2
	ldrb r1, [r5, #0x0B]
	lsls r1, r1, #0x1F
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r1, #0x1F
	mov r2, r9
	lsls r3, r2, #0x10
	cmp r0, r1
	bne _080EFE4C
	cmp r4, #0x00
	beq _080EFE18
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080EFE4C
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	mov r0, r10
	ands r0, r1
	cmp r0, #0x00
	beq _080EFE4C
_080EFE18:
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldrb r2, [r5, #0x0A]
	ldr r3, [r5, #0x04]
	adds r1, r4, #0x0
	bl sub_80EB524
	ldr r0, _080EFE70 @ =0x03000FD0
	ldr r2, [r0, #0x00]
	ldr r0, _080EFE74 @ =0x0000054A
	adds r2, r2, r0
	mov r1, r9
	lsls r3, r1, #0x10
	asrs r0, r3, #0x10
	mov r1, r10
	lsls r1, r0
	ldrh r0, [r2, #0x00]
	bics r0, r1
	strh r0, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xF8
	ldrh r0, [r2, #0x00]
	ldr r4, _080EFE78 @ =0x0000F3FF
	adds r1, r4, #0x0
	ands r0, r1
	strh r0, [r2, #0x00]
_080EFE4C:
	lsrs r7, r7, #0x01
	adds r6, #0x2C
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r3, r1
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r7, #0x00
	bne _080EFD80
_080EFE5E:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080EFE6C: .4byte 0x083BA4BC
_080EFE70: .4byte 0x03000FD0
_080EFE74: .4byte 0x0000054A
_080EFE78: .4byte 0x0000F3FF
	thumb_func_start sub_80EFE7C
sub_80EFE7C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r2, _080EFEB4 @ =0x03000FD0
	ldr r3, [r2, #0x00]
	ldr r1, _080EFEB8 @ =0x0000055E
	adds r0, r3, r1
	ldrh r1, [r0, #0x00]
	ldr r0, _080EFEBC @ =0x0000603F
	ands r0, r1
	adds r5, r2, #0x0
	cmp r0, #0x00
	bne _080EFE96
	b _080EFFEE
_080EFE96:
	ldr r2, _080EFEC0 @ =0x0000055F
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080EFEC4
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x14]
	movs r3, #0x98
	lsls r3, r3, #0x01
	adds r3, r3, r0
	mov r12, r3
	b _080EFED0
	.byte 0x00, 0x00
_080EFEB4: .4byte 0x03000FD0
_080EFEB8: .4byte 0x0000055E
_080EFEBC: .4byte 0x0000603F
_080EFEC0: .4byte 0x0000055F
_080EFEC4:
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x14]
	movs r4, #0x97
	lsls r4, r4, #0x01
	adds r4, r4, r0
	mov r12, r4
_080EFED0:
	ldr r0, [r5, #0x00]
	ldr r1, _080EFEFC @ =0x0000055D
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, r12
	ldrh r2, [r2, #0x00]
	adds r1, r0, r2
	mov r3, r12
	strh r1, [r3, #0x00]
	lsls r0, r1, #0x10
	cmp r0, #0x00
	blt _080EFF04
	ldrh r1, [r3, #0x00]
	ldr r0, [r5, #0x00]
	ldr r4, _080EFF00 @ =0x0000055E
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x13
	lsrs r3, r0, #0x19
	b _080EFF1C
_080EFEFC: .4byte 0x0000055D
_080EFF00: .4byte 0x0000055E
_080EFF04:
	negs r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r5, #0x00]
	ldr r2, _080EFFF4 @ =0x0000055E
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x19
	negs r0, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080EFF1C:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x00]
	ldr r2, _080EFFF4 @ =0x0000055E
	adds r4, r0, r2
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x19
	cmp r1, r0
	blt _080EFF78
	ldrb r2, [r4, #0x00]
	movs r0, #0x3F
	ands r0, r2
	cmp r0, #0x00
	beq _080EFF66
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1A
	subs r0, #0x01
	movs r1, #0x3F
	ands r0, r1
	movs r1, #0x40
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	cmp r0, #0x00
	bne _080EFF66
	ldr r2, [r5, #0x00]
	ldr r4, _080EFFF8 @ =0x0000055F
	adds r2, r2, r4
	ldrb r1, [r2, #0x00]
	movs r0, #0x61
	negs r0, r0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080EFF66:
	mov r0, r12
	strh r3, [r0, #0x00]
	ldr r1, [r5, #0x00]
	ldr r2, _080EFFFC @ =0x0000055D
	adds r1, r1, r2
	movs r0, #0x00
	ldsb r0, [r1, r0]
	negs r0, r0
	strb r0, [r1, #0x00]
_080EFF78:
	ldr r2, [r5, #0x00]
	ldr r3, _080EFFF8 @ =0x0000055F
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x20
	bne _080EFFEE
	ldr r4, _080EFFFC @ =0x0000055D
	adds r0, r2, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r0, r12
	ldrh r1, [r0, #0x00]
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _080EFFA8
	negs r0, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_080EFFA8:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bge _080EFFB6
	negs r0, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080EFFB6:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	cmp r1, #0x00
	bgt _080EFFEE
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x14]
	movs r3, #0x98
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x14]
	movs r4, #0x97
	lsls r4, r4, #0x01
	adds r0, r0, r4
	strh r1, [r0, #0x00]
	ldr r1, [r5, #0x00]
	ldr r0, _080EFFF8 @ =0x0000055F
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x61
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_080EFFEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080EFFF4: .4byte 0x0000055E
_080EFFF8: .4byte 0x0000055F
_080EFFFC: .4byte 0x0000055D
	thumb_func_start sub_80F0000
sub_80F0000:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r10, r0
	ldr r0, _080F0068 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r1, #0xA8
	lsls r1, r1, #0x02
	adds r4, r0, r1
	movs r2, #0x00
	mov r8, r2
	ldr r3, _080F006C @ =0xFFFFFF00
	mov r9, r3
_080F001E:
	ldr r0, _080F0068 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	ldr r5, _080F0070 @ =0x0000055B
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1C
	mov r1, r8
	asrs r0, r1
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080F003A
	b _080F0160
_080F003A:
	movs r7, #0x00
	ldr r2, [r4, #0x14]
	adds r3, r2, #0x0
	cmp r2, #0x00
	blt _080F0074
	ldr r1, [r4, #0x00]
	ldr r0, [r4, #0x08]
	subs r0, r1, r0
	cmp r0, #0xFF
	ble _080F0056
	adds r0, r1, #0x0
	mov r3, r9
	ands r0, r3
	str r0, [r4, #0x08]
_080F0056:
	adds r1, r1, r2
	str r1, [r4, #0x00]
	movs r5, #0x10
	ldsh r0, [r4, r5]
	lsls r0, r0, #0x08
	cmp r0, r1
	bgt _080F0098
	b _080F0094
	.byte 0x00, 0x00
_080F0068: .4byte 0x03000FD0
_080F006C: .4byte 0xFFFFFF00
_080F0070: .4byte 0x0000055B
_080F0074:
	ldr r0, [r4, #0x08]
	ldr r1, [r4, #0x00]
	subs r0, r0, r1
	cmp r0, #0xFF
	ble _080F0086
	adds r0, r1, #0x0
	mov r2, r9
	ands r0, r2
	str r0, [r4, #0x08]
_080F0086:
	adds r1, r1, r3
	str r1, [r4, #0x00]
	movs r3, #0x10
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x08
	cmp r0, r1
	blt _080F0098
_080F0094:
	str r0, [r4, #0x00]
	movs r7, #0x01
_080F0098:
	ldr r2, [r4, #0x18]
	adds r3, r2, #0x0
	cmp r2, #0x00
	blt _080F00C2
	ldr r1, [r4, #0x04]
	ldr r0, [r4, #0x0C]
	subs r0, r1, r0
	cmp r0, #0xFF
	ble _080F00B2
	adds r0, r1, #0x0
	mov r5, r9
	ands r0, r5
	str r0, [r4, #0x0C]
_080F00B2:
	adds r1, r1, r2
	str r1, [r4, #0x04]
	movs r2, #0x12
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	cmp r0, r1
	bgt _080F00F0
	b _080F00E2
_080F00C2:
	ldr r0, [r4, #0x0C]
	ldr r1, [r4, #0x04]
	subs r0, r0, r1
	cmp r0, #0xFF
	ble _080F00D4
	adds r0, r1, #0x0
	mov r5, r9
	ands r0, r5
	str r0, [r4, #0x0C]
_080F00D4:
	adds r1, r1, r3
	str r1, [r4, #0x04]
	movs r2, #0x12
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	cmp r0, r1
	blt _080F00F0
_080F00E2:
	str r0, [r4, #0x04]
	movs r1, #0x02
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080F00F0:
	mov r3, r8
	cmp r3, #0x02
	bgt _080F0138
	cmp r3, #0x01
	blt _080F0138
	mov r5, r10
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x14]
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	mov r0, r8
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r1, [r4, #0x00]
	ldr r0, [r4, #0x08]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080F011C
	adds r0, #0xFF
_080F011C:
	lsls r0, r0, #0x08
	asrs r2, r0, #0x10
	ldr r1, [r4, #0x04]
	ldr r0, [r4, #0x0C]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080F012C
	adds r1, #0xFF
_080F012C:
	lsls r3, r1, #0x08
	asrs r3, r3, #0x10
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_8057F60
_080F0138:
	cmp r7, #0x03
	bne _080F0160
	ldr r0, _080F017C @ =0x03000FD0
	ldr r3, [r0, #0x00]
	ldr r2, _080F0180 @ =0x0000055B
	adds r3, r3, r2
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x1B
	lsrs r1, r1, #0x1C
	movs r0, #0x01
	mov r5, r8
	lsls r0, r5
	bics r1, r0
	lsls r1, r1, #0x01
	movs r5, #0x1F
	negs r5, r5
	adds r0, r5, #0x0
	ands r2, r0
	orrs r2, r1
	strb r2, [r3, #0x00]
_080F0160:
	adds r4, #0x20
	movs r0, #0x01
	add r8, r0
	mov r1, r8
	cmp r1, #0x03
	bgt _080F016E
	b _080F001E
_080F016E:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F017C: .4byte 0x03000FD0
_080F0180: .4byte 0x0000055B
	thumb_func_start sub_80F0184
sub_80F0184:
	push {r4, r5, lr}
	ldr r5, _080F01C4 @ =0x03000FD0
	ldr r0, [r5, #0x00]
	ldr r4, _080F01C8 @ =0x000004AC
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	bl free_heap_memory_8018C68
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	movs r4, #0x00
	str r4, [r0, #0x00]
	ldr r5, _080F01CC @ =0x03000FCC
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _080F01AC
	movs r1, #0x03
	bl sub_80E5968
	str r4, [r5, #0x00]
_080F01AC:
	ldr r5, _080F01D0 @ =0x03000FC8
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _080F01BC
	movs r1, #0x03
	bl sub_80E8EFC
	str r4, [r5, #0x00]
_080F01BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F01C4: .4byte 0x03000FD0
_080F01C8: .4byte 0x000004AC
_080F01CC: .4byte 0x03000FCC
_080F01D0: .4byte 0x03000FC8
	thumb_func_start sub_80F01D4
sub_80F01D4:
	push {r4, lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _080F020C @ =0x03000D44
	ldr r3, [r0, #0x00]
	strh r1, [r3, #0x20]
	adds r3, #0x28
	movs r0, #0x0F
	ands r2, r0
	lsls r2, r2, #0x02
	ldrb r1, [r3, #0x00]
	subs r0, #0x4C
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	ldr r4, _080F0210 @ =0x03000FC8
	ldr r2, _080F0214 @ =0x082001B8
	movs r0, #0x04
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_80E87E4
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_080F020C: .4byte 0x03000D44
_080F0210: .4byte 0x03000FC8
_080F0214: .4byte 0x082001B8
	.byte 0xF0, 0xB5, 0x47, 0x46, 0x80, 0xB4, 0x82, 0xB0, 0x06, 0x1C, 0x90, 0x46, 0x09, 0x06, 0x30, 0x68
	.byte 0x40, 0x69, 0x89, 0x0D, 0x09, 0x18, 0x8C, 0x6A, 0x27, 0x1C, 0x58, 0x37, 0x25, 0x1C, 0xF8, 0x35
	.byte 0x29, 0x88, 0x02, 0x20, 0x08, 0x40, 0x00, 0x28, 0x02, 0xD0, 0x20, 0x1C, 0x56, 0xF7, 0x9C, 0xFB
	.byte 0x29, 0x88, 0x40, 0x20, 0x08, 0x40, 0x00, 0x28, 0x02, 0xD0, 0x20, 0x1C, 0x56, 0xF7, 0xDC, 0xFB
	.byte 0x29, 0x88, 0x20, 0x20, 0x08, 0x40, 0x00, 0x28, 0x02, 0xD0, 0x20, 0x1C, 0x57, 0xF7, 0xBA, 0xF8
	.byte 0x30, 0x68, 0x1C, 0x30, 0x01, 0x21, 0x00, 0x91, 0xFF, 0x21, 0x01, 0x91, 0x39, 0x1C, 0x42, 0x46
	.byte 0x00, 0x23, 0xFA, 0xF7, 0xA5, 0xF9, 0x02, 0xB0, 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_80F028C
sub_80F028C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldr r4, _080F031C @ =0x03000FD0
	ldr r2, [r4, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	movs r3, #0x01
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F02D6
	movs r1, #0xF8
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080F0310
	ldr r1, _080F0320 @ =0x0000055A
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F0310
_080F02D6:
	movs r0, #0x02
	str r0, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r1, #0x96
	lsls r1, r1, #0x03
	adds r0, r2, r1
	ldr r1, _080F0324 @ =0x03000FC0
	ldr r2, [r1, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r2, r2, r1
	movs r1, #0x2F
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
	ldr r0, [r7, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, #0xA8
	add r2, sp, #0x008
	bl sub_80ECB20
	ldr r0, [r4, #0x00]
	ldr r1, _080F0328 @ =0x0000054C
	adds r0, r0, r1
	mov r1, r8
	strh r1, [r0, #0x00]
_080F0310:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F031C: .4byte 0x03000FD0
_080F0320: .4byte 0x0000055A
_080F0324: .4byte 0x03000FC0
_080F0328: .4byte 0x0000054C
	thumb_func_start sub_80F032C
sub_80F032C:
	push {r4, lr}
	ldr r4, _080F0348 @ =0x03000FCC
	ldr r0, [r4, #0x00]
	movs r1, #0x04
	bl sub_80E6FB8
	ldr r0, [r4, #0x00]
	movs r1, #0x10
	bl sub_80E7118
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F0348: .4byte 0x03000FCC
	thumb_func_start sub_80F034C
sub_80F034C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	mov r8, r1
	ldr r2, [r4, #0x00]
	ldr r3, _080F03BC @ =0x08CDC2F8
	str r3, [r2, #0x18]
	cmp r1, #0x00
	bne _080F037E
	mov r1, sp
	adds r0, r3, #0x0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	mov r0, sp
	str r0, [r2, #0x18]
	mov r1, sp
	subs r0, r2, #0x4
	subs r0, r4, r0
	ldrh r3, [r3, #0x08]
	adds r0, r0, r3
	strh r0, [r1, #0x08]
_080F037E:
	bl sub_80E8DC0
	ldr r0, _080F03C0 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	bl free_heap_memory_8018C68
	movs r0, #0x02
	mov r1, r8
	ands r0, r1
	cmp r0, #0x00
	beq _080F03A0
	ldr r0, [r4, #0x00]
	ldr r1, _080F03C4 @ =0x08CDBD68
	str r1, [r0, #0x18]
	movs r1, #0x00
	bl process_remove
_080F03A0:
	movs r0, #0x01
	mov r5, r8
	ands r0, r5
	cmp r0, #0x00
	beq _080F03B0
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_080F03B0:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F03BC: .4byte 0x08CDC2F8
_080F03C0: .4byte 0x03000FD0
_080F03C4: .4byte 0x08CDBD68
	thumb_func_start sub_80F03C8
sub_80F03C8:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, _080F041C @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r1, #0xFC
	lsls r1, r1, #0x01
	adds r5, r0, r1
	adds r1, #0xA0
	adds r4, r0, r1
	ldrh r1, [r4, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x01
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F03FE
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x14]
	bl sub_8028E70
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F03FE
	ldrh r1, [r4, #0x00]
	adds r0, r7, #0x0
	eors r0, r1
	strh r0, [r4, #0x00]
_080F03FE:
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080F0416
	ldr r0, [r6, #0x00]
	adds r0, #0x1C
	adds r1, r5, #0x0
	bl sub_80EA778
_080F0416:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F041C: .4byte 0x03000FD0
	thumb_func_start sub_80F0420
sub_80F0420:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	mov r8, r1
	ldr r2, [r4, #0x00]
	ldr r3, _080F0484 @ =0x08CDC308
	str r3, [r2, #0x18]
	cmp r1, #0x00
	bne _080F0452
	mov r1, sp
	adds r0, r3, #0x0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	mov r0, sp
	str r0, [r2, #0x18]
	mov r1, sp
	subs r0, r2, #0x4
	subs r0, r4, r0
	ldrh r3, [r3, #0x08]
	adds r0, r0, r3
	strh r0, [r1, #0x08]
_080F0452:
	movs r0, #0x02
	mov r1, r8
	ands r0, r1
	cmp r0, #0x00
	beq _080F0468
	ldr r0, [r4, #0x00]
	ldr r1, _080F0488 @ =0x08CDBD68
	str r1, [r0, #0x18]
	movs r1, #0x00
	bl process_remove
_080F0468:
	movs r0, #0x01
	mov r5, r8
	ands r0, r5
	cmp r0, #0x00
	beq _080F0478
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_080F0478:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F0484: .4byte 0x08CDC308
_080F0488: .4byte 0x08CDBD68
	thumb_func_start bevs_process_init_80F048C
bevs_process_init_80F048C: @ 080F048C
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	cmp r6, #0x00
	beq _080F04AC
	adds r4, r5, #0x4
	str r4, [r5, #0x00]
	adds r0, r4, #0x0
	adds r2, r3, #0x0
	bl process_add
	ldr r0, _080F04E0 @ =0x08CDBD68
	str r0, [r4, #0x18]
_080F04AC:
	ldr r2, [r5, #0x00]
	ldr r3, _080F04E4 @ =0x08CDC308
	str r3, [r2, #0x18]
	cmp r6, #0x00
	bne _080F04D2
	mov r1, sp
	adds r0, r3, #0x0
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	mov r0, sp
	str r0, [r2, #0x18]
	mov r1, sp
	subs r0, r2, #0x4
	subs r0, r5, r0
	ldrh r3, [r3, #0x08]
	adds r0, r0, r3
	strh r0, [r1, #0x08]
_080F04D2:
	ldr r0, _080F04E8 @ =0x03000FD4
	str r5, [r0, #0x00]
	adds r0, r5, #0x0
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F04E0: .4byte 0x08CDBD68
_080F04E4: .4byte 0x08CDC308
_080F04E8: .4byte 0x03000FD4
