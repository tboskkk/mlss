	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8021574
sub_8021574:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x000]
	mov r9, r1
	str r2, [sp, #0x004]
	str r3, [sp, #0x008]
	ldr r4, [sp, #0x03C]
	ldr r1, _08021618 @ =0x0203FFB8
	movs r0, #0x00
	mov r10, r0
	movs r7, #0x00
	movs r0, #0xF0
	lsls r0, r0, #0x08
	mov r2, r9
	ands r0, r2
	cmp r0, #0x00
	beq _080215AA
	asrs r0, r2, #0x0C
	subs r0, #0x01
	str r0, [sp, #0x000]
	ldr r0, _0802161C @ =0x00000FFF
	ands r2, r0
	mov r9, r2
_080215AA:
	ldrb r1, [r1, #0x04]
	mov r8, r1
	mov r6, r8
	cmp r6, #0x0F
	ble _080215B6
	b _08021724
_080215B6:
	lsls r0, r6, #0x01
	ldr r1, _08021620 @ =0x0203FFC4
	adds r1, r1, r0
	mov r12, r1
	movs r0, #0x10
	subs r0, r0, r6
	movs r2, #0x01
	ands r0, r2
	cmp r6, #0x10
	bge _080215CE
	cmp r0, #0x00
	beq _0802164A
_080215CE:
	mov r0, r12
	ldrh r2, [r0, #0x00]
	lsls r1, r2, #0x10
	ldr r0, _08021624 @ =0x0000FFFF
	cmp r2, r0
	beq _08021634
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _0802162C
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	bne _08021640
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsrs r1, r1, #0x1A
	movs r0, #0x0F
	ands r1, r0
	ldr r0, _08021628 @ =0x000003FF
	ands r0, r2
	ldr r2, [sp, #0x000]
	cmp r2, r1
	bne _08021640
	cmp r9, r0
	bne _08021640
	cmp r3, #0x00
	bne _08021640
	movs r0, #0x01
	mov r1, r8
	lsls r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _08021640
	.byte 0x00, 0x00
_08021618: .4byte 0x0203FFB8
_0802161C: .4byte 0x00000FFF
_08021620: .4byte 0x0203FFC4
_08021624: .4byte 0x0000FFFF
_08021628: .4byte 0x000003FF
_0802162C:
	cmp r4, r8
	bne _08021640
	movs r0, #0x01
	b _0802190A
_08021634:
	movs r0, #0x01
	mov r2, r8
	lsls r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_08021640:
	movs r0, #0x02
	add r12, r0
	adds r6, #0x01
	cmp r6, #0x0F
	bgt _08021724
_0802164A:
	mov r1, r12
	ldrh r2, [r1, #0x00]
	lsls r1, r2, #0x10
	ldr r0, _08021694 @ =0x0000FFFF
	cmp r2, r0
	beq _080216A4
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _0802169C
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	bne _080216B2
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsrs r1, r1, #0x1A
	movs r0, #0x0F
	ands r1, r0
	ldr r0, _08021698 @ =0x000003FF
	ands r0, r2
	ldr r2, [sp, #0x000]
	cmp r2, r1
	bne _080216B2
	cmp r9, r0
	bne _080216B2
	cmp r3, #0x00
	bne _080216B2
	movs r0, #0x01
	lsls r0, r6
	orrs r7, r0
	lsls r0, r7, #0x10
	lsrs r7, r0, #0x10
	b _080216B2
	.byte 0x00, 0x00
_08021694: .4byte 0x0000FFFF
_08021698: .4byte 0x000003FF
_0802169C:
	cmp r4, r6
	bne _080216B2
	movs r0, #0x01
	b _0802190A
_080216A4:
	movs r0, #0x01
	lsls r0, r6
	mov r1, r10
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_080216B2:
	adds r3, r6, #0x1
	mov r0, r12
	ldrh r2, [r0, #0x02]
	lsls r1, r2, #0x10
	ldr r0, _080216FC @ =0x0000FFFF
	cmp r2, r0
	beq _0802170C
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _08021704
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	bne _0802171A
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsrs r1, r1, #0x1A
	movs r0, #0x0F
	ands r1, r0
	ldr r0, _08021700 @ =0x000003FF
	ands r0, r2
	ldr r2, [sp, #0x000]
	cmp r2, r1
	bne _0802171A
	cmp r9, r0
	bne _0802171A
	cmp r5, #0x00
	bne _0802171A
	movs r0, #0x01
	lsls r0, r3
	orrs r7, r0
	lsls r0, r7, #0x10
	lsrs r7, r0, #0x10
	b _0802171A
_080216FC: .4byte 0x0000FFFF
_08021700: .4byte 0x000003FF
_08021704:
	cmp r4, r3
	bne _0802171A
	movs r0, #0x01
	b _0802190A
_0802170C:
	movs r0, #0x01
	lsls r0, r3
	mov r1, r10
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_0802171A:
	movs r2, #0x04
	add r12, r2
	adds r6, #0x02
	cmp r6, #0x0F
	ble _0802164A
_08021724:
	cmp r7, #0x00
	beq _0802172A
	b _08021904
_0802172A:
	ldr r0, _08021768 @ =0x0839EF3C
	ldr r1, [sp, #0x000]
	lsls r2, r1, #0x02
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	add r0, r9
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x00C]
	ldr r0, _0802176C @ =0x0300034C
	ldr r1, _08021770 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	ldr r3, _08021774 @ =0x0839EEE4
	cmp r0, #0x02
	bne _08021780
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08021780
	ldr r0, _08021778 @ =0x0203FFB8
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _08021780
	ldr r0, _0802177C @ =0x0839EF10
	adds r0, r2, r0
	b _08021782
	.byte 0x00, 0x00
_08021768: .4byte 0x0839EF3C
_0802176C: .4byte 0x0300034C
_08021770: .4byte 0x00000888
_08021774: .4byte 0x0839EEE4
_08021778: .4byte 0x0203FFB8
_0802177C: .4byte 0x0839EF10
_08021780:
	adds r0, r2, r3
_08021782:
	ldr r1, [r0, #0x00]
	mov r2, r9
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _08021796
	mov r4, r8
_08021796:
	movs r0, #0x00
	str r0, [sp, #0x010]
	ldr r1, [sp, #0x00C]
	cmp r0, r1
	blt _080217A2
	b _080218E6
_080217A2:
	ldr r0, [sp, #0x004]
	lsls r0, r0, #0x0F
	mov r8, r0
	ldr r0, [sp, #0x034]
	lsls r0, r0, #0x0E
	mov r1, r8
	orrs r1, r0
	adds r6, r2, #0x0
	ldr r2, [sp, #0x000]
	lsls r0, r2, #0x0A
	orrs r1, r0
	mov r0, r9
	orrs r1, r0
	mov r8, r1
	movs r0, #0x01
	ldr r1, [sp, #0x00C]
	ands r0, r1
	cmp r1, #0x00
	ble _080217CC
	cmp r0, #0x00
	beq _08021830
_080217CC:
	mov r0, r10
	asrs r0, r4
	movs r1, #0x01
	b _080217E0
_080217D4:
	adds r4, #0x01
	cmp r4, #0x10
	bne _080217DC
	b _080218FC
_080217DC:
	mov r0, r10
	asrs r0, r4
_080217E0:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080217D4
	movs r5, #0x01
	lsls r5, r4
	orrs r7, r5
	lsls r0, r7, #0x10
	lsrs r7, r0, #0x10
	lsls r0, r4, #0x01
	ldr r2, _08021824 @ =0x0203FFC4
	adds r0, r0, r2
	mov r1, r8
	strh r1, [r0, #0x00]
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bne _08021818
	lsls r1, r4, #0x05
	ldr r0, _08021828 @ =0x02000280
	adds r1, r1, r0
	adds r0, r6, #0x0
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0802182C @ =0x0300034C
	ldrh r0, [r1, #0x00]
	orrs r5, r0
	strh r5, [r1, #0x00]
_08021818:
	adds r4, #0x01
	adds r6, #0x20
	ldr r1, [sp, #0x010]
	adds r1, #0x01
	b _080218DE
	.byte 0x00, 0x00
_08021824: .4byte 0x0203FFC4
_08021828: .4byte 0x02000280
_0802182C: .4byte 0x0300034C
_08021830:
	mov r0, r10
	asrs r0, r4
	movs r1, #0x01
	b _08021842
_08021838:
	adds r4, #0x01
	cmp r4, #0x10
	beq _080218FC
	mov r0, r10
	asrs r0, r4
_08021842:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _08021838
	movs r5, #0x01
	lsls r5, r4
	orrs r7, r5
	lsls r0, r7, #0x10
	lsrs r7, r0, #0x10
	lsls r0, r4, #0x01
	ldr r1, _08021888 @ =0x0203FFC4
	adds r0, r0, r1
	mov r2, r8
	strh r2, [r0, #0x00]
	ldr r0, [sp, #0x008]
	cmp r0, #0x00
	bne _0802187A
	lsls r1, r4, #0x05
	ldr r2, _0802188C @ =0x02000280
	adds r1, r1, r2
	adds r0, r6, #0x0
	movs r2, #0x10
	bl CpuSet
	ldr r1, _08021890 @ =0x0300034C
	ldrh r0, [r1, #0x00]
	orrs r5, r0
	strh r5, [r1, #0x00]
_0802187A:
	adds r4, #0x01
	adds r2, r6, #0x0
	adds r2, #0x20
	mov r0, r10
	asrs r0, r4
	movs r1, #0x01
	b _0802189E
_08021888: .4byte 0x0203FFC4
_0802188C: .4byte 0x02000280
_08021890: .4byte 0x0300034C
_08021894:
	adds r4, #0x01
	cmp r4, #0x10
	beq _080218FC
	mov r0, r10
	asrs r0, r4
_0802189E:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _08021894
	movs r5, #0x01
	lsls r5, r4
	orrs r7, r5
	lsls r0, r7, #0x10
	lsrs r7, r0, #0x10
	lsls r0, r4, #0x01
	ldr r1, _080218F0 @ =0x0203FFC4
	adds r0, r0, r1
	mov r1, r8
	strh r1, [r0, #0x00]
	ldr r0, [sp, #0x008]
	cmp r0, #0x00
	bne _080218D6
	lsls r1, r4, #0x05
	ldr r0, _080218F4 @ =0x02000280
	adds r1, r1, r0
	adds r0, r2, #0x0
	movs r2, #0x10
	bl CpuSet
	ldr r1, _080218F8 @ =0x0300034C
	ldrh r0, [r1, #0x00]
	orrs r5, r0
	strh r5, [r1, #0x00]
_080218D6:
	adds r4, #0x01
	adds r6, #0x40
	ldr r1, [sp, #0x010]
	adds r1, #0x02
_080218DE:
	str r1, [sp, #0x010]
	ldr r2, [sp, #0x00C]
	cmp r1, r2
	blt _08021830
_080218E6:
	ldr r0, [sp, #0x038]
	strh r7, [r0, #0x00]
	movs r0, #0x00
	b _0802190A
	.byte 0x00, 0x00
_080218F0: .4byte 0x0203FFC4
_080218F4: .4byte 0x02000280
_080218F8: .4byte 0x0300034C
_080218FC:
	ldr r1, [sp, #0x038]
	strh r7, [r1, #0x00]
	movs r0, #0x01
	b _0802190A
_08021904:
	ldr r2, [sp, #0x038]
	strh r7, [r2, #0x00]
	movs r0, #0x02
_0802190A:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_802191C
sub_802191C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08021A0C @ =0x0203FFB8
	adds r6, r3, #0x0
	adds r6, #0x0C
	movs r2, #0x00
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	lsls r1, r0, #0x10
	ldr r4, _08021A10 @ =0x0000FFFF
	cmp r0, r4
	beq _080219FC
	lsrs r1, r1, #0x1A
	mov r12, r1
	movs r1, #0x0F
	mov r10, r1
	mov r2, r10
	mov r1, r12
	ands r2, r1
	mov r12, r2
	ldr r1, _08021A14 @ =0x000003FF
	adds r7, r1, #0x0
	ands r7, r0
	movs r5, #0x00
	ldrb r3, [r3, #0x04]
	cmp r3, #0x0F
	bgt _080219FA
	mov r8, r4
	mov r9, r1
	lsls r0, r3, #0x01
	adds r4, r0, r6
	movs r0, #0x10
	subs r0, r0, r3
	movs r6, #0x01
	ands r0, r6
	cmp r3, #0x10
	bge _08021972
	cmp r0, #0x00
	beq _080219A0
_08021972:
	ldrh r2, [r4, #0x00]
	lsls r0, r2, #0x10
	cmp r2, r8
	beq _08021998
	lsrs r0, r0, #0x1A
	mov r1, r10
	ands r0, r1
	mov r1, r9
	ands r1, r2
	cmp r12, r0
	bne _08021998
	cmp r7, r1
	bne _08021998
	mov r2, r8
	strh r2, [r4, #0x00]
	adds r0, r6, #0x0
	lsls r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08021998:
	adds r4, #0x02
	adds r3, #0x01
	cmp r3, #0x0F
	bgt _080219FA
_080219A0:
	ldrh r2, [r4, #0x00]
	lsls r1, r2, #0x10
	cmp r2, r8
	beq _080219C8
	lsrs r1, r1, #0x1A
	movs r0, #0x0F
	ands r1, r0
	mov r0, r9
	ands r0, r2
	cmp r12, r1
	bne _080219C8
	cmp r7, r0
	bne _080219C8
	mov r0, r8
	strh r0, [r4, #0x00]
	movs r0, #0x01
	lsls r0, r3
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
_080219C8:
	adds r6, r3, #0x1
	ldrh r2, [r4, #0x02]
	lsls r1, r2, #0x10
	cmp r2, r8
	beq _080219F2
	lsrs r1, r1, #0x1A
	movs r0, #0x0F
	ands r1, r0
	mov r0, r9
	ands r0, r2
	cmp r12, r1
	bne _080219F2
	cmp r7, r0
	bne _080219F2
	mov r1, r8
	strh r1, [r4, #0x02]
	movs r0, #0x01
	lsls r0, r6
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
_080219F2:
	adds r4, #0x04
	adds r3, #0x02
	cmp r3, #0x0F
	ble _080219A0
_080219FA:
	adds r2, r5, #0x0
_080219FC:
	adds r0, r2, #0x0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08021A0C: .4byte 0x0203FFB8
_08021A10: .4byte 0x0000FFFF
_08021A14: .4byte 0x000003FF
	thumb_func_start sub_8021A18
sub_8021A18:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _08021A60 @ =0x0203FFB8
	ldr r3, [r0, #0x30]
	cmp r3, #0x00
	beq _08021ABE
	cmp r5, #0x02
	bne _08021A68
	ldr r2, _08021A64 @ =0x00F0FFFF
	movs r5, #0x20
_08021A2E:
	cmp r3, r4
	beq _08021A56
	ldrb r1, [r3, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08021A56
	adds r0, r3, #0x0
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08021A56
	ldr r1, [r3, #0x1C]
	ands r1, r2
	ldr r0, [r4, #0x1C]
	ands r0, r2
	cmp r1, r0
	beq _08021AB4
_08021A56:
	ldr r3, [r3, #0x68]
	cmp r3, #0x00
	bne _08021A2E
	b _08021ABE
	.byte 0x00, 0x00
_08021A60: .4byte 0x0203FFB8
_08021A64: .4byte 0x00F0FFFF
_08021A68:
	movs r6, #0x0F
_08021A6A:
	cmp r3, r4
	beq _08021AB8
	ldrb r0, [r3, #0x1E]
	ldrb r2, [r4, #0x1E]
	adds r1, r6, #0x0
	ands r1, r0
	adds r0, r6, #0x0
	ands r0, r2
	cmp r1, r0
	bne _08021AB8
	cmp r5, #0x00
	bne _08021A8A
	ldrh r0, [r3, #0x18]
	ldrh r1, [r4, #0x18]
	cmp r0, r1
	beq _08021AB4
_08021A8A:
	cmp r5, #0x01
	bne _08021A96
	ldrh r0, [r3, #0x1A]
	ldrh r1, [r4, #0x1A]
	cmp r0, r1
	beq _08021AB4
_08021A96:
	cmp r5, #0x03
	bne _08021AA2
	ldrh r0, [r3, #0x2E]
	ldrh r1, [r4, #0x2E]
	cmp r0, r1
	beq _08021AB4
_08021AA2:
	cmp r5, #0x04
	bne _08021AB8
	ldrh r0, [r3, #0x18]
	ldrh r1, [r4, #0x18]
	cmp r0, r1
	bne _08021AB8
	ldr r0, [r3, #0x44]
	cmp r0, #0x00
	bne _08021AB8
_08021AB4:
	adds r0, r3, #0x0
	b _08021AC0
_08021AB8:
	ldr r3, [r3, #0x68]
	cmp r3, #0x00
	bne _08021A6A
_08021ABE:
	movs r0, #0x00
_08021AC0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8021AC8
sub_8021AC8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	mov r8, r1
	adds r7, r2, #0x0
	mov r9, r3
	ldr r0, [sp, #0x024]
	cmp r0, #0x00
	bne _08021B64
	ldrb r0, [r4, #0x1E]
	lsls r1, r0, #0x1C
	lsrs r5, r1, #0x1C
	ldrh r2, [r4, #0x18]
	ldr r1, _08021B38 @ =0x0203FFB8
	ldr r1, [r1, #0x2C]
	adds r3, r0, #0x0
	adds r6, r2, #0x0
_08021AEE:
	ldrb r0, [r1, #0x0C]
	cmp r0, #0x02
	bne _08021B00
	ldrb r0, [r1, #0x0D]
	cmp r0, r5
	bne _08021B00
	ldrh r0, [r1, #0x0E]
	cmp r0, r2
	beq _08021B3C
_08021B00:
	ldr r1, [r1, #0x04]
	cmp r1, #0x00
	bne _08021AEE
	movs r1, #0x00
_08021B08:
	cmp r1, #0x00
	bne _08021B44
	ldr r1, [sp, #0x01C]
	adds r1, #0x10
	lsls r2, r3, #0x1C
	lsrs r2, r2, #0x1C
	movs r0, #0x02
	adds r3, r6, #0x0
	bl sprite_heap_alloc
	str r0, [r4, #0x48]
	mov r1, r8
	str r1, [r4, #0x50]
	adds r0, #0x10
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_80208E0
	ldrb r0, [r4, #0x13]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r4, #0x13]
	b _08021B6E
	.byte 0x00, 0x00
_08021B38: .4byte 0x0203FFB8
_08021B3C:
	ldr r0, [r1, #0x08]
	subs r0, #0x10
	subs r1, r1, r0
	b _08021B08
_08021B44:
	str r1, [r4, #0x48]
	ldr r0, [r1, #0x04]
	str r0, [r4, #0x50]
	adds r0, r1, #0x0
	adds r0, #0x10
	str r0, [r4, #0x4C]
	ldrb r1, [r4, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x13]
	b _08021B6E
_08021B5C:
	ldr r0, [r1, #0x08]
	subs r0, #0x10
	subs r2, r1, r0
	b _08021BAA
_08021B64:
	mov r2, r8
	str r2, [r4, #0x4C]
	movs r0, #0x00
	str r0, [r4, #0x48]
	str r0, [r4, #0x50]
_08021B6E:
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	beq _08021BDE
	ldrb r1, [r7, #0x02]
	ldrb r0, [r7, #0x03]
	lsls r0, r0, #0x08
	orrs r1, r0
	cmp r1, #0x00
	bne _08021BD8
	ldrb r0, [r4, #0x1E]
	lsls r1, r0, #0x1C
	lsrs r5, r1, #0x1C
	ldrh r2, [r4, #0x1A]
	ldr r1, _08021BC8 @ =0x0203FFB8
	ldr r1, [r1, #0x2C]
	adds r3, r0, #0x0
	adds r6, r2, #0x0
_08021B90:
	ldrb r0, [r1, #0x0C]
	cmp r0, #0x03
	bne _08021BA2
	ldrb r0, [r1, #0x0D]
	cmp r0, r5
	bne _08021BA2
	ldrh r0, [r1, #0x0E]
	cmp r0, r2
	beq _08021B5C
_08021BA2:
	ldr r1, [r1, #0x04]
	cmp r1, #0x00
	bne _08021B90
	movs r2, #0x00
_08021BAA:
	cmp r2, #0x00
	bne _08021BCC
	lsls r2, r3, #0x1C
	lsrs r2, r2, #0x1C
	movs r0, #0x03
	ldr r1, [sp, #0x020]
	adds r3, r6, #0x0
	bl sprite_heap_alloc
	adds r2, r0, #0x0
	ldrb r0, [r4, #0x13]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r4, #0x13]
	b _08021BDA
_08021BC8: .4byte 0x0203FFB8
_08021BCC:
	ldrb r1, [r4, #0x13]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x13]
	b _08021BDA
_08021BD8:
	subs r2, r7, r1
_08021BDA:
	str r2, [r4, #0x44]
	b _08021C0C
_08021BDE:
	ldr r0, [sp, #0x028]
	cmp r0, #0x00
	bne _08021C0C
	adds r0, r4, #0x0
	movs r1, #0x04
	bl sub_8021A18
	cmp r0, #0x00
	bne _08021C04
	ldr r1, _08021C00 @ =0x0203FFC0
	ldrh r0, [r1, #0x00]
	strh r0, [r4, #0x2E]
	ldr r2, [sp, #0x01C]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	b _08021C08
	.byte 0x00, 0x00
_08021C00: .4byte 0x0203FFC0
_08021C04:
	ldrh r0, [r0, #0x2E]
	strh r0, [r4, #0x2E]
_08021C08:
	movs r0, #0x00
	str r0, [r4, #0x44]
_08021C0C:
	str r7, [r4, #0x38]
	mov r0, r9
	str r0, [r4, #0x54]
	movs r0, #0x00
	str r0, [r4, #0x58]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8021C24
sub_8021C24:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x48]
	cmp r0, #0x00
	beq _08021C56
	ldrb r1, [r4, #0x13]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08021C56
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8021A18
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _08021C4E
	ldr r0, [r4, #0x48]
	bl sprite_heap_free
	b _08021C56
_08021C4E:
	ldrb r0, [r2, #0x13]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x13]
_08021C56:
	ldr r1, [r4, #0x44]
	cmp r1, #0x00
	beq _08021C92
	ldr r0, _08021C84 @ =0x07FFFFFF
	cmp r1, r0
	bhi _08021CB4
	ldrb r1, [r4, #0x13]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08021CB4
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8021A18
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _08021C88
	ldr r0, [r4, #0x44]
	bl sprite_heap_free
	b _08021CB4
	.byte 0x00, 0x00
_08021C84: .4byte 0x07FFFFFF
_08021C88:
	ldrb r0, [r2, #0x13]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x13]
	b _08021CB4
_08021C92:
	ldr r5, _08021CBC @ =0x0203FFB8
	ldrh r0, [r4, #0x2E]
	ldrh r1, [r4, #0x30]
	adds r0, r0, r1
	ldrh r1, [r5, #0x08]
	cmp r0, r1
	bne _08021CB4
	adds r0, r4, #0x0
	movs r1, #0x03
	bl sub_8021A18
	cmp r0, #0x00
	bne _08021CB4
	ldrh r0, [r5, #0x08]
	ldrh r1, [r4, #0x30]
	subs r0, r0, r1
	strh r0, [r5, #0x08]
_08021CB4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08021CBC: .4byte 0x0203FFB8
	thumb_func_start sprite_heap_alloc
sprite_heap_alloc:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	ldr r0, _08021D0C @ =0x0203FFB8
	ldr r1, [r0, #0x2C]
	adds r4, #0x0F
	movs r0, #0x10
	negs r0, r0
	ands r4, r0
	adds r4, #0x10
_08021CDC:
	ldr r2, [r1, #0x08]
	ldrb r3, [r1, #0x0C]
	cmp r3, #0x00
	bne _08021D38
	cmp r2, r4
	blt _08021D38
	adds r0, r4, #0x0
	adds r0, #0x10
	cmp r2, r0
	bcc _08021D10
	subs r2, r1, r4
	str r1, [r2, #0x00]
	ldr r0, [r1, #0x04]
	str r0, [r2, #0x04]
	cmp r0, #0x00
	beq _08021CFE
	str r2, [r0, #0x00]
_08021CFE:
	ldr r0, [r1, #0x08]
	subs r0, r0, r4
	str r0, [r2, #0x08]
	strb r3, [r2, #0x0C]
	str r2, [r1, #0x04]
	str r4, [r1, #0x08]
	b _08021D12
_08021D0C: .4byte 0x0203FFB8
_08021D10:
	str r2, [r1, #0x08]
_08021D12:
	movs r4, #0x00
	strb r5, [r1, #0x0C]
	strb r6, [r1, #0x0D]
	movs r2, #0x00
	strh r7, [r1, #0x0E]
	ldr r0, [r1, #0x08]
	subs r0, #0x10
	subs r0, r1, r0
	cmp r5, #0x02
	beq _08021D30
	cmp r5, #0x02
	ble _08021D40
	cmp r5, #0x03
	beq _08021D34
	b _08021D40
_08021D30:
	str r4, [r0, #0x00]
	b _08021D40
_08021D34:
	strb r2, [r0, #0x00]
	b _08021D40
_08021D38:
	ldr r1, [r1, #0x04]
	cmp r1, #0x00
	bne _08021CDC
	movs r0, #0x00
_08021D40:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
