	.syntax unified
	.text

	thumb_func_start sub_8051740
sub_8051740:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	ldrb r0, [r7, #0x00]
	cmp r0, #0x05
	bls _08051756
	b _080519D8
_08051756:
	lsls r0, r0, #0x02
	ldr r1, _08051760 @ =lbl_08051764
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08051760: .4byte lbl_08051764
lbl_08051764:
	.4byte _0805177C
	.4byte _08051878
	.4byte _080518B0
	.4byte _08051900
	.4byte _08051912
	.4byte _08051988
_0805177C:
	ldr r0, [r7, #68] @ 0x44
	movs r1, #28
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq.n _08051788
	b.n _080519D8
_08051788:
	movs r2, #0
	mov sl, r2
	adds r3, r7, #0
	adds r3, #32
	str r3, [sp, #16]
	adds r0, r7, #0
	adds r0, #34 @ 0x22
	str r0, [sp, #20]
	movs r5, #1
	negs r5, r5
	adds r6, r7, #0
	adds r6, #44 @ 0x2c
	ldr r1, [pc, #200] @ (0x805186c)
	mov r8, r1
_080517A4:
	str r5, [sp, #0]
	str r5, [sp, #4]
	str r5, [sp, #8]
	movs r0, #0
	ldr r1, [pc, #192] @ (0x8051870)
	movs r2, #1
	adds r3, r5, #0
	bl sub_8020DD0
	str r0, [r6, #0]
	movs r2, #0
	str r2, [sp, #0]
	mov r1, sl
	adds r2, r5, #0
	movs r3, #0
	bl sub_801E150
	ldr r1, [r6, #0]
	mov r3, r8
	ldrh r0, [r3, #0]
	strh r0, [r1, #0]
	ldr r1, [r6, #0]
	ldrh r0, [r3, #2]
	strh r0, [r1, #2]
	movs r0, #4
	add r0, r8
	mov r9, r0
	mov r4, sl
	adds r4, #1
	str r5, [sp, #0]
	str r5, [sp, #4]
	str r5, [sp, #8]
	movs r0, #0
	ldr r1, [pc, #136] @ (0x8051870)
	movs r2, #1
	adds r3, r5, #0
	bl sub_8020DD0
	str r0, [r6, #4]
	movs r1, #0
	str r1, [sp, #0]
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_801E150
	ldr r1, [r6, #4]
	mov r2, r8
	ldrh r0, [r2, #4]
	strh r0, [r1, #0]
	ldr r1, [r6, #4]
	mov r3, r9
	ldrh r0, [r3, #2]
	strh r0, [r1, #2]
	adds r6, #8
	movs r0, #8
	add r8, r0
	movs r1, #2
	add sl, r1
	mov r2, sl
	cmp r2, #3
	ble.n _080517A4
	ldr r1, [pc, #80] @ (0x8051874)
	movs r4, #1
	negs r4, r4
	str r4, [sp, #0]
	str r4, [sp, #4]
	str r4, [sp, #8]
	movs r0, #0
	movs r2, #1
	adds r3, r4, #0
	bl sub_8020DD0
	str r0, [r7, #60] @ 0x3c
	movs r3, #0
	str r3, [sp, #0]
	movs r1, #0
	adds r2, r4, #0
	bl sub_801E150
	ldr r2, [r7, #60] @ 0x3c
	ldrb r1, [r2, #31]
	movs r0, #4
	negs r0, r0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #31]
	ldr r0, [r7, #64] @ 0x40
	bl process_enable
	ldr r0, [r7, #68] @ 0x44
	movs r1, #2
	ldr r2, [sp, #16]
	ldr r3, [sp, #20]
	bl sub_805A0EC
	movs r0, #1
	strb r0, [r7, #0]
	b.n _080519D8
	lsrs r4, r4, #25
	lsrs r2, r7, #32
	strh r6, [r7, #6]
	movs r0, r0
	strh r5, [r7, #6]
	movs r0, r0
_08051878:
	ldr r0, [pc, #48] @ (0x80518ac)
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq.n _08051882
	b.n _080519D8
_08051882:
	ldr r0, [r7, #72] @ 0x48
	bl process_enable
	ldr r0, [r7, #60] @ 0x3c
	bl sprite_show_8020CBC
	ldrh r0, [r7, #38] @ 0x26
	subs r0, #120 @ 0x78
	strh r0, [r7, #28]
	ldrh r0, [r7, #40] @ 0x28
	subs r0, #88 @ 0x58
	strh r0, [r7, #30]
	adds r0, r7, #0
	bl sub_8051ACC
	adds r0, r7, #0
	bl sub_8051A00
	movs r0, #2
	strb r0, [r7, #0]
	b.n _080519D8
	lsrs r0, r0, #18
	lsls r0, r0, #12
_080518B0:
	ldr r0, [r7, #60] @ 0x3c
	ldrb r0, [r0, #19]
	movs r4, #3
	adds r2, r4, #0
	ands r2, r0
	cmp r2, #0
	beq.n _080518C0
	b.n _080519D8
_080518C0:
	ldr r0, [pc, #48] @ (0x80518f4)
	ldr r1, [pc, #52] @ (0x80518f8)
	adds r0, r0, r1
	movs r1, #1
	negs r1, r1
	str r1, [r0, #0]
	ldr r0, [r7, #72] @ 0x48
	ldr r1, [pc, #44] @ (0x80518fc)
	str r1, [sp, #0]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #12]
	movs r1, #0
	movs r2, #0
	movs r3, #16
	bl sub_81151E4
	movs r1, #128 @ 0x80
	lsls r1, r1, #18
	movs r2, #242 @ 0xf2
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	strb r4, [r7, #0]
	b.n _080519D8
	movs r0, r0
	lsls r4, r1, #13
	lsls r0, r0, #12
	lsrs r4, r0, #2
	movs r0, r0
_080518FC:
	.byte 0xFF, 0xFF, 0x00, 0x00
_08051900:
	.byte 0xB8, 0x6C, 0xC4, 0xF0, 0x8D, 0xFE, 0x00, 0x06, 0x00, 0x28, 0x65, 0xD1, 0x04, 0x20, 0x38, 0x70
	.byte 0x62, 0xE0
_08051912:
	.byte 0x0D, 0x4A, 0x51, 0x8D, 0x02, 0x20, 0x08, 0x40, 0x00, 0x28, 0x18, 0xD0, 0xB8, 0x6C, 0x0A, 0x49
	.byte 0x00, 0x91, 0x01, 0x91, 0x00, 0x21, 0x02, 0x91, 0x03, 0x91, 0x04, 0x21, 0x00, 0x22, 0x10, 0x23
	.byte 0xC3, 0xF0, 0x57, 0xFC, 0x01, 0x21, 0x49, 0x42, 0x61, 0x20, 0xC7, 0xF7, 0x3A, 0xFE, 0x05, 0x20
	.byte 0x38, 0x70, 0x17, 0xE0, 0x00, 0x00, 0x4C, 0x03, 0x00, 0x03, 0xFF, 0xFF, 0x00, 0x00, 0x10, 0x8D
	.byte 0xF0, 0x21, 0x01, 0x40, 0x0B, 0x4A, 0xC9, 0x08, 0x88, 0x18, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16
	.byte 0xBB, 0x8B, 0xC0, 0x18, 0xB8, 0x83, 0x01, 0x31, 0x89, 0x18, 0x00, 0x20, 0x08, 0x56, 0xF9, 0x8B
	.byte 0x40, 0x18, 0xF8, 0x83, 0x38, 0x1C, 0x00, 0xF0, 0xA8, 0xF8, 0x38, 0x1C, 0x00, 0xF0, 0x3F, 0xF8
	.byte 0x29, 0xE0, 0x74, 0x0E, 0x3A, 0x08
_08051988:
	.byte 0xB8, 0x6C, 0xC4, 0xF0, 0x49, 0xFE, 0x00, 0x06, 0x00, 0x28, 0x21, 0xD1, 0x78, 0x69, 0xC8, 0xF7
	.byte 0x41, 0xF9, 0x00, 0x2F, 0x1C, 0xD0, 0x16, 0x48, 0xB8, 0x61, 0xD0, 0xF7, 0x17, 0xFB, 0x78, 0x6C
	.byte 0x00, 0x28, 0x02, 0xD0, 0x03, 0x21, 0x06, 0xF0, 0xD3, 0xF8, 0x39, 0x6C, 0x00, 0x29, 0x05, 0xD0
	.byte 0x10, 0x48, 0x88, 0x61, 0x08, 0x1C, 0x03, 0x21, 0xC8, 0xF7, 0x3C, 0xF9, 0xB8, 0x6C, 0x00, 0x28
	.byte 0x02, 0xD0, 0x03, 0x21, 0xC4, 0xF0, 0x6E, 0xFE, 0x38, 0x1C, 0x03, 0x21, 0xC8, 0xF7, 0x32, 0xF9
_080519D8:
	ldrb r0, [r7, #0x00]
	subs r0, #0x03
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bhi _080519E8
	bl sub_8021F7C
_080519E8:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0xA8, 0xC1, 0xCD, 0x08, 0xB8, 0xC1, 0xCD, 0x08
