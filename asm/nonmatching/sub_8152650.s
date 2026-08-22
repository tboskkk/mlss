	.syntax unified
	.text

	thumb_func_start sub_8152650
sub_8152650:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	ldrb r0, [r4, #0x0C]
	cmp r0, #0x13
	bls _0815265E
	b _081528C4
_0815265E:
	lsls r0, r0, #0x02
	ldr r1, _08152668 @ =lbl_0815266C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08152668: .4byte lbl_0815266C
lbl_0815266C:
	.4byte _081526BC
	.4byte _081526C4
	.4byte _081526FC
	.4byte _081528C4
	.4byte _08152718
	.4byte _0815273C
	.4byte _08152758
	.4byte _08152774
	.4byte _081527AC
	.4byte _08152790
	.4byte _081528C4
	.4byte _081527E4
	.4byte _08152800
	.4byte _0815281C
	.4byte _08152838
	.4byte _08152870
	.4byte _081527C8
	.4byte _08152854
	.4byte _0815288C
	.4byte _081528A8
_081526BC:
	ldr r2, [pc, #0] @ (0x81526c0)
	b.n _081526C6
	movs r6, #24
	lsrs r1, r4, #32
_081526C4:
	ldr r2, [pc, #48] @ (0x81526f8)
_081526C6:
	movs r0, #72 @ 0x48
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_8158F28
	adds r5, r0, #0
	ldr r2, [r5, #48] @ 0x30
	movs r1, #16
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	movs r1, #1
	str r1, [sp, #0]
	ldr r4, [r2, #20]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl _call_via_r4
	adds r0, r5, #0
	b.n _081528C6
	movs r0, r0
	movs r6, #32
	lsrs r1, r4, #32
_081526FC:
	ldr r2, [pc, #20] @ (0x8152714)
	movs r0, #68 @ 0x44
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_8153F5C
	adds r5, r0, #0
	b.n _081528C6
	movs r6, #40 @ 0x28
	lsrs r1, r4, #32
_08152718:
	ldr r2, [pc, #28] @ (0x8152738)
	movs r0, #64 @ 0x40
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_81588DC
	adds r5, r0, #0
	bl sub_8158884
	adds r0, r5, #0
	b.n _081528C6
	movs r0, r0
	movs r6, #48 @ 0x30
	lsrs r1, r4, #32
_0815273C:
	ldr r2, [pc, #20] @ (0x8152754)
	movs r0, #68 @ 0x44
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_8158CC4
	adds r5, r0, #0
	b.n _081528C6
	movs r6, #56 @ 0x38
	lsrs r1, r4, #32
_08152758:
	ldr r2, [pc, #20] @ (0x8152770)
	movs r0, #68 @ 0x44
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_8158BE0
	adds r5, r0, #0
	b.n _081528C6
	movs r6, #64 @ 0x40
	lsrs r1, r4, #32
_08152774:
	ldr r2, [pc, #20] @ (0x815278c)
	movs r0, #60 @ 0x3c
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_8158B00
	adds r5, r0, #0
	b.n _081528C6
	movs r6, #72 @ 0x48
	lsrs r1, r4, #32
_08152790:
	ldr r2, [pc, #20] @ (0x81527a8)
	movs r0, #60 @ 0x3c
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_8158A64
	adds r5, r0, #0
	b.n _081528C6
	movs r6, #80 @ 0x50
	lsrs r1, r4, #32
_081527AC:
	ldr r2, [pc, #20] @ (0x81527c4)
	movs r0, #56 @ 0x38
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_81589F0
	adds r5, r0, #0
	b.n _081528C6
	movs r6, #88 @ 0x58
	lsrs r1, r4, #32
_081527C8:
	ldr r2, [pc, #20] @ (0x81527e0)
	movs r0, #56 @ 0x38
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_81589A8
	adds r5, r0, #0
	b.n _081528C6
	movs r6, #88 @ 0x58
	lsrs r1, r4, #32
_081527E4:
	ldr r2, [pc, #20] @ (0x81527fc)
	movs r0, #56 @ 0x38
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815881C
	adds r5, r0, #0
	b.n _081528C6
	movs r6, #96 @ 0x60
	lsrs r1, r4, #32
_08152800:
	ldr r2, [pc, #20] @ (0x8152818)
	movs r0, #60 @ 0x3c
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_81542DC
	adds r5, r0, #0
	b.n _081528C6
	movs r6, #104 @ 0x68
	lsrs r1, r4, #32
_0815281C:
	ldr r2, [pc, #20] @ (0x8152834)
	movs r0, #56 @ 0x38
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_8158710
	adds r5, r0, #0
	b.n _081528C6
	movs r6, #112 @ 0x70
	lsrs r1, r4, #32
_08152838:
	ldr r2, [pc, #20] @ (0x8152850)
	movs r0, #64 @ 0x40
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_8154594
	adds r5, r0, #0
	b.n _081528C6
	movs r6, #120 @ 0x78
	lsrs r1, r4, #32
_08152854:
	ldr r2, [pc, #20] @ (0x815286c)
	movs r0, #64 @ 0x40
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_81585EC
	adds r5, r0, #0
	b.n _081528C6
	movs r6, #128 @ 0x80
	lsrs r1, r4, #32
_08152870:
	ldr r2, [pc, #20] @ (0x8152888)
	movs r0, #60 @ 0x3c
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_81585B0
	adds r5, r0, #0
	b.n _081528C6
	movs r6, #136 @ 0x88
	lsrs r1, r4, #32
_0815288C:
	ldr r2, [pc, #20] @ (0x81528a4)
	movs r0, #56 @ 0x38
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_815852C
	adds r5, r0, #0
	b.n _081528C6
	movs r6, #144 @ 0x90
	lsrs r1, r4, #32
_081528A8:
	ldr r2, [pc, #20] @ (0x81528c0)
	movs r0, #60 @ 0x3c
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	movs r2, #0
	bl sub_8158464
	adds r5, r0, #0
	b.n _081528C6
	movs r6, #152 @ 0x98
	lsrs r1, r4, #32
_081528C4:
	movs r0, #0x00
_081528C6:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
