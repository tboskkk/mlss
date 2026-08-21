	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81486F8
sub_81486F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r1, [sp, #0x000]
	str r2, [sp, #0x004]
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r7, [r0, #0x00]
	ldr r1, _081488C4 @ =0x08198584
	movs r3, #0xCB
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08148720
	adds r0, #0xFF
_08148720:
	asrs r0, r0, #0x08
	movs r2, #0xFF
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _08148734
	adds r0, #0x3F
_08148734:
	asrs r0, r0, #0x06
	mov r10, r0
	ldr r1, _081488C8 @ =0x08198504
	movs r3, #0xCA
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08148748
	adds r0, #0xFF
_08148748:
	asrs r0, r0, #0x08
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _0814875A
	adds r0, #0x3F
_0814875A:
	asrs r0, r0, #0x06
	mov r8, r0
	ldr r0, _081488CC @ =0x03001038
	mov r9, r0
	ldr r4, _081488D0 @ =0x0819832C
	ldr r0, _081488D4 @ =0x08198220
	subs r4, r4, r0
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	movs r3, #0xBD
	lsls r3, r3, #0x02
	adds r6, r7, r3
	ldr r0, [r6, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x01
	adds r1, r5, #0x0
	bl _call_via_r2
	movs r2, #0xB9
	lsls r2, r2, #0x02
	adds r1, r7, r2
	mov r2, r10
	muls r2, r0
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	str r0, [r7, #0x0C]
	mov r3, r9
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	movs r4, #0xBC
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r2
	movs r2, #0xBA
	lsls r2, r2, #0x02
	adds r1, r7, r2
	mov r2, r8
	muls r2, r0
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	str r0, [r7, #0x10]
	movs r3, #0xE8
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	movs r4, #0xD8
	lsls r4, r4, #0x01
	adds r1, r7, r4
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	adds r0, #0x42
	ldrh r3, [r0, #0x00]
	ldr r0, [r7, #0x18]
	adds r0, r0, r3
	str r0, [r7, #0x18]
	ldr r0, _081488D8 @ =0x0000030A
	adds r2, r7, r0
	strh r3, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x80
	movs r4, #0xC3
	lsls r4, r4, #0x02
	adds r0, r7, r4
	strh r1, [r0, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r6, #0x00]
	adds r1, r0, r1
	str r1, [r6, #0x00]
	cmp r1, #0x00
	blt _081487FC
	movs r2, #0xC0
	lsls r2, r2, #0x04
	adds r0, r3, r2
	cmp r1, r0
	ble _08148804
_081487FC:
	movs r4, #0xC0
	lsls r4, r4, #0x04
	adds r0, r3, r4
	str r0, [r6, #0x00]
_08148804:
	movs r0, #0xBC
	lsls r0, r0, #0x02
	adds r2, r7, r0
	movs r1, #0xC3
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x00]
	adds r1, r0, r1
	str r1, [r2, #0x00]
	cmp r1, #0x00
	blt _08148828
	movs r4, #0xC0
	lsls r4, r4, #0x04
	adds r0, r3, r4
	cmp r1, r0
	ble _08148830
_08148828:
	movs r1, #0xC0
	lsls r1, r1, #0x04
	adds r0, r3, r1
	str r0, [r2, #0x00]
_08148830:
	movs r3, #0xCB
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldr r4, _081488DC @ =0x0000030E
	adds r0, r7, r4
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r3, #0xFF
	lsls r3, r3, #0x08
	cmp r0, r3
	ble _08148850
	movs r0, #0x00
	str r0, [r2, #0x00]
_08148850:
	movs r4, #0xCA
	lsls r4, r4, #0x02
	adds r2, r7, r4
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, r3
	ble _0814886E
	movs r0, #0x00
	str r0, [r2, #0x00]
_0814886E:
	ldr r0, [r7, #0x0C]
	ldr r1, [r7, #0x34]
	subs r0, r0, r1
	ldr r2, _081488E0 @ =0x00000242
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x38]
	subs r0, r0, r1
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x18]
	ldr r0, _081488E4 @ =0x00013FFF
	cmp r1, r0
	ble _081488B4
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r4, [sp, #0x000]
	ldr r0, _081488E8 @ =0x0000020D
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081488EC @ =0x08147B9D
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x00]
_081488B4:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081488C4: .4byte 0x08198584
_081488C8: .4byte 0x08198504
_081488CC: .4byte 0x03001038
_081488D0: .4byte 0x0819832C
_081488D4: .4byte 0x08198220
_081488D8: .4byte 0x0000030A
_081488DC: .4byte 0x0000030E
_081488E0: .4byte 0x00000242
_081488E4: .4byte 0x00013FFF
_081488E8: .4byte 0x0000020D
_081488EC: .4byte sub_8147B9C
	thumb_func_start sub_81488F0
sub_81488F0:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	ldr r2, _0814892C @ =0x083A05EC
	ldr r1, _08148930 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r5, [r1, #0x00]
	cmp r5, #0x01
	beq _08148964
	cmp r5, #0x01
	bgt _08148934
	cmp r5, #0x00
	beq _0814893E
	b _081489D2
_0814892C: .4byte 0x083A05EC
_08148930: .4byte 0x00000216
_08148934:
	cmp r5, #0x02
	beq _08148984
	cmp r5, #0x03
	beq _081489AA
	b _081489D2
_0814893E:
	ldr r1, [r4, #0x0C]
	ldr r2, _08148960 @ =0x00000276
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	ldr r2, [r4, #0x10]
	subs r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x90
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	b _081489A2
	.byte 0x00, 0x00
_08148960: .4byte 0x00000276
_08148964:
	ldr r1, [r4, #0x0C]
	movs r2, #0xA0
	lsls r2, r2, #0x04
	adds r1, r1, r2
	ldr r2, [r4, #0x10]
	movs r0, #0xA0
	lsls r0, r0, #0x03
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0xF0
	lsls r0, r0, #0x04
	adds r3, r3, r0
	str r5, [sp, #0x000]
	b _0814899E
_08148984:
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x90
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
_0814899E:
	movs r0, #0x00
	str r0, [sp, #0x004]
_081489A2:
	adds r0, r6, #0x0
	bl sub_8047F60
	b _081489D2
_081489AA:
	ldr r1, [r4, #0x0C]
	ldr r2, _081489DC @ =0xFFFFF600
	adds r1, r1, r2
	ldr r2, [r4, #0x10]
	movs r0, #0xA0
	lsls r0, r0, #0x03
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0xF0
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
_081489D2:
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081489DC: .4byte 0xFFFFF600
	thumb_func_start sub_81489E0
sub_81489E0:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081489FA
	movs r0, #0x00
	b _08148A30
_081489FA:
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	bl sub_80FBC14
	adds r1, r0, #0x0
	lsls r0, r1, #0x18
	cmp r0, #0x00
	beq _08148A2E
	movs r1, #0x01
_08148A2E:
	adds r0, r1, #0x0
_08148A30:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_8148A38
sub_8148A38:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	ldr r0, _08148A9C @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r1, [r5, #0x00]
	ldr r0, _08148AA0 @ =0x0000020D
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	ldr r0, [r5, #0x00]
	bl sub_8148DA4
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08148AA4 @ =0x0000033D
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08148AA8 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _08148AAC @ =0x08147B9D
	str r0, [r4, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08148A9C: .4byte 0x0000033E
_08148AA0: .4byte 0x0000020D
_08148AA4: .4byte 0x0000033D
_08148AA8: .4byte sub_813B380
_08148AAC: .4byte sub_8147B9C
	thumb_func_start sub_8148AB0
sub_8148AB0:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08148AF6
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08148AFA
_08148AF6:
	movs r0, #0x00
	b _08148AFC
_08148AFA:
	movs r0, #0x01
_08148AFC:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r1}
	bx r1
