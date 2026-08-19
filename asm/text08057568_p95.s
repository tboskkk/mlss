	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8087540
sub_8087540:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x28]
	cmp r1, #0x00
	beq _0808756E
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r4, r0
	bne _0808756E
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	beq _0808756E
	adds r0, r1, #0x0
	adds r0, #0x78
	movs r1, #0x00
	strh r1, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
_0808756E:
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x00
	str r0, [r4, #0x68]
	str r0, [r4, #0x54]
	str r0, [r4, #0x4C]
	str r0, [r4, #0x6C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08087596
	movs r0, #0x80
	lsls r0, r0, #0x0B
	bl sub_80F75D8
_08087596:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_808759C
sub_808759C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080875B2
	ldr r0, [r4, #0x6C]
	ldr r1, [r0, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
_080875B2:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80875B8
sub_80875B8:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r3, [r1, #0x00]
	movs r4, #0x00
	ldsh r0, [r1, r4]
	cmp r0, #0x00
	ble _080875D0
	subs r0, r3, #0x1
	strh r0, [r1, #0x00]
	b _080875D4
_080875D0:
	ldr r0, _080875DC @ =0x08086091
	str r0, [r2, #0x4C]
_080875D4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080875DC: .4byte sub_8086090
	thumb_func_start sub_80875E0
sub_80875E0:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	movs r7, #0x00
_080875E8:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_8083A8C
	adds r7, r0, #0x0
	movs r4, #0x00
_080875F4:
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_8083A8C
	adds r4, r0, #0x0
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_8085ED0
	cmp r0, #0x00
	bne _08087614
	cmp r4, #0x00
	bge _080875F4
	cmp r7, #0x00
	bge _080875E8
	movs r0, #0x00
_08087614:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_808761C
sub_808761C:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, _08087634 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08087638
	movs r0, #0x00
	b _0808764C
	.byte 0x00, 0x00
_08087634: .4byte 0x03000FD8
_08087638:
	adds r0, r1, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r1, #0x08
	lsls r1, r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
_0808764C:
	pop {r1}
	bx r1
	thumb_func_start sub_8087650
sub_8087650:
	push {lr}
	ldr r1, _0808767C @ =0x03000FD8
	ldr r3, [r1, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x80
	ldr r2, [r1, #0x00]
	cmp r2, r0
	bne _08087666
	adds r0, r3, #0x0
	adds r0, #0x84
	ldr r2, [r0, #0x00]
_08087666:
	cmp r2, #0x00
	beq _08087680
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08087680
	adds r0, r2, #0x0
	b _08087682
_0808767C: .4byte 0x03000FD8
_08087680:
	movs r0, #0x00
_08087682:
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x10, 0xB5, 0x03, 0x1C, 0x98, 0x6A, 0xE4, 0x30, 0x00, 0x68, 0x06, 0x21, 0x41, 0x56
	.byte 0x9A, 0x68, 0x00, 0x2A, 0x0A, 0xD0, 0x06, 0x24, 0x10, 0x5F, 0x41, 0x43, 0x0A, 0x24, 0x10, 0x5F
	.byte 0x48, 0x43, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x01, 0x12, 0x00, 0xE0, 0x09, 0x02, 0x98, 0x69
	.byte 0x09, 0x18, 0x08, 0x1C, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x10, 0xB5, 0x04, 0x1C, 0xA0, 0x6A
	.byte 0xFF, 0xF7, 0xC3, 0xFF, 0x08, 0x30, 0x21, 0x69, 0x01, 0x61, 0x61, 0x69, 0x41, 0x61, 0xA1, 0x69
	.byte 0x81, 0x61, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x7E, 0x30, 0x01, 0x80, 0x70, 0x47
	.byte 0x00, 0x00, 0x00, 0xB5, 0x01, 0x1C, 0x7E, 0x31, 0x0A, 0x88, 0x00, 0x23, 0xC8, 0x5E, 0x00, 0x28
	.byte 0x01, 0xDD, 0x50, 0x1E, 0x08, 0x80, 0x00, 0x22, 0x88, 0x5E, 0x01, 0x21, 0x00, 0x28, 0x00, 0xD0
	.byte 0x00, 0x21, 0x08, 0x1C, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x7E, 0x30, 0x00, 0x21
	.byte 0x40, 0x5E, 0x00, 0x28, 0x01, 0xD1, 0x01, 0x20, 0x00, 0xE0, 0x00, 0x20, 0x02, 0xBC, 0x08, 0x47
	.byte 0x00, 0x00, 0x70, 0xB5, 0x06, 0x1C, 0x0C, 0x1C, 0x15, 0x4D, 0xAE, 0x30, 0x00, 0x21, 0x40, 0x5E
	.byte 0x02, 0x1C, 0x42, 0x43, 0x10, 0x1C, 0x31, 0x1C, 0xB0, 0x31, 0x00, 0x22, 0x89, 0x5E, 0x0A, 0x1C
	.byte 0x4A, 0x43, 0x11, 0x1C, 0x40, 0x18, 0x31, 0x1C, 0xB2, 0x31, 0x00, 0x22, 0x89, 0x5E, 0x0A, 0x1C
	.byte 0x4A, 0x43, 0x11, 0x1C, 0x40, 0x18, 0x29, 0x68, 0x53, 0xF1, 0x85, 0xF9, 0x01, 0x1C, 0x08, 0x48
	.byte 0x09, 0x4A, 0x80, 0x1A, 0x2A, 0x68, 0x12, 0x18, 0x24, 0x03, 0x20, 0x1C, 0x53, 0xF1, 0x7D, 0xF9
	.byte 0x31, 0x1C, 0x7C, 0x31, 0x08, 0x80, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x38, 0x10
	.byte 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08
	thumb_func_start sub_8087790
sub_8087790:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r3, _080877B4 @ =0x03001038
	ldr r0, _080877B8 @ =0x0819832C
	ldr r2, _080877BC @ =0x08198220
	subs r0, r0, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	bl _call_via_r2
	adds r4, #0x7C
	strh r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080877B4: .4byte 0x03001038
_080877B8: .4byte 0x0819832C
_080877BC: .4byte 0x08198220
	thumb_func_start sub_80877C0
sub_80877C0:
	push {r4, lr}
	adds r3, r0, #0x0
	adds r2, r3, #0x0
	adds r2, #0x92
	adds r4, r3, #0x0
	adds r4, #0x94
	ldr r1, [r4, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	adds r1, r3, #0x0
	adds r1, #0x98
	ldr r1, [r1, #0x00]
	cmp r1, r0
	blt _080877F2
	str r1, [r3, #0x18]
	movs r0, #0x00
	str r0, [r4, #0x00]
	movs r0, #0x01
	b _080877F4
_080877F2:
	movs r0, #0x00
_080877F4:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80877FC
sub_80877FC:
	push {r4, lr}
	adds r4, r0, #0x0
	cmp r2, #0x00
	bge _0808784C
	movs r0, #0x80
	lsls r0, r0, #0x07
	subs r0, r0, r4
	muls r0, r1
	cmp r0, #0x00
	bge _08087814
	ldr r4, _08087848 @ =0x00003FFF
	adds r0, r0, r4
_08087814:
	asrs r0, r0, #0x0E
	subs r4, r0, r2
	subs r1, r1, r2
	adds r0, r2, #0x0
	muls r0, r2
	cmp r0, #0x00
	bge _08087824
	adds r0, #0xFF
_08087824:
	asrs r0, r0, #0x08
	subs r2, r3, r0
	adds r0, r1, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _08087832
	adds r0, #0xFF
_08087832:
	asrs r0, r0, #0x08
	subs r1, r2, r0
	adds r0, r4, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08087840
	adds r0, #0xFF
_08087840:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	b _0808786C
	.byte 0x00, 0x00
_08087848: .4byte 0x00003FFF
_0808784C:
	adds r0, r1, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08087858
	ldr r1, _08087874 @ =0x00003FFF
	adds r0, r0, r1
_08087858:
	asrs r0, r0, #0x0E
	subs r0, r0, r2
	adds r4, r0, #0x0
	muls r4, r0
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _08087868
	adds r0, #0xFF
_08087868:
	asrs r0, r0, #0x08
	subs r0, r3, r0
_0808786C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08087874: .4byte 0x00003FFF
	thumb_func_start sub_8087878
sub_8087878:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	mov r9, r1
	adds r7, r2, #0x0
	ldr r6, [sp, #0x020]
	movs r0, #0x00
	mov r10, r0
	cmp r6, r7
	bge _080878A4
	cmp r6, r3
	bge _080878A0
	adds r0, r7, r3
	subs r6, r0, r6
	movs r1, #0x01
	mov r10, r1
	b _080878AA
_080878A0:
	adds r6, r7, #0x0
	b _080878AA
_080878A4:
	cmp r6, r3
	bge _080878AA
	adds r6, r3, #0x0
_080878AA:
	ldr r4, _080878F8 @ =0x03001038
	subs r0, r6, r3
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	adds r5, r0, #0x0
	subs r0, r6, r7
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	adds r0, r1, r5
	mov r2, r8
	str r0, [r2, #0x00]
	mov r2, r9
	str r1, [r2, #0x00]
	mov r2, r10
	cmp r2, #0x00
	beq _080878E0
	negs r0, r0
	mov r2, r8
	str r0, [r2, #0x00]
	negs r0, r1
	mov r1, r9
	str r0, [r1, #0x00]
_080878E0:
	adds r0, r6, #0x0
	cmp r0, #0x00
	bge _080878E8
	adds r0, #0xFF
_080878E8:
	asrs r0, r0, #0x08
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080878F8: .4byte 0x03001038
	thumb_func_start sub_80878FC
sub_80878FC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	lsls r4, r4, #0x01
	adds r4, r4, r5
	ldr r6, _08087938 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	adds r1, r2, #0x0
	muls r1, r5
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	negs r0, r0
	subs r0, r0, r4
	ldr r1, _0808793C @ =0x0819832C
	ldr r2, _08087940 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r6, #0x00]
	adds r2, r2, r1
	lsls r5, r5, #0x01
	adds r1, r5, #0x0
	bl _call_via_r2
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08087938: .4byte 0x03001038
_0808793C: .4byte 0x0819832C
_08087940: .4byte 0x08198220
	.byte 0x00, 0xB5, 0x03, 0x1C, 0xB2, 0x30, 0x00, 0x21, 0x40, 0x5E, 0x19, 0x1C, 0x94, 0x31, 0x09, 0x68
	.byte 0x1A, 0x1C, 0x98, 0x32, 0x12, 0x68, 0x1B, 0x6C, 0xD2, 0x1A, 0xFF, 0xF7, 0xCD, 0xFF, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00
	thumb_func_start sub_8087968
sub_8087968:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r9, r0
	mov r10, r1
	str r2, [sp, #0x000]
	adds r7, r3, #0x0
	ldr r3, [sp, #0x028]
	ldr r6, [sp, #0x02C]
	adds r0, r7, #0x0
	cmp r7, #0x00
	bge _08087988
	adds r0, r7, #0x3
_08087988:
	asrs r7, r0, #0x02
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _08087992
	adds r0, r3, #0x3
_08087992:
	asrs r3, r0, #0x02
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0808799C
	adds r0, r6, #0x3
_0808799C:
	asrs r6, r0, #0x02
	cmp r7, #0x00
	bne _080879BA
	cmp r3, #0x00
	bne _080879BA
	cmp r6, #0x00
	bne _080879BA
	mov r0, r9
	strh r6, [r0, #0x00]
	mov r1, r10
	strh r6, [r1, #0x00]
	ldr r2, [sp, #0x000]
	strh r6, [r2, #0x00]
	movs r0, #0x00
	b _08087A26
_080879BA:
	ldr r0, _08087A38 @ =0x03001038
	mov r8, r0
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	mov r2, r8
	ldr r1, [r2, #0x00]
	str r3, [sp, #0x004]
	bl _call_via_r1
	adds r5, r0, #0x0
	ldr r4, _08087A3C @ =0x0819832C
	ldr r0, _08087A40 @ =0x08198220
	subs r4, r4, r0
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r1, [sp, #0x030]
	adds r0, r7, #0x0
	muls r0, r1
	adds r1, r5, #0x0
	bl _call_via_r2
	mov r2, r9
	strh r0, [r2, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r3, [sp, #0x004]
	ldr r1, [sp, #0x030]
	adds r0, r3, #0x0
	muls r0, r1
	adds r1, r5, #0x0
	bl _call_via_r2
	mov r2, r10
	strh r0, [r2, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r1, [sp, #0x030]
	adds r0, r6, #0x0
	muls r0, r1
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r2, [sp, #0x000]
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
_08087A26:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08087A38: .4byte 0x03001038
_08087A3C: .4byte 0x0819832C
_08087A40: .4byte 0x08198220
	thumb_func_start sub_8087A44
sub_8087A44:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r8, r0
	mov r9, r1
	adds r7, r2, #0x0
	adds r0, r7, #0x0
	cmp r7, #0x00
	bge _08087A5C
	adds r0, r7, #0x3
_08087A5C:
	asrs r7, r0, #0x02
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _08087A66
	adds r0, r3, #0x3
_08087A66:
	asrs r3, r0, #0x02
	cmp r7, #0x00
	bne _08087A7C
	cmp r3, #0x00
	bne _08087A7C
	mov r0, r8
	strh r3, [r0, #0x00]
	mov r1, r9
	strh r3, [r1, #0x00]
	movs r0, #0x00
	b _08087AC4
_08087A7C:
	ldr r5, _08087AD4 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r5, #0x00]
	str r3, [sp, #0x000]
	bl _call_via_r1
	adds r6, r0, #0x0
	ldr r4, _08087AD8 @ =0x0819832C
	ldr r0, _08087ADC @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r1, [sp, #0x020]
	adds r0, r7, #0x0
	muls r0, r1
	adds r1, r6, #0x0
	bl _call_via_r2
	mov r1, r8
	strh r0, [r1, #0x00]
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r3, [sp, #0x000]
	ldr r1, [sp, #0x020]
	adds r0, r3, #0x0
	muls r0, r1
	adds r1, r6, #0x0
	bl _call_via_r2
	mov r1, r9
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
_08087AC4:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08087AD4: .4byte 0x03001038
_08087AD8: .4byte 0x0819832C
_08087ADC: .4byte 0x08198220
	thumb_func_start sub_8087AE0
sub_8087AE0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08087B2C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	ldr r3, [r0, #0x74]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x06
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08087B08
	adds r0, r2, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r0, #0x00]
_08087B08:
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08087B22
	adds r0, r3, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r0, #0x00]
_08087B22:
	ldr r0, _08087B30 @ =0x08086F0D
	str r0, [r5, #0x04]
	pop {r4, r5}
	pop {r0}
	bx r0
_08087B2C: .4byte 0x03000FD8
_08087B30: .4byte sub_8086F0C
	thumb_func_start sub_8087B34
sub_8087B34:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08087B94
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08087B62
	adds r1, #0xFF
_08087B62:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08087B6C
	adds r2, #0xFF
_08087B6C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08087B76
	adds r3, #0xFF
_08087B76:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x33
	bl sub_80DF024
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08087B9C @ =0x08086BC5
	str r0, [r4, #0x4C]
_08087B94:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08087B9C: .4byte sub_8086BC4
	.byte 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_8087BA4
sub_8087BA4:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x01
	bgt _08087BCA
	ldr r0, [r2, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, [r2, #0x50]
	str r0, [r2, #0x4C]
	movs r0, #0x00
	str r0, [r2, #0x50]
_08087BCA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8087BD0
sub_8087BD0:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r4, [r6, #0x08]
	adds r0, r4, #0x0
	adds r0, #0xE4
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x02]
	cmp r0, #0x00
	beq _08087C10
	adds r5, r0, #0x0
	ldr r1, [r4, #0x40]
	cmp r1, #0x00
	bge _08087BEE
	adds r1, #0xFF
_08087BEE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x44]
	cmp r2, #0x00
	bge _08087BF8
	adds r2, #0xFF
_08087BF8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x48]
	cmp r3, #0x00
	bge _08087C02
	adds r3, #0xFF
_08087C02:
	asrs r3, r3, #0x08
	adds r0, r4, #0x0
	adds r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_80DF024
_08087C10:
	movs r0, #0x00
	str r0, [r4, #0x54]
	str r0, [r6, #0x04]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8087C20
sub_8087C20:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r2, [r5, #0x08]
	ldr r1, _08087C48 @ =0x00000111
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _08087C42
	adds r0, r2, #0x0
	adds r0, #0x08
	bl sub_8086700
	str r4, [r5, #0x04]
_08087C42:
	pop {r4, r5}
	pop {r0}
	bx r0
_08087C48: .4byte 0x00000111
	thumb_func_start sub_8087C4C
sub_8087C4C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08087C66
	ldr r1, [r4, #0x68]
	cmp r1, #0x00
	beq _08087C64
	adds r0, r4, #0x0
	bl _call_via_r1
_08087C64:
	str r5, [r4, #0x6C]
_08087C66:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8087C6C
sub_8087C6C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08087CD4
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08087C94
	cmp r1, #0x04
	bne _08087CD0
_08087C94:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08087CB4
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _08087CC0
_08087CB4:
	ldr r2, _08087CDC @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_08087CC0:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08087CD0:
	ldr r0, _08087CE0 @ =0x08088509
	str r0, [r4, #0x4C]
_08087CD4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08087CDC: .4byte 0x0000204D
_08087CE0: .4byte sub_8088508
	thumb_func_start sub_8087CE4
sub_8087CE4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x7E
	movs r0, #0x00
	ldsh r3, [r2, r0]
	movs r1, #0x7A
	adds r1, r1, r4
	mov r12, r1
	movs r5, #0x00
	ldsh r0, [r1, r5]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r6, #0x00
	ldsh r1, [r1, r6]
	muls r0, r1
	cmp r0, #0x00
	bge _08087D0A
	adds r0, #0xFF
_08087D0A:
	asrs r0, r0, #0x08
	adds r5, r3, r0
	ldrh r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	strh r5, [r2, #0x00]
	ldr r0, _08087D8C @ =0x00003FFF
	cmp r5, r0
	bgt _08087DAA
	mov r1, r12
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	beq _08087DAA
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	adds r2, r1, #0x0
	muls r2, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x07
	subs r3, r1, r5
	muls r0, r3
	adds r0, r2, r0
	cmp r0, #0x00
	bge _08087D48
	adds r0, #0x3F
_08087D48:
	asrs r0, r0, #0x06
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08087D64
	adds r0, #0x3F
_08087D64:
	asrs r0, r0, #0x06
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bne _08087D90
	subs r0, #0x0C
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08087D88
	adds r0, #0x3F
_08087D88:
	asrs r0, r0, #0x06
	b _08087DA4
_08087D8C: .4byte 0x00003FFF
_08087D90:
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	subs r0, #0x02
	movs r6, #0x00
	ldsh r3, [r0, r6]
	lsls r3, r3, #0x08
	adds r0, r5, #0x0
	bl sub_80877FC
_08087DA4:
	str r0, [r4, #0x18]
	movs r0, #0x01
	b _08087DDC
_08087DAA:
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r1, #0x02
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	movs r2, #0x02
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x8C
	movs r5, #0x02
	ldsh r0, [r0, r5]
	lsls r0, r0, #0x08
	str r0, [r4, #0x18]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
_08087DDC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8087DE4
sub_8087DE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x7E
	movs r0, #0x00
	ldsh r3, [r2, r0]
	adds r0, r4, #0x0
	adds r0, #0x7A
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r5, #0x00
	ldsh r1, [r1, r5]
	muls r0, r1
	cmp r0, #0x00
	bge _08087E0C
	adds r0, #0xFF
_08087E0C:
	asrs r0, r0, #0x08
	adds r5, r3, r0
	ldrh r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	strh r5, [r2, #0x00]
	ldr r0, _08087E80 @ =0x00003FFF
	cmp r5, r0
	bgt _08087E84
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	adds r2, r1, #0x0
	muls r2, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x07
	subs r3, r1, r5
	muls r0, r3
	adds r0, r2, r0
	cmp r0, #0x00
	bge _08087E40
	adds r0, #0x3F
_08087E40:
	asrs r0, r0, #0x06
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08087E5C
	adds r0, #0x3F
_08087E5C:
	asrs r0, r0, #0x06
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [r0, #0x00]
	subs r0, #0x06
	movs r6, #0x00
	ldsh r3, [r0, r6]
	lsls r3, r3, #0x08
	adds r0, r5, #0x0
	bl sub_80877FC
	str r0, [r4, #0x18]
	movs r0, #0x01
	b _08087EF2
	.byte 0x00, 0x00
_08087E80: .4byte 0x00003FFF
_08087E84:
	movs r7, #0x84
	adds r7, r7, r4
	mov r8, r7
	movs r1, #0x02
	ldsh r0, [r7, r1]
	lsls r0, r0, #0x08
	str r0, [r4, #0x10]
	adds r6, r4, #0x0
	adds r6, #0x88
	movs r2, #0x02
	ldsh r0, [r6, r2]
	lsls r0, r0, #0x08
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [r0, #0x00]
	subs r0, #0x06
	movs r7, #0x00
	ldsh r3, [r0, r7]
	lsls r3, r3, #0x08
	adds r0, r5, #0x0
	bl sub_80877FC
	str r0, [r4, #0x18]
	cmp r0, #0x00
	blt _08087ECE
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	b _08087EF2
_08087ECE:
	mov r1, r8
	movs r2, #0x02
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	str r0, [r4, #0x10]
	movs r5, #0x02
	ldsh r0, [r6, r5]
	lsls r0, r0, #0x08
	str r0, [r4, #0x14]
	movs r0, #0x00
	str r0, [r4, #0x18]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
_08087EF2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_8087EFC
sub_8087EFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r12, r0
	mov r2, r12
	adds r2, #0x7E
	movs r0, #0x00
	ldsh r3, [r2, r0]
	mov r4, r12
	adds r4, #0x7A
	movs r1, #0x00
	ldsh r0, [r4, r1]
	mov r1, r12
	adds r1, #0x7C
	movs r5, #0x00
	ldsh r1, [r1, r5]
	muls r0, r1
	cmp r0, #0x00
	bge _08087F24
	adds r0, #0xFF
_08087F24:
	asrs r0, r0, #0x08
	adds r3, r3, r0
	ldrh r1, [r2, #0x00]
	mov r0, r12
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	strh r3, [r2, #0x00]
	ldr r0, _08087FDC @ =0x00003FFF
	mov r8, r0
	cmp r3, r8
	bgt _08087FE0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	beq _08087FE0
	mov r0, r12
	adds r0, #0x98
	ldr r1, [r0, #0x00]
	subs r0, #0x04
	ldr r2, [r0, #0x00]
	adds r0, r1, #0x0
	muls r0, r3
	cmp r0, #0x00
	bge _08087F56
	adds r0, #0xFF
_08087F56:
	asrs r0, r0, #0x08
	muls r0, r3
	cmp r0, #0x00
	bge _08087F60
	adds r0, #0x3F
_08087F60:
	asrs r1, r0, #0x06
	adds r0, r2, #0x0
	muls r0, r3
	adds r4, r1, r0
	mov r0, r12
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	asrs r3, r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r3, r3, r1
	mov r5, r12
	adds r5, #0x88
	ldr r0, [r5, #0x00]
	asrs r2, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r7, r2, r0
	mov r6, r12
	adds r6, #0x8C
	ldr r0, [r6, #0x00]
	asrs r2, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	lsls r1, r1, #0x08
	adds r0, r3, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08087F9E
	add r0, r8
_08087F9E:
	asrs r0, r0, #0x0E
	adds r0, r1, r0
	mov r1, r12
	str r0, [r1, #0x10]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r1, r0, #0x08
	adds r0, r7, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08087FB6
	add r0, r8
_08087FB6:
	asrs r0, r0, #0x0E
	adds r0, r1, r0
	mov r5, r12
	str r0, [r5, #0x14]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	lsls r1, r0, #0x08
	adds r0, r2, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08087FCE
	add r0, r8
_08087FCE:
	asrs r0, r0, #0x0E
	adds r0, r1, r0
	mov r5, r12
	str r0, [r5, #0x18]
	movs r0, #0x01
	b _08088016
	.byte 0x00, 0x00
_08087FDC: .4byte 0x00003FFF
_08087FE0:
	mov r0, r12
	adds r0, #0x84
	movs r1, #0x02
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	mov r5, r12
	str r0, [r5, #0x10]
	mov r0, r12
	adds r0, #0x88
	movs r1, #0x02
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	str r0, [r5, #0x14]
	mov r0, r12
	adds r0, #0x8C
	movs r5, #0x02
	ldsh r0, [r0, r5]
	lsls r0, r0, #0x08
	mov r1, r12
	str r0, [r1, #0x18]
	mov r2, r12
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
_08088016:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_8088020
sub_8088020:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r2, r3, #0x0
	adds r2, #0x7E
	movs r0, #0x00
	ldsh r4, [r2, r0]
	adds r0, r3, #0x0
	adds r0, #0x7A
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r1, r3, #0x0
	adds r1, #0x7C
	movs r5, #0x00
	ldsh r1, [r1, r5]
	muls r0, r1
	cmp r0, #0x00
	bge _08088046
	ldr r1, _080880B8 @ =0x000007FF
	adds r0, r0, r1
_08088046:
	asrs r0, r0, #0x0B
	adds r4, r4, r0
	ldrh r1, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	strh r4, [r2, #0x00]
	subs r0, #0x28
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	adds r2, r1, #0x0
	muls r2, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x04
	subs r5, r1, r4
	muls r0, r5
	adds r0, r2, r0
	cmp r0, #0x00
	bge _08088072
	adds r0, #0x07
_08088072:
	asrs r0, r0, #0x03
	str r0, [r3, #0x10]
	adds r0, r3, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r5
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0808808E
	adds r0, #0x07
_0808808E:
	asrs r0, r0, #0x03
	str r0, [r3, #0x14]
	adds r0, r3, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r5
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080880AA
	adds r0, #0x07
_080880AA:
	asrs r0, r0, #0x03
	str r0, [r3, #0x18]
	ldr r0, _080880B8 @ =0x000007FF
	cmp r4, r0
	ble _080880BC
	movs r0, #0x00
	b _080880BE
_080880B8: .4byte 0x000007FF
_080880BC:
	movs r0, #0x01
_080880BE:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80880C4
sub_80880C4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r3, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r3, r3, r0
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	asrs r2, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	ldr r5, _08088130 @ =0x03001038
	adds r0, r3, #0x0
	muls r0, r3
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r5, #0x00]
	bl _call_via_r1
	adds r3, r0, #0x0
	cmp r3, #0x00
	beq _0808813C
	ldr r0, _08088134 @ =0x0819832C
	ldr r1, _08088138 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r5, #0x00]
	adds r2, r2, r0
	lsls r0, r6, #0x06
	lsrs r1, r3, #0x1F
	adds r1, r3, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r3, #0x0
	bl _call_via_r2
	b _08088140
	.byte 0x00, 0x00
_08088130: .4byte 0x03001038
_08088134: .4byte 0x0819832C
_08088138: .4byte 0x08198220
_0808813C:
	movs r0, #0x80
	lsls r0, r0, #0x07
_08088140:
	movs r1, #0x80
	lsls r1, r1, #0x07
	cmp r0, r1
	ble _0808814A
	adds r0, r1, #0x0
_0808814A:
	adds r1, r4, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8088164
sub_8088164:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	mov r10, r1
	adds r0, #0x8C
	str r0, [sp, #0x00C]
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0x02
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r7, r6, #0x0
	adds r7, #0x92
	movs r0, #0x00
	ldsh r5, [r7, r0]
	add r1, sp, #0x008
	lsls r0, r5, #0x08
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	bl sub_8087878
	strh r0, [r7, #0x00]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r0, r6, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	mov r8, r1
	adds r0, r6, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r4, r1, r0
	ldr r7, _08088230 @ =0x03001038
	ldr r1, _08088234 @ =0x0819832C
	ldr r0, _08088238 @ =0x08198220
	subs r1, r1, r0
	mov r9, r1
	ldr r0, [r7, #0x00]
	adds r3, r0, r1
	ldr r1, [sp, #0x00C]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	subs r0, r5, r0
	ldr r1, [sp, #0x004]
	muls r0, r1
	cmp r0, #0x00
	bge _080881DC
	adds r0, #0x3F
_080881DC:
	asrs r0, r0, #0x06
	adds r2, r0, #0x0
	muls r2, r1
	ldr r1, [sp, #0x008]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080881EC
	adds r0, #0x3F
_080881EC:
	asrs r0, r0, #0x06
	muls r1, r0
	adds r0, r2, #0x0
	bl _call_via_r3
	adds r2, r0, #0x0
	mov r1, r8
	mov r0, r8
	muls r0, r1
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r7, #0x00]
	bl _call_via_r1
	adds r3, r0, #0x0
	cmp r3, #0x00
	beq _0808823C
	ldr r2, [r7, #0x00]
	add r2, r9
	mov r1, r10
	lsls r0, r1, #0x06
	lsrs r1, r3, #0x1F
	adds r1, r3, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r3, #0x0
	bl _call_via_r2
	b _08088242
	.byte 0x00, 0x00
_08088230: .4byte 0x03001038
_08088234: .4byte 0x0819832C
_08088238: .4byte 0x08198220
_0808823C:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
_08088242:
	adds r1, r6, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x94
	ldr r0, [sp, #0x004]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [sp, #0x008]
	str r0, [r1, #0x00]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8088274
sub_8088274:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r8, r0
	mov r9, r1
	str r2, [sp, #0x000]
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r3, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r3, r3, r0
	mov r0, r8
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	mov r0, r8
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	asrs r2, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	ldr r0, _08088344 @ =0x03001038
	mov r10, r0
	adds r0, r3, #0x0
	muls r0, r3
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	mov r2, r10
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r7, r0, #0x0
	lsls r0, r7, #0x01
	ldr r3, [sp, #0x000]
	muls r0, r3
	lsls r0, r0, #0x08
	mov r2, r9
	mov r1, r9
	muls r1, r2
	adds r0, r0, r1
	mov r3, r10
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	adds r4, r0, #0x0
	ldr r1, _08088348 @ =0x0819832C
	ldr r0, _0808834C @ =0x08198220
	subs r6, r1, r0
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	mov r1, r9
	subs r5, r4, r1
	lsls r0, r5, #0x08
	add r4, r9
	adds r1, r4, #0x0
	bl _call_via_r2
	mov r1, r8
	adds r1, #0x98
	str r0, [r1, #0x00]
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	mov r1, r9
	lsls r0, r1, #0x09
	adds r1, r4, #0x0
	bl _call_via_r2
	mov r1, r8
	adds r1, #0x94
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x000]
	cmp r2, #0x00
	beq _08088350
	cmp r5, #0x00
	beq _0808836E
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	ldr r1, [sp, #0x000]
	lsls r0, r1, #0x0E
	lsrs r1, r5, #0x1F
	adds r1, r5, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r5, #0x0
	bl _call_via_r2
	b _08088372
	.byte 0x00, 0x00
_08088344: .4byte 0x03001038
_08088348: .4byte 0x0819832C
_0808834C: .4byte 0x08198220
_08088350:
	cmp r7, #0x00
	beq _0808836E
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	mov r1, r9
	lsls r0, r1, #0x06
	lsrs r1, r7, #0x1F
	adds r1, r7, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r7, #0x0
	bl _call_via_r2
	b _08088372
_0808836E:
	movs r0, #0x80
	lsls r0, r0, #0x07
_08088372:
	movs r1, #0xC0
	lsls r1, r1, #0x03
	cmp r0, r1
	ble _0808837C
	adds r0, r1, #0x0
_0808837C:
	mov r1, r8
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	mov r2, r8
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80883A0
sub_80883A0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r3, r1, #0x0
	cmp r3, #0x00
	beq _080883DE
	adds r1, r4, #0x0
	adds r1, #0x7E
	movs r0, #0x00
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r2, _080883E4 @ =0x03001038
	ldr r0, _080883E8 @ =0x0819832C
	ldr r1, _080883EC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r0, r0, r1
	adds r1, r3, #0x0
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
_080883DE:
	pop {r4}
	pop {r0}
	bx r0
_080883E4: .4byte 0x03001038
_080883E8: .4byte 0x0819832C
_080883EC: .4byte 0x08198220
	thumb_func_start sub_80883F0
sub_80883F0:
	push {lr}
	adds r1, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0x7E
	adds r0, #0x7A
	movs r3, #0x00
	ldsh r0, [r0, r3]
	adds r1, #0x7C
	movs r3, #0x00
	ldsh r1, [r1, r3]
	muls r0, r1
	cmp r0, #0x00
	bge _0808840C
	adds r0, #0xFF
_0808840C:
	asrs r0, r0, #0x08
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	ldr r1, _08088420 @ =0x3FFF0000
	cmp r0, r1
	ble _08088424
	movs r0, #0x00
	b _08088426
_08088420: .4byte 0x3FFF0000
_08088424:
	movs r0, #0x01
_08088426:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_808842C
sub_808842C:
	push {lr}
	adds r3, r0, #0x0
	adds r3, #0x92
	strh r2, [r3, #0x00]
	bl sub_8088164
	pop {r0}
	bx r0
	thumb_func_start sub_808843C
sub_808843C:
	push {r4, r5, r6, lr}
	mov r12, r0
	adds r5, r2, #0x0
	ldr r6, [sp, #0x010]
	mov r2, r12
	adds r2, #0x84
	lsls r1, r1, #0x10
	mov r4, r12
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08088454
	adds r0, #0xFF
_08088454:
	asrs r0, r0, #0x08
	ldr r4, _080884A8 @ =0x0000FFFF
	ands r0, r4
	orrs r1, r0
	str r1, [r2, #0x00]
	mov r1, r12
	adds r1, #0x88
	lsls r2, r5, #0x10
	mov r5, r12
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0808846E
	adds r0, #0xFF
_0808846E:
	asrs r0, r0, #0x08
	ands r0, r4
	orrs r2, r0
	str r2, [r1, #0x00]
	mov r1, r12
	adds r1, #0x8C
	lsls r3, r3, #0x10
	mov r2, r12
	ldr r0, [r2, #0x40]
	cmp r0, #0x00
	bge _08088486
	adds r0, #0xFF
_08088486:
	asrs r0, r0, #0x08
	ands r0, r4
	orrs r3, r0
	str r3, [r1, #0x00]
	mov r0, r12
	adds r0, #0x98
	movs r1, #0x00
	str r1, [r0, #0x00]
	subs r0, #0x1A
	strh r1, [r0, #0x00]
	cmp r6, #0x00
	ble _080884A2
	subs r0, #0x02
	strh r6, [r0, #0x00]
_080884A2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080884A8: .4byte 0x0000FFFF
	thumb_func_start sub_80884AC
sub_80884AC:
	push {r4, lr}
	adds r3, r0, #0x0
	movs r0, #0x7E
	adds r0, r0, r3
	mov r12, r0
	movs r1, #0x00
	ldsh r2, [r0, r1]
	adds r0, r3, #0x0
	adds r0, #0x7A
	movs r4, #0x00
	ldsh r0, [r0, r4]
	adds r1, r3, #0x0
	adds r1, #0x7C
	movs r4, #0x00
	ldsh r1, [r1, r4]
	muls r0, r1
	cmp r0, #0x00
	bge _080884D2
	adds r0, #0xFF
_080884D2:
	asrs r1, r0, #0x08
	adds r1, r2, r1
	mov r0, r12
	ldrh r2, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAC
	strh r2, [r0, #0x00]
	mov r4, r12
	strh r1, [r4, #0x00]
	ldr r0, _080884FC @ =0x00003FFF
	cmp r1, r0
	ble _08088500
	adds r0, r3, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0, #0x00]
	movs r0, #0x00
	b _08088502
	.byte 0x00, 0x00
_080884FC: .4byte 0x00003FFF
_08088500:
	movs r0, #0x01
_08088502:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_8088508
sub_8088508:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08088558
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _0808852A
	cmp r1, #0x04
	bne _08088550
_0808852A:
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08088550:
	ldr r0, [r4, #0x50]
	str r0, [r4, #0x4C]
	movs r0, #0x00
	str r0, [r4, #0x50]
_08088558:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8088560
sub_8088560:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08088574
	cmp r1, #0x04
	bne _080885B0
_08088574:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08088594
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080885A0
_08088594:
	ldr r2, _080885BC @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080885A0:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080885B0:
	ldr r0, _080885C0 @ =0x08087C6D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080885BC: .4byte 0x0000204D
_080885C0: .4byte sub_8087C6C
	thumb_func_start sub_80885C4
sub_80885C4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080885D8
	cmp r1, #0x04
	bne _08088614
_080885D8:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080885F8
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	b _08088604
_080885F8:
	ldr r2, _08088624 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
_08088604:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08088614:
	ldr r0, [r4, #0x4C]
	str r0, [r4, #0x50]
	ldr r0, _08088628 @ =0x0808864D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08088624: .4byte 0x0000204D
_08088628: .4byte sub_808864C
