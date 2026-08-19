	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8163BC4
sub_8163BC4:
	push {lr}
	ldr r2, [r0, #0x00]
	movs r3, #0x00
	cmp r2, #0x00
	beq _08163BDC
_08163BCE:
	ldr r0, [r2, #0x00]
	cmp r0, r1
	bne _08163BD6
	adds r3, #0x01
_08163BD6:
	ldr r2, [r2, #0x08]
	cmp r2, #0x00
	bne _08163BCE
_08163BDC:
	adds r0, r3, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8163BE4
sub_8163BE4:
	push {r4, lr}
	adds r4, r0, #0x0
	b _08163C34
_08163BEA:
	ldr r2, [r4, #0x00]
	ldr r1, [r2, #0x04]
	cmp r1, #0x00
	beq _08163C0A
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _08163C02
	str r0, [r1, #0x08]
	ldr r1, [r2, #0x08]
	ldr r0, [r2, #0x04]
	str r0, [r1, #0x04]
	b _08163C1A
_08163C02:
	str r0, [r1, #0x08]
	ldr r0, [r2, #0x04]
	str r0, [r4, #0x04]
	b _08163C1A
_08163C0A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _08163C16
	str r1, [r0, #0x04]
	ldr r0, [r2, #0x08]
	b _08163C18
_08163C16:
	str r0, [r4, #0x04]
_08163C18:
	str r0, [r4, #0x00]
_08163C1A:
	ldr r0, [r4, #0x08]
	subs r0, #0x01
	str r0, [r4, #0x08]
	cmp r2, #0x00
	beq _08163C34
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08163C34:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08163BEA
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8163C40
sub_8163C40:
	push {lr}
	adds r3, r0, #0x0
	adds r2, r1, #0x0
	ldr r1, [r2, #0x04]
	cmp r1, #0x00
	beq _08163C64
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _08163C5C
	str r0, [r1, #0x08]
	ldr r1, [r2, #0x08]
	ldr r0, [r2, #0x04]
	str r0, [r1, #0x04]
	b _08163C74
_08163C5C:
	str r0, [r1, #0x08]
	ldr r0, [r2, #0x04]
	str r0, [r3, #0x04]
	b _08163C74
_08163C64:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _08163C70
	str r1, [r0, #0x04]
	ldr r0, [r2, #0x08]
	b _08163C72
_08163C70:
	str r0, [r3, #0x04]
_08163C72:
	str r0, [r3, #0x00]
_08163C74:
	ldr r0, [r3, #0x08]
	subs r0, #0x01
	str r0, [r3, #0x08]
	cmp r2, #0x00
	beq _08163C8E
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08163C8E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8163C94
sub_8163C94:
	push {lr}
	adds r3, r0, #0x0
	adds r2, r1, #0x0
	ldr r1, [r2, #0x04]
	cmp r1, #0x00
	beq _08163CB8
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _08163CB0
	str r0, [r1, #0x08]
	ldr r1, [r2, #0x08]
	ldr r0, [r2, #0x04]
	str r0, [r1, #0x04]
	b _08163CC8
_08163CB0:
	str r0, [r1, #0x08]
	ldr r0, [r2, #0x04]
	str r0, [r3, #0x04]
	b _08163CC8
_08163CB8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _08163CC4
	str r1, [r0, #0x04]
	ldr r0, [r2, #0x08]
	b _08163CC6
_08163CC4:
	str r0, [r3, #0x04]
_08163CC6:
	str r0, [r3, #0x00]
_08163CC8:
	ldr r0, [r3, #0x08]
	subs r0, #0x01
	str r0, [r3, #0x08]
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8163CD4
sub_8163CD4:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08163CE8
_08163CDE:
	cmp r0, r1
	beq _08163D0C
	ldr r0, [r0, #0x08]
	cmp r0, #0x00
	bne _08163CDE
_08163CE8:
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08163CF8
	str r0, [r1, #0x08]
	str r0, [r1, #0x04]
	str r1, [r2, #0x04]
	str r1, [r2, #0x00]
	b _08163D06
_08163CF8:
	ldr r0, [r2, #0x04]
	str r1, [r0, #0x08]
	ldr r0, [r2, #0x04]
	str r0, [r1, #0x04]
	movs r0, #0x00
	str r0, [r1, #0x08]
	str r1, [r2, #0x04]
_08163D06:
	ldr r0, [r2, #0x08]
	adds r0, #0x01
	str r0, [r2, #0x08]
_08163D0C:
	pop {r0}
	bx r0
	thumb_func_start sub_8163D10
sub_8163D10:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, _08163D34 @ =0x08CDD108
	str r0, [r5, #0x0C]
	adds r0, r5, #0x0
	bl sub_8163BE4
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _08163D2E
	adds r0, r5, #0x0
	bl free_heap_8018DA8
_08163D2E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08163D34: .4byte 0x08CDD108
	.byte 0x03, 0x49, 0xC1, 0x60, 0x00, 0x21, 0x41, 0x60, 0x01, 0x60, 0x81, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0x08, 0xD1, 0xCD, 0x08
	thumb_func_start sub_8163D4C
sub_8163D4C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _08163D68 @ =0x08CDD118
	str r0, [r2, #0x0C]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08163D62
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_08163D62:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08163D68: .4byte 0x08CDD118
	.byte 0x03, 0x4A, 0xC2, 0x60, 0x00, 0x22, 0x82, 0x60, 0x42, 0x60, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0x18, 0xD1, 0xCD, 0x08
	thumb_func_start sub_8163D80
sub_8163D80:
	push {r4, r5, lr}
	add sp, #-0x004
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	orrs r4, r0
	str r4, [sp, #0x000]
	movs r1, #0xA0
	lsls r1, r1, #0x13
	ldr r5, _08163DB0 @ =0x01000080
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, _08163DB4 @ =0x05000200
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08163DB0: .4byte 0x01000080
_08163DB4: .4byte 0x05000200
	thumb_func_start sub_8163DB8
sub_8163DB8:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x004
	adds r5, r0, #0x0
	mov r8, r1
	bl sub_80198B0
	adds r6, r0, #0x0
	ldr r2, _08163E04 @ =0x0821280C
	movs r0, #0x01
	adds r1, r6, #0x0
	bl alloc_heap_8018CEC
	adds r4, r0, #0x0
	ldr r0, _08163E08 @ =0x03000C84
	ldr r2, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	movs r0, #0x02
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r8
	adds r2, r6, #0x0
	movs r3, #0x10
	bl sub_8018218
	adds r0, r4, #0x0
	bl free_heap_memory_8018C68
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08163E04: .4byte 0x0821280C
_08163E08: .4byte 0x03000C84
	thumb_func_start sub_8163E0C
sub_8163E0C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	cmp r4, #0x00
	bgt _08163E1A
	movs r4, #0x01
_08163E1A:
	cmp r3, #0x00
	bge _08163E20
	movs r3, #0x00
_08163E20:
	cmp r3, r4
	ble _08163E26
	adds r3, r4, #0x0
_08163E26:
	ldr r2, _08163E44 @ =0x03001038
	ldr r0, _08163E48 @ =0x0819832C
	ldr r1, _08163E4C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	subs r0, r6, r5
	muls r0, r3
	adds r1, r4, #0x0
	bl _call_via_r2
	adds r0, r5, r0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08163E44: .4byte 0x03001038
_08163E48: .4byte 0x0819832C
_08163E4C: .4byte 0x08198220
	thumb_func_start sub_8163E50
sub_8163E50:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r10, r0
	mov r9, r1
	adds r6, r2, #0x0
	adds r7, r3, #0x0
	cmp r6, #0x00
	bgt _08163E68
	movs r6, #0x01
_08163E68:
	cmp r7, #0x00
	bge _08163E6E
	movs r7, #0x00
_08163E6E:
	cmp r7, r6
	ble _08163E74
	adds r7, r6, #0x0
_08163E74:
	ldr r5, _08163ED8 @ =0x0819832C
	ldr r0, _08163EDC @ =0x08198220
	subs r5, r5, r0
	ldr r0, _08163EE0 @ =0x03001038
	ldr r4, [r0, #0x00]
	adds r4, r4, r5
	mov r2, r10
	lsls r1, r2, #0x01
	add r1, r10
	mov r2, r9
	lsls r0, r2, #0x01
	add r0, r9
	subs r0, r0, r1
	muls r0, r7
	adds r1, r6, #0x0
	bl _call_via_r4
	muls r0, r7
	adds r1, r6, #0x0
	bl _call_via_r4
	mov r8, r0
	ldr r0, _08163EE0 @ =0x03001038
	ldr r4, [r0, #0x00]
	adds r4, r4, r5
	mov r2, r10
	mov r0, r9
	subs r1, r2, r0
	lsls r0, r7, #0x01
	muls r0, r1
	adds r1, r6, #0x0
	bl _call_via_r4
	muls r0, r7
	adds r1, r6, #0x0
	bl _call_via_r4
	muls r0, r7
	adds r1, r6, #0x0
	bl _call_via_r4
	add r0, r8
	add r0, r10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08163ED8: .4byte 0x0819832C
_08163EDC: .4byte 0x08198220
_08163EE0: .4byte 0x03001038
	thumb_func_start sub_8163EE4
sub_8163EE4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r3, _08163F18 @ =0x03001028
	ldr r2, [r3, #0x00]
	ldr r0, _08163F1C @ =0x41C64E6D
	muls r0, r2
	ldr r2, _08163F20 @ =0x00003039
	adds r0, r0, r2
	str r0, [r3, #0x00]
	ldr r4, _08163F24 @ =0x03001038
	ldr r2, _08163F28 @ =0x08198350
	ldr r3, _08163F2C @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x11
	subs r2, r5, #0x1
	subs r1, r1, r2
	bl _call_via_r3
	adds r0, r0, r5
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08163F18: .4byte 0x03001028
_08163F1C: .4byte 0x41C64E6D
_08163F20: .4byte 0x00003039
_08163F24: .4byte 0x03001038
_08163F28: .4byte 0x08198350
_08163F2C: .4byte 0x08198220
	.byte 0x02, 0x68, 0x0B, 0x68, 0xD2, 0x1A, 0x02, 0x60, 0x42, 0x68, 0x4B, 0x68, 0xD2, 0x1A, 0x42, 0x60
	.byte 0x82, 0x68, 0x89, 0x68, 0x52, 0x1A, 0x82, 0x60, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x0B, 0x68
	.byte 0x14, 0x68, 0x1B, 0x1B, 0x03, 0x60, 0x4B, 0x68, 0x54, 0x68, 0x1B, 0x1B, 0x43, 0x60, 0x89, 0x68
	.byte 0x92, 0x68, 0x89, 0x1A, 0x81, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47
	thumb_func_start sub_8163F6C
sub_8163F6C:
	ldr r2, [r0, #0x00]
	ldr r3, [r1, #0x00]
	adds r2, r2, r3
	str r2, [r0, #0x00]
	ldr r2, [r0, #0x04]
	ldr r3, [r1, #0x04]
	adds r2, r2, r3
	str r2, [r0, #0x04]
	ldr r2, [r0, #0x08]
	ldr r1, [r1, #0x08]
	adds r2, r2, r1
	str r2, [r0, #0x08]
	bx lr
	.byte 0x00, 0x00, 0x10, 0xB5, 0x0B, 0x68, 0x14, 0x68, 0x1B, 0x19, 0x03, 0x60, 0x4B, 0x68, 0x54, 0x68
	.byte 0x1B, 0x19, 0x43, 0x60, 0x89, 0x68, 0x92, 0x68, 0x89, 0x18, 0x81, 0x60, 0x10, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47
