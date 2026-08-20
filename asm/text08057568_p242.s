	.include "asm/macros.inc"

	.syntax unified
	.text

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
