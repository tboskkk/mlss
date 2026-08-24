	.syntax unified
	.text

	thumb_func_start sub_80E7B48
sub_80E7B48:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x058
	str r1, [sp, #0x008]
	str r2, [sp, #0x00C]
	adds r6, r3, #0x0
	ldr r1, [sp, #0x078]
	ldr r2, [sp, #0x07C]
	ldr r3, [sp, #0x00C]
	lsls r3, r3, #0x10
	str r3, [sp, #0x014]
	lsrs r3, r3, #0x10
	str r3, [sp, #0x010]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x01C]
	ldr r0, [r0, #0x04]
	movs r2, #0xC0
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldr r7, [r0, #0x00]
	lsrs r3, r1, #0x18
	str r3, [sp, #0x018]
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r1, r2
	lsrs r0, r0, #0x18
	str r0, [sp, #0x024]
	ldr r2, _080E7DEC @ =0x08200160
	movs r0, #0x01
	movs r1, #0x80
	bl alloc_heap_8018CEC
	str r0, [sp, #0x020]
	ldr r4, _080E7DF0 @ =0x040000D4
	adds r0, r7, #0x0
	adds r0, #0xC0
	str r0, [r4, #0x00]
	ldr r3, [sp, #0x020]
	str r3, [r4, #0x04]
	ldr r0, _080E7DF4 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	adds r0, r7, #0x0
	adds r0, #0xE0
	str r0, [r4, #0x00]
	adds r3, #0x20
	str r3, [sp, #0x028]
	str r3, [r4, #0x04]
	ldr r1, _080E7DF4 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r2, #0x40
	adds r2, r2, r7
	mov r8, r2
	str r2, [r4, #0x00]
	ldr r3, [sp, #0x020]
	adds r3, #0x40
	str r3, [sp, #0x02C]
	str r3, [r4, #0x04]
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r0, _080E7DF8 @ =0x0800112C
	ldr r1, _080E7DFC @ =0x08001010
	subs r0, r0, r1
	str r0, [sp, #0x030]
	ldr r2, _080E7E00 @ =0x03000FB4
	ldr r5, [r2, #0x00]
	adds r5, r5, r0
	ldr r3, [sp, #0x010]
	lsls r3, r3, #0x10
	str r3, [sp, #0x038]
	lsrs r0, r3, #0x10
	str r0, [sp, #0x034]
	lsls r6, r6, #0x10
	asrs r1, r6, #0x10
	str r1, [sp, #0x03C]
	movs r2, #0x80
	lsls r2, r2, #0x0B
	adds r6, r6, r2
	lsrs r6, r6, #0x10
	ldr r3, [sp, #0x024]
	str r3, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x020]
	ldr r2, [sp, #0x034]
	adds r3, r6, #0x0
	bl _call_via_r5
	mov r1, r8
	str r1, [r4, #0x00]
	ldr r2, [sp, #0x020]
	str r2, [r4, #0x04]
	ldr r3, _080E7DF4 @ =0x84000008
	str r3, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x028]
	str r2, [r4, #0x04]
	str r3, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r3, #0x90
	lsls r3, r3, #0x01
	adds r0, r7, r3
	str r0, [r4, #0x00]
	ldr r0, [sp, #0x02C]
	str r0, [r4, #0x04]
	ldr r1, _080E7DF4 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r2, _080E7E00 @ =0x03000FB4
	ldr r5, [r2, #0x00]
	ldr r3, [sp, #0x030]
	adds r5, r5, r3
	ldr r0, [sp, #0x018]
	subs r0, #0x03
	lsls r0, r0, #0x03
	mov r8, r0
	ldr r1, [sp, #0x038]
	asrs r1, r1, #0x10
	str r1, [sp, #0x040]
	add r8, r1
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r3, [sp, #0x024]
	str r3, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x020]
	adds r3, r6, #0x0
	bl _call_via_r5
	ldr r0, _080E7E04 @ =0x08001778
	ldr r1, _080E7DFC @ =0x08001010
	subs r0, r0, r1
	str r0, [sp, #0x044]
	ldr r2, _080E7E00 @ =0x03000FB4
	ldr r5, [r2, #0x00]
	adds r5, r5, r0
	ldr r3, [sp, #0x024]
	str r3, [sp, #0x000]
	ldr r0, [sp, #0x018]
	subs r0, #0x05
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x048]
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x020]
	movs r2, #0x18
	adds r3, r6, #0x0
	bl _call_via_r5
	movs r1, #0xA0
	lsls r1, r1, #0x01
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x020]
	str r2, [r4, #0x04]
	ldr r3, _080E7DF4 @ =0x84000008
	str r3, [r4, #0x08]
	ldr r0, [r4, #0x08]
	adds r1, #0x20
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x028]
	str r2, [r4, #0x04]
	str r3, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r3, #0x60
	adds r3, r3, r7
	mov r10, r3
	str r3, [r4, #0x00]
	ldr r0, [sp, #0x02C]
	str r0, [r4, #0x04]
	ldr r1, _080E7DF4 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r2, _080E7E00 @ =0x03000FB4
	ldr r5, [r2, #0x00]
	ldr r3, [sp, #0x030]
	adds r5, r5, r3
	ldr r6, [sp, #0x01C]
	subs r6, #0x01
	lsls r6, r6, #0x03
	ldr r0, [sp, #0x03C]
	adds r6, r0, r6
	subs r6, #0x04
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r1, [sp, #0x024]
	str r1, [sp, #0x000]
	movs r2, #0x03
	str r2, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x020]
	ldr r2, [sp, #0x034]
	adds r3, r6, #0x0
	bl _call_via_r5
	mov r3, r10
	str r3, [r4, #0x00]
	ldr r0, [sp, #0x020]
	str r0, [r4, #0x04]
	ldr r1, _080E7DF4 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r2, #0xC0
	lsls r2, r2, #0x01
	adds r0, r7, r2
	str r0, [r4, #0x00]
	ldr r3, [sp, #0x028]
	str r3, [r4, #0x04]
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x02C]
	str r2, [r4, #0x04]
	ldr r3, _080E7DF4 @ =0x84000008
	str r3, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r0, _080E7E00 @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r1, [sp, #0x030]
	adds r5, r5, r1
	ldr r2, [sp, #0x024]
	str r2, [sp, #0x000]
	movs r3, #0x03
	str r3, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x020]
	mov r2, r8
	adds r3, r6, #0x0
	bl _call_via_r5
	ldr r0, _080E7E00 @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r1, [sp, #0x044]
	adds r5, r5, r1
	ldr r2, [sp, #0x024]
	str r2, [sp, #0x000]
	ldr r3, [sp, #0x048]
	str r3, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x020]
	movs r2, #0x18
	adds r3, r6, #0x0
	bl _call_via_r5
	adds r0, r7, #0x0
	adds r0, #0x80
	str r0, [r4, #0x00]
	ldr r0, [sp, #0x020]
	str r0, [r4, #0x04]
	ldr r1, _080E7DF4 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r6, _080E7E08 @ =0x080018A8
	ldr r2, _080E7DFC @ =0x08001010
	subs r6, r6, r2
	ldr r3, _080E7E00 @ =0x03000FB4
	ldr r5, [r3, #0x00]
	adds r5, r5, r6
	ldr r0, [sp, #0x03C]
	adds r0, #0x0C
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	mov r9, r3
	ldr r0, [sp, #0x024]
	str r0, [sp, #0x000]
	ldr r0, [sp, #0x01C]
	subs r0, #0x03
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x020]
	ldr r2, [sp, #0x034]
	bl _call_via_r5
	adds r0, r7, #0x0
	adds r0, #0xA0
	str r0, [r4, #0x00]
	ldr r1, [sp, #0x020]
	str r1, [r4, #0x04]
	ldr r2, _080E7DF4 @ =0x84000008
	str r2, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r3, _080E7E00 @ =0x03000FB4
	ldr r4, [r3, #0x00]
	adds r4, r4, r6
	ldr r0, [sp, #0x018]
	subs r0, #0x01
	lsls r0, r0, #0x03
	ldr r1, [sp, #0x040]
	adds r0, r1, r0
	lsls r2, r0, #0x10
	lsrs r3, r2, #0x10
	str r3, [sp, #0x050]
	ldr r0, [sp, #0x024]
	str r0, [sp, #0x000]
	mov r1, r8
	str r1, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x020]
	adds r2, r3, #0x0
	mov r3, r9
	bl _call_via_r4
	ldr r0, [sp, #0x020]
	bl free_heap_memory_8018C68
	add sp, #0x058
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E7DEC: .4byte dword_8200160 @ =0x08200160
_080E7DF0: .4byte 0x040000D4
_080E7DF4: .4byte 0x84000008
_080E7DF8: .4byte dword_800112C @ =0x0800112C
_080E7DFC: .4byte dword_8001010 @ =0x08001010
_080E7E00: .4byte 0x03000FB4
_080E7E04: .4byte dword_8001778 @ =0x08001778
_080E7E08: .4byte dword_80018A8 @ =0x080018A8
