	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80EE624
sub_80EE624:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	adds r6, r3, #0x0
	ldr r1, _080EE6B8 @ =0x03000FD0
	ldm r6!, {r3}
	lsls r0, r3, #0x05
	movs r2, #0xA8
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r2, [r1, #0x00]
	adds r7, r2, r0
	ldr r0, _080EE6BC @ =0x0000055B
	adds r2, r2, r0
	ldrb r4, [r2, #0x00]
	lsls r1, r4, #0x1B
	lsrs r1, r1, #0x1C
	movs r5, #0x01
	adds r0, r5, #0x0
	lsls r0, r3
	orrs r1, r0
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x01
	movs r0, #0x1F
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x04]
	negs r2, r0
	str r2, [r6, #0x04]
	ldr r0, [r6, #0x08]
	negs r1, r0
	str r1, [r6, #0x08]
	ldr r0, [r6, #0x00]
	ands r0, r5
	cmp r0, #0x00
	beq _080EE67C
	lsls r0, r2, #0x04
	str r0, [r6, #0x04]
	lsls r0, r1, #0x04
	str r0, [r6, #0x08]
_080EE67C:
	ldr r0, [r6, #0x00]
	asrs r0, r0, #0x01
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x01
	bne _080EE6E4
	ldr r2, _080EE6C0 @ =0x03001038
	ldr r0, [r6, #0x04]
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	ldr r1, [r6, #0x08]
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	lsls r0, r0, #0x04
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r4, r0, #0x0
	ldr r1, [r6, #0x0C]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080EE6C4
	movs r0, #0x0F
	ands r1, r0
	lsls r0, r1, #0x02
	b _080EE6C6
_080EE6B8: .4byte 0x03000FD0
_080EE6BC: .4byte 0x0000055B
_080EE6C0: .4byte 0x03001038
_080EE6C4:
	lsls r0, r1, #0x06
_080EE6C6:
	str r0, [r6, #0x0C]
	ldr r1, [r6, #0x0C]
	ldr r0, [r6, #0x04]
	muls r0, r1
	lsls r0, r0, #0x04
	adds r1, r4, #0x0
	bl __divsi3
	str r0, [r7, #0x14]
	ldr r1, [r6, #0x0C]
	ldr r0, [r6, #0x08]
	muls r0, r1
	lsls r0, r0, #0x04
	adds r1, r4, #0x0
	b _080EE6F6
_080EE6E4:
	ldr r0, [r6, #0x04]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x0C]
	bl __divsi3
	str r0, [r7, #0x14]
	ldr r0, [r6, #0x08]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x0C]
_080EE6F6:
	bl __divsi3
	str r0, [r7, #0x18]
	movs r0, #0x00
	str r0, [r7, #0x0C]
	str r0, [r7, #0x08]
	str r0, [r7, #0x04]
	str r0, [r7, #0x00]
	mov r0, r8
	cmp r0, #0x00
	beq _080EE714
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	adds r0, #0x04
	b _080EE720
_080EE714:
	ldr r0, _080EE738 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r1, #0xA9
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
_080EE720:
	strb r0, [r7, #0x1C]
	ldr r0, [r6, #0x04]
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x08]
	strh r0, [r7, #0x12]
	movs r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EE738: .4byte 0x03000FD0
	thumb_func_start sub_80EE73C
sub_80EE73C:
	push {r4, r5, r6, lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	ldr r0, _080EE7C0 @ =0x03000FD0
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldm r2!, {r3}
	ldr r0, _080EE7C4 @ =0x0000055F
	mov r10, r0
	add r1, r10
	lsls r3, r3, #0x07
	ldrb r4, [r1, #0x00]
	movs r6, #0x7F
	adds r0, r6, #0x0
	ands r0, r4
	orrs r0, r3
	strb r0, [r1, #0x00]
	mov r1, r8
	ldr r4, [r1, #0x00]
	ldm r2!, {r1}
	ldr r0, _080EE7C8 @ =0x0000055E
	mov r9, r0
	adds r5, r4, r0
	ands r1, r6
	lsls r1, r1, #0x06
	ldrh r3, [r5, #0x00]
	ldr r0, _080EE7CC @ =0xFFFFE03F
	ands r0, r3
	orrs r0, r1
	strh r0, [r5, #0x00]
	ldm r2!, {r0}
	ldr r1, _080EE7D0 @ =0x0000055D
	adds r4, r4, r1
	strb r0, [r4, #0x00]
	mov r0, r8
	ldr r3, [r0, #0x00]
	add r3, r9
	movs r0, #0x3F
	ldrb r1, [r2, #0x00]
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x40
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r8
	ldr r2, [r1, #0x00]
	add r2, r10
	ldrb r1, [r2, #0x00]
	movs r0, #0x61
	negs r0, r0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080EE7C0: .4byte 0x03000FD0
_080EE7C4: .4byte 0x0000055F
_080EE7C8: .4byte 0x0000055E
_080EE7CC: .4byte 0xFFFFE03F
_080EE7D0: .4byte 0x0000055D
	thumb_func_start script_cmd_start_dialogue
script_cmd_start_dialogue: @ 080EE7D4
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r4, r0, #0x0
	mov r9, r2
	ldr r0, [r4, #0x14]
	ldr r1, [r2, #0x04]
	lsls r3, r1, #0x02
	adds r2, r0, #0x0
	adds r2, #0x28
	adds r2, r2, r3
	ldr r2, [r2, #0x00]
	mov r10, r2
	add r3, sp, #0x01C
	add r2, sp, #0x018
	bl get_fobj_screen_pos
	ldr r0, [sp, #0x018]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, _080EE844 @ =0x083BA4B4
	mov r2, r9
	ldrb r0, [r2, #0x08]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	mov r8, r0
	ldr r1, [r2, #0x0C]
	movs r5, #0x1F
	ands r5, r1
	lsls r0, r1, #0x01
	movs r3, #0xF0
	lsls r3, r3, #0x02
	adds r2, r3, #0x0
	ands r0, r2
	orrs r5, r0
	lsls r1, r1, #0x02
	movs r7, #0x80
	lsls r7, r7, #0x04
	adds r0, r7, #0x0
	ands r1, r0
	orrs r5, r1
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x02
	bne _080EE85A
	mov r0, r8
	cmp r0, #0x03
	bhi _080EE848
	movs r1, #0x04
	mov r8, r1
	b _080EE85A
	.byte 0x00, 0x00
_080EE844: .4byte 0x083BA4B4
_080EE848:
	mov r0, r8
	adds r0, #0x01
	movs r2, #0x02
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080EE85A:
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r5
	cmp r0, #0x00
	bne _080EE924
	ldr r0, [r4, #0x14]
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r1, r0, r3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	lsls r2, r1, #0x02
	adds r2, r2, r0
	ldr r4, [r2, #0x28]
	add r2, sp, #0x020
	add r3, sp, #0x024
	bl get_fobj_screen_pos
	ldr r1, _080EE8B8 @ =0x00000283
	add r1, r10
	ldrb r0, [r1, #0x00]
	lsrs r0, r0, #0x01
	adds r0, #0x50
	ldr r2, [sp, #0x01C]
	cmp r0, r2
	bge _080EE8BC
	movs r3, #0x02
	ldrb r0, [r1, #0x00]
	ldr r7, _080EE8B8 @ =0x00000283
	adds r1, r4, r7
	subs r0, r2, r0
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	ldr r1, [sp, #0x024]
	cmp r0, r1
	ble _080EE8D6
	movs r3, #0x82
	movs r1, #0xA0
	subs r1, r1, r2
	mov r0, r8
	adds r0, #0x03
	lsls r0, r0, #0x03
	cmp r1, r0
	ble _080EE8D6
	movs r3, #0x01
	b _080EE8D6
_080EE8B8: .4byte 0x00000283
_080EE8BC:
	movs r3, #0x01
	ldr r0, [sp, #0x024]
	cmp r2, r0
	bge _080EE8D6
	movs r3, #0x81
	ldrb r1, [r1, #0x00]
	subs r1, r2, r1
	mov r0, r8
	adds r0, #0x03
	lsls r0, r0, #0x03
	cmp r1, r0
	ble _080EE8D6
	movs r3, #0x02
_080EE8D6:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0x00
	beq _080EE916
	ldr r1, [sp, #0x020]
	ldr r0, [sp, #0x018]
	subs r1, r1, r0
	cmp r1, #0x00
	blt _080EE8FC
	cmp r1, #0x0F
	bgt _080EE916
	movs r0, #0xC0
	orrs r5, r0
	lsls r0, r6, #0x10
	ldr r1, _080EE8F8 @ =0xFFE80000
	adds r0, r0, r1
	b _080EE914
_080EE8F8: .4byte 0xFFE80000
_080EE8FC:
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	ble _080EE916
	movs r0, #0x40
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r6, #0x10
	movs r2, #0xC0
	lsls r2, r2, #0x0D
	adds r0, r0, r2
_080EE914:
	lsrs r6, r0, #0x10
_080EE916:
	lsls r0, r3, #0x08
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r1, r3, #0x0
	ands r0, r1
	orrs r5, r0
	b _080EE946
_080EE924:
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0x00
	beq _080EE946
	movs r0, #0x80
	ands r0, r5
	movs r1, #0x18
	cmp r0, #0x00
	beq _080EE938
	ldr r1, _080EE96C @ =0x0000FFE8
_080EE938:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080EE946:
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r5
	movs r1, #0x80
	lsls r1, r1, #0x02
	cmp r0, r1
	bne _080EE974
	ldr r0, [sp, #0x01C]
	subs r0, #0x0D
	mov r1, r8
	adds r1, #0x02
	ldr r2, _080EE970 @ =0x00000283
	add r2, r10
	lsls r1, r1, #0x03
	ldrb r2, [r2, #0x00]
	adds r1, r1, r2
	subs r0, r0, r1
	b _080EE978
	.byte 0x00, 0x00
_080EE96C: .4byte 0x0000FFE8
_080EE970: .4byte 0x00000283
_080EE974:
	ldr r0, [sp, #0x01C]
	subs r0, #0x02
_080EE978:
	str r0, [sp, #0x01C]
	ldr r0, [sp, #0x01C]
	cmp r0, #0x00
	bge _080EE992
	movs r0, #0x00
	str r0, [sp, #0x01C]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _080EE9BC
	movs r0, #0x10
	b _080EE9B2
_080EE992:
	mov r7, r8
	lsls r1, r7, #0x03
	adds r0, r0, r1
	adds r0, #0x14
	cmp r0, #0x9F
	ble _080EE9BC
	movs r0, #0x90
	subs r1, r0, r1
	str r1, [sp, #0x01C]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r5
	cmp r0, #0x00
	beq _080EE9BC
	adds r0, r1, #0x0
	subs r0, #0x10
_080EE9B2:
	str r0, [sp, #0x01C]
	movs r0, #0x40
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
_080EE9BC:
	mov r1, r9
	ldr r0, [r1, #0x08]
	asrs r4, r0, #0x08
	movs r7, #0xFF
	ands r4, r7
	cmp r4, #0x00
	bne _080EE9D8
	ldr r0, _080EEA1C @ =0x03000FCC
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x14]
	bl sub_80E9310
	lsrs r4, r0, #0x10
	ands r4, r7
_080EE9D8:
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x02
	bne _080EE9FE
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
	beq _080EE9FE
	ldr r0, [sp, #0x018]
	adds r0, #0x04
	str r0, [sp, #0x018]
_080EE9FE:
	lsls r0, r4, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x00
	bne _080EEA0A
	movs r4, #0x02
	movs r7, #0x02
_080EEA0A:
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bge _080EEA24
	movs r6, #0x20
	ldr r0, _080EEA20 @ =0x0000FF7F
	ands r5, r0
	movs r0, #0x40
	b _080EEA2C
	.byte 0x00, 0x00
_080EEA1C: .4byte 0x03000FCC
_080EEA20: .4byte 0x0000FF7F
_080EEA24:
	cmp r0, #0xEF
	ble _080EEA2E
	movs r6, #0xD0
	movs r0, #0xC0
_080EEA2C:
	orrs r5, r0
_080EEA2E:
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
	ble _080EEA4C
	adds r0, r2, #0x0
	subs r0, #0x18
	b _080EEA5C
_080EEA4C:
	lsls r1, r4, #0x03
	adds r0, r3, r1
	adds r0, #0x08
	cmp r0, r2
	bge _080EEA5E
	adds r0, r2, #0x0
	subs r0, #0x08
	subs r0, r0, r1
_080EEA5C:
	str r0, [sp, #0x018]
_080EEA5E:
	asrs r2, r6, #0x10
	cmp r2, #0x17
	bgt _080EEA9C
	movs r1, #0xC0
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0xC0
	bne _080EEA78
	adds r0, r2, #0x0
	adds r0, #0x30
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _080EEA7A
_080EEA78:
	movs r6, #0x18
_080EEA7A:
	movs r3, #0x00
	str r3, [sp, #0x018]
	ldr r0, _080EEA98 @ =0x0000FF7F
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
	bge _080EEAD0
	b _080EEACE
_080EEA98: .4byte 0x0000FF7F
_080EEA9C:
	cmp r2, #0xD7
	ble _080EEAD0
	movs r1, #0xC0
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x40
	bne _080EEAB4
	adds r0, r2, #0x0
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _080EEAB6
_080EEAB4:
	movs r6, #0xC8
_080EEAB6:
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
	ble _080EEAD0
_080EEACE:
	str r0, [sp, #0x018]
_080EEAD0:
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bge _080EEAF8
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x02
	bne _080EEAF4
	asrs r1, r6, #0x10
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080EEAE8
	adds r0, r1, #0x7
_080EEAE8:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080EEB2A
_080EEAF4:
	movs r0, #0x00
	b _080EEB2A
_080EEAF8:
	lsls r1, r4, #0x03
	adds r0, r0, r1
	adds r0, #0x20
	cmp r0, #0xF0
	ble _080EEB2C
	movs r0, #0xD0
	subs r1, r0, r1
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x02
	bne _080EEB28
	subs r1, #0x08
	asrs r2, r6, #0x10
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080EEB1A
	adds r0, r2, #0x7
_080EEB1A:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r1, r0
	b _080EEB2A
_080EEB28:
	adds r0, r1, #0x0
_080EEB2A:
	str r0, [sp, #0x018]
_080EEB2C:
	ldr r2, [sp, #0x018]
	asrs r4, r6, #0x10
	subs r4, r4, r2
	ldr r3, _080EEB78 @ =0xFFFFFF00
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _080EEB7C @ =0x03000FCC
	ldr r0, [r0, #0x00]
	mov r6, r9
	ldrb r1, [r6, #0x00]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r3, [sp, #0x01C]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r7, [sp, #0x000]
	mov r7, r8
	str r7, [sp, #0x004]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x008]
	str r5, [sp, #0x00C]
	ldrb r4, [r6, #0x10]
	str r4, [sp, #0x010]
	ldr r4, [r6, #0x14]
	str r4, [sp, #0x014]
	bl sub_80E5BCC
	movs r0, #0x01
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080EEB78: .4byte 0xFFFFFF00
_080EEB7C: .4byte 0x03000FCC
	thumb_func_start script_cmd_show_reaction_bubble
script_cmd_show_reaction_bubble: @ 080EEB80
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r5, r2, #0x0
	ldr r1, [r5, #0x00]
	ldr r2, [r0, #0x14]
	lsls r0, r1, #0x02
	adds r0, r0, r2
	ldr r4, [r0, #0x28]
	movs r0, #0x00
	str r0, [sp, #0x010]
	str r0, [sp, #0x00C]
	ldr r0, [r5, #0x08]
	cmp r0, #0x00
	beq _080EEBB2
	add r3, sp, #0x010
	adds r0, r2, #0x0
	add r2, sp, #0x00C
	bl get_fobj_screen_pos
	ldr r1, _080EEC0C @ =0x00000283
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	ldr r0, [sp, #0x010]
	subs r0, r0, r1
	str r0, [sp, #0x010]
_080EEBB2:
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x04]
	cmp r0, #0xFF
	bne _080EEBC2
	ldr r0, _080EEC10 @ =0x083B950C
	adds r0, r2, r0
	ldrb r0, [r0, #0x00]
	str r0, [r5, #0x14]
_080EEBC2:
	ldr r6, _080EEC14 @ =0x03000FC8
	ldr r0, [r6, #0x00]
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
	bl sub_80E8878
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x3F
	beq _080EEC00
	ldr r0, [r6, #0x00]
	lsls r2, r3, #0x04
	ldr r1, [r0, #0x00]
	adds r1, r1, r2
	ldr r2, [sp, #0x00C]
	strh r2, [r1, #0x08]
	ldr r2, [sp, #0x010]
	strh r2, [r1, #0x0A]
	adds r1, r3, #0x0
	bl sub_80E8E78
_080EEC00:
	movs r0, #0x01
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EEC0C: .4byte 0x00000283
_080EEC10: .4byte 0x083B950C
_080EEC14: .4byte 0x03000FC8
