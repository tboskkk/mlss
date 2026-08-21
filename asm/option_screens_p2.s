	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8053FC4
sub_8053FC4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08053FD4
	cmp r0, #0x01
	beq _0805402C
	b _080540A0
_08053FD4:
	adds r3, r4, #0x0
	adds r3, #0x39
	movs r0, #0x00
	ldsb r0, [r3, r0]
	cmp r0, #0x00
	ble _08053FEA
	adds r0, r4, #0x0
	adds r0, #0x38
	bl sub_8051EE0
	b _080540A0
_08053FEA:
	ldrb r0, [r4, #0x1C]
	subs r0, #0x01
	strb r0, [r4, #0x1C]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08054002
	ldr r0, _08054024 @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x0B
	ands r0, r1
	cmp r0, #0x00
	beq _080540A0
_08054002:
	ldr r0, _08054028 @ =0x0839EC80
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x01]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x01]
	adds r2, r4, #0x0
	adds r2, #0x38
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x07
	strb r0, [r3, #0x00]
	movs r0, #0x01
	strb r0, [r4, #0x00]
	b _080540A0
_08054024: .4byte 0x0300034C
_08054028: .4byte 0x0839EC80
_0805402C:
	adds r0, r4, #0x0
	adds r0, #0x38
	bl sub_8051EE0
	adds r0, r4, #0x0
	adds r0, #0x39
	movs r5, #0x00
	ldsb r5, [r0, r5]
	cmp r5, #0x00
	bne _080540A0
	cmp r4, #0x00
	beq _08054088
	ldr r0, _080540A8 @ =0x08CDC1C8
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x34]
	cmp r0, #0x00
	beq _08054052
	bl free_heap_8018D9C
_08054052:
	ldr r0, [r4, #0x20]
	cmp r0, #0x00
	beq _0805405C
	bl free_heap_8018D9C
_0805405C:
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _08054066
	bl free_heap_8018D9C
_08054066:
	ldr r0, [r4, #0x2C]
	cmp r0, #0x00
	beq _08054070
	bl free_heap_8018D9C
_08054070:
	ldr r0, [r4, #0x30]
	bl free_heap_8018DA8
	movs r0, #0x80
	lsls r0, r0, #0x12
	strh r5, [r0, #0x00]
	adds r0, #0x50
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	bl process_remove
_08054088:
	ldr r4, _080540AC @ =0x081E2714
	movs r0, #0xE4
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x02
	bl open_init_8055A00
_080540A0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080540A8: .4byte 0x08CDC1C8
_080540AC: .4byte 0x081E2714
	thumb_func_start sub_80540B0
sub_80540B0:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r1, _08054104 @ =0x083A2978
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r1, [r1, #0x02]
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsrs r0, r0, #0x19
	movs r2, #0x0F
	subs r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsrs r1, r1, #0x19
	movs r3, #0x0A
	subs r3, r3, r1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r4, #0x0
	adds r0, #0x38
	ldr r1, [r4, #0x34]
	str r6, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r4, #0xE0
	lsls r4, r4, #0x08
	str r4, [sp, #0x008]
	bl generate_window_bg_8051B98
	ldr r0, _08054108 @ =0x0839EC80
	ldr r1, [r0, #0x00]
	adds r1, #0x4A
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08054104: .4byte 0x083A2978
_08054108: .4byte 0x0839EC80
	.byte 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x13, 0x48, 0xA0, 0x61, 0x60, 0x6B, 0x00, 0x28, 0x01, 0xD0
	.byte 0xC4, 0xF7, 0x3E, 0xFE, 0x20, 0x6A, 0x00, 0x28, 0x01, 0xD0, 0xC4, 0xF7, 0x39, 0xFE, 0xA0, 0x6A
	.byte 0x00, 0x28, 0x01, 0xD0, 0xC4, 0xF7, 0x34, 0xFE, 0xE0, 0x6A, 0x00, 0x28, 0x01, 0xD0, 0xC4, 0xF7
	.byte 0x2F, 0xFE, 0x20, 0x6B, 0xC4, 0xF7, 0x32, 0xFE, 0x80, 0x20, 0x80, 0x04, 0x00, 0x21, 0x01, 0x80
	.byte 0x50, 0x30, 0x01, 0x80, 0x20, 0x1C, 0x29, 0x1C, 0xC5, 0xF7, 0x72, 0xFD, 0x30, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xC8, 0xC1, 0xCD, 0x08
	thumb_func_start sub_8054164
sub_8054164:
	push {r4, r5, r6, lr}
	ldr r4, _0805419C @ =0x0300034C
	movs r0, #0x88
	lsls r0, r0, #0x04
	adds r4, r4, r0
	ldr r6, [r4, #0x00]
	bl sub_8020A78
	ldr r2, _080541A0 @ =0x03000D48
	ldr r5, _080541A4 @ =0x0203FFB8
	ldr r0, [r5, #0x3C]
	ldr r3, _080541A8 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _080541AC @ =0x03000D4C
	ldr r0, [r5, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r6, r0, #0x0
	str r6, [r4, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805419C: .4byte 0x0300034C
_080541A0: .4byte 0x03000D48
_080541A4: .4byte 0x0203FFB8
_080541A8: .4byte 0x00000A14
_080541AC: .4byte 0x03000D4C
	thumb_func_start sub_80541B0
sub_80541B0:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	lsrs r3, r1, #0x1F
	adds r3, r1, r3
	asrs r3, r3, #0x01
	movs r5, #0x0F
	subs r5, r5, r3
	lsrs r4, r2, #0x1F
	adds r4, r2, r4
	asrs r4, r4, #0x01
	movs r3, #0x0A
	subs r3, r3, r4
	adds r4, r0, #0x0
	adds r4, #0x40
	ldr r6, [r0, #0x38]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x000]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x004]
	movs r0, #0xE0
	lsls r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl generate_window_bg_8051B98
	ldr r0, _08054208 @ =0x0839EC80
	ldr r1, [r0, #0x00]
	adds r1, #0x4A
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08054208: .4byte 0x0839EC80
	thumb_func_start sub_805420C
sub_805420C:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r1, _08054250 @ =0x083A2918
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r1, [r1, #0x02]
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsrs r0, r0, #0x19
	movs r2, #0x0F
	subs r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsrs r1, r1, #0x19
	movs r3, #0x0A
	subs r3, r3, r1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r4, #0x0
	adds r0, #0x48
	ldr r1, [r4, #0x40]
	str r6, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r4, #0xC8
	lsls r4, r4, #0x08
	str r4, [sp, #0x008]
	bl generate_window_bg_8051B98
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08054250: .4byte 0x083A2918
	thumb_func_start option_screen_set_ok_button
option_screen_set_ok_button:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	movs r5, #0x0F
	subs r5, r5, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsrs r0, r2, #0x1F
	add r0, r8
	asrs r0, r0, #0x01
	movs r4, #0x0A
	subs r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r7, #0x0
	adds r0, #0x48
	ldr r1, [r7, #0x40]
	lsls r2, r6, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x000]
	mov r3, r8
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x004]
	movs r2, #0xC8
	lsls r2, r2, #0x08
	str r2, [sp, #0x008]
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	bl generate_window_bg_8051B98
	lsls r5, r5, #0x03
	lsls r6, r6, #0x02
	adds r5, r5, r6
	subs r5, #0x10
	adds r0, r7, #0x0
	adds r0, #0x44
	strb r5, [r0, #0x00]
	add r4, r8
	lsls r4, r4, #0x03
	subs r4, #0x16
	adds r0, #0x01
	strb r4, [r0, #0x00]
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
