	.syntax unified
	.text

	thumb_func_start sub_80E8228
sub_80E8228:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	str r1, [sp, #0x008]
	mov r9, r3
	ldr r1, [sp, #0x060]
	ldr r3, [sp, #0x064]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x00C]
	mov r2, r9
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r9, r2
	lsls r1, r1, #0x18
	lsls r6, r3, #0x18
	lsrs r6, r6, #0x18
	str r6, [sp, #0x014]
	ldr r0, [r0, #0x04]
	movs r4, #0xC0
	lsls r4, r4, #0x01
	adds r0, r0, r4
	ldr r7, [r0, #0x00]
	lsrs r0, r1, #0x18
	str r0, [sp, #0x010]
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r1, r2
	lsrs r0, r0, #0x18
	str r0, [sp, #0x01C]
	ldr r2, _080E849C @ =0x08200160
	movs r0, #0x01
	movs r1, #0x80
	bl alloc_heap_8018CEC
	str r0, [sp, #0x018]
	movs r4, #0x90
	lsls r4, r4, #0x03
	adds r0, r7, r4
	ldr r1, _080E84A0 @ =0x040000D4
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x018]
	str r2, [r1, #0x04]
	ldr r4, _080E84A4 @ =0x84000008
	str r4, [r1, #0x08]
	ldr r0, [r1, #0x08]
	movs r0, #0x94
	lsls r0, r0, #0x03
	adds r0, r0, r7
	mov r8, r0
	str r0, [r1, #0x00]
	adds r2, #0x20
	str r2, [sp, #0x020]
	str r2, [r1, #0x04]
	str r4, [r1, #0x08]
	ldr r0, [r1, #0x08]
	ldr r0, _080E84A8 @ =0x0800112C
	ldr r1, _080E84AC @ =0x08001010
	subs r0, r0, r1
	str r0, [sp, #0x024]
	ldr r2, _080E84B0 @ =0x03000FB4
	ldr r5, [r2, #0x00]
	adds r5, r5, r0
	ldr r4, [sp, #0x00C]
	lsls r4, r4, #0x10
	mov r10, r4
	lsrs r4, r4, #0x10
	str r4, [sp, #0x028]
	mov r0, r9
	lsls r0, r0, #0x10
	mov r9, r0
	lsrs r6, r0, #0x10
	ldr r1, [sp, #0x01C]
	str r1, [sp, #0x000]
	movs r2, #0x02
	str r2, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x018]
	adds r2, r4, #0x0
	adds r3, r6, #0x0
	bl _call_via_r5
	mov r4, r8
	ldr r0, _080E84A0 @ =0x040000D4
	str r4, [r0, #0x00]
	ldr r1, [sp, #0x018]
	str r1, [r0, #0x04]
	ldr r2, _080E84A4 @ =0x84000008
	str r2, [r0, #0x08]
	ldr r0, [r0, #0x08]
	movs r4, #0x98
	lsls r4, r4, #0x03
	adds r0, r7, r4
	ldr r1, _080E84A0 @ =0x040000D4
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x020]
	str r2, [r1, #0x04]
	ldr r4, _080E84A4 @ =0x84000008
	str r4, [r1, #0x08]
	ldr r0, [r1, #0x08]
	ldr r0, _080E84B0 @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r1, [sp, #0x024]
	adds r5, r5, r1
	ldr r2, [sp, #0x010]
	subs r2, #0x02
	lsls r2, r2, #0x03
	mov r8, r2
	mov r4, r10
	asrs r4, r4, #0x10
	str r4, [sp, #0x02C]
	add r8, r4
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r1, [sp, #0x01C]
	str r1, [sp, #0x000]
	movs r2, #0x02
	str r2, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x018]
	mov r2, r8
	adds r3, r6, #0x0
	bl _call_via_r5
	ldr r0, _080E84B4 @ =0x08001778
	ldr r4, _080E84AC @ =0x08001010
	subs r0, r0, r4
	str r0, [sp, #0x030]
	ldr r0, _080E84B0 @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r1, [sp, #0x030]
	adds r5, r5, r1
	ldr r2, [sp, #0x01C]
	str r2, [sp, #0x000]
	ldr r0, [sp, #0x010]
	subs r0, #0x03
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x034]
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x018]
	movs r2, #0x10
	adds r3, r6, #0x0
	bl _call_via_r5
	movs r4, #0xA8
	lsls r4, r4, #0x03
	adds r0, r7, r4
	ldr r1, _080E84A0 @ =0x040000D4
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x018]
	str r2, [r1, #0x04]
	ldr r4, _080E84A4 @ =0x84000008
	str r4, [r1, #0x08]
	ldr r0, [r1, #0x08]
	movs r0, #0xAC
	lsls r0, r0, #0x03
	adds r4, r7, r0
	str r4, [r1, #0x00]
	ldr r2, [sp, #0x020]
	str r2, [r1, #0x04]
	ldr r0, _080E84A4 @ =0x84000008
	str r0, [r1, #0x08]
	ldr r0, [r1, #0x08]
	ldr r1, _080E84B0 @ =0x03000FB4
	ldr r5, [r1, #0x00]
	ldr r2, [sp, #0x024]
	adds r5, r5, r2
	ldr r6, [sp, #0x014]
	subs r6, #0x01
	lsls r6, r6, #0x03
	mov r0, r9
	asrs r0, r0, #0x10
	mov r9, r0
	add r6, r9
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r1, [sp, #0x01C]
	str r1, [sp, #0x000]
	movs r2, #0x02
	str r2, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x018]
	ldr r2, [sp, #0x028]
	adds r3, r6, #0x0
	bl _call_via_r5
	ldr r0, _080E84A0 @ =0x040000D4
	str r4, [r0, #0x00]
	ldr r1, [sp, #0x018]
	str r1, [r0, #0x04]
	ldr r2, _080E84A4 @ =0x84000008
	str r2, [r0, #0x08]
	ldr r0, [r0, #0x08]
	movs r4, #0xB0
	lsls r4, r4, #0x03
	adds r0, r7, r4
	ldr r1, _080E84A0 @ =0x040000D4
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x020]
	str r2, [r1, #0x04]
	ldr r4, _080E84A4 @ =0x84000008
	str r4, [r1, #0x08]
	ldr r0, [r1, #0x08]
	ldr r0, _080E84B0 @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r1, [sp, #0x024]
	adds r5, r5, r1
	ldr r2, [sp, #0x01C]
	str r2, [sp, #0x000]
	movs r4, #0x02
	str r4, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x018]
	mov r2, r8
	adds r3, r6, #0x0
	bl _call_via_r5
	ldr r0, _080E84B0 @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r1, [sp, #0x030]
	adds r5, r5, r1
	ldr r2, [sp, #0x01C]
	str r2, [sp, #0x000]
	ldr r4, [sp, #0x034]
	str r4, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x018]
	movs r2, #0x10
	adds r3, r6, #0x0
	bl _call_via_r5
	movs r1, #0x9C
	lsls r1, r1, #0x03
	adds r0, r7, r1
	ldr r2, _080E84A0 @ =0x040000D4
	str r0, [r2, #0x00]
	ldr r4, [sp, #0x018]
	str r4, [r2, #0x04]
	ldr r0, _080E84A4 @ =0x84000008
	str r0, [r2, #0x08]
	ldr r0, [r2, #0x08]
	ldr r6, _080E84B8 @ =0x080018A8
	ldr r1, _080E84AC @ =0x08001010
	subs r6, r6, r1
	ldr r2, _080E84B0 @ =0x03000FB4
	ldr r5, [r2, #0x00]
	adds r5, r5, r6
	movs r4, #0x08
	add r9, r4
	mov r0, r9
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	ldr r1, [sp, #0x01C]
	str r1, [sp, #0x000]
	ldr r0, [sp, #0x014]
	subs r0, #0x02
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x018]
	ldr r2, [sp, #0x028]
	mov r3, r9
	bl _call_via_r5
	movs r2, #0xA4
	lsls r2, r2, #0x03
	adds r0, r7, r2
	ldr r4, _080E84A0 @ =0x040000D4
	str r0, [r4, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r4, #0x04]
	ldr r1, _080E84A4 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r2, _080E84B0 @ =0x03000FB4
	ldr r2, [r2, #0x00]
	adds r6, r2, r6
	ldr r0, [sp, #0x010]
	subs r0, #0x01
	lsls r2, r0, #0x03
	ldr r4, [sp, #0x02C]
	adds r2, r4, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [sp, #0x01C]
	str r0, [sp, #0x000]
	mov r1, r8
	str r1, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x018]
	mov r3, r9
	bl _call_via_r6
	ldr r0, [sp, #0x018]
	bl free_heap_memory_8018C68
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E849C: .4byte 0x08200160
_080E84A0: .4byte 0x040000D4
_080E84A4: .4byte 0x84000008
_080E84A8: .4byte 0x0800112C
_080E84AC: .4byte 0x08001010
_080E84B0: .4byte 0x03000FB4
_080E84B4: .4byte 0x08001778
_080E84B8: .4byte 0x080018A8
