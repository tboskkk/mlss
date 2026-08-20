	.include "asm/macros.inc"

	.syntax unified
	.text

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
