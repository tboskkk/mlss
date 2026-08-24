	.syntax unified
	.text

	thumb_func_start sub_80E7E0C
sub_80E7E0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x064
	str r1, [sp, #0x00C]
	ldr r1, [sp, #0x084]
	ldr r4, [sp, #0x088]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r10, r3
	lsls r1, r1, #0x18
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x014]
	ldr r0, [r0, #0x04]
	movs r2, #0xC0
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldr r7, [r0, #0x00]
	lsrs r0, r1, #0x18
	str r0, [sp, #0x010]
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r1, r2
	lsrs r0, r0, #0x18
	str r0, [sp, #0x018]
	ldr r2, _080E8208 @ =0x08200160
	movs r0, #0x01
	movs r1, #0x80
	bl alloc_heap_8018CEC
	mov r9, r0
	ldr r4, _080E820C @ =0x040000D4
	movs r1, #0xC8
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r0, [r4, #0x00]
	mov r2, r9
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	adds r1, #0x20
	adds r0, r7, r1
	str r0, [r4, #0x00]
	adds r2, #0x20
	str r2, [sp, #0x01C]
	str r2, [r4, #0x04]
	ldr r2, _080E8210 @ =0x84000008
	str r2, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r0, #0xE0
	lsls r0, r0, #0x01
	adds r0, r7, r0
	str r0, [sp, #0x020]
	str r0, [r4, #0x00]
	mov r1, r9
	adds r1, #0x40
	str r1, [sp, #0x024]
	str r1, [r4, #0x04]
	str r2, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r0, _080E8214 @ =0x0800112C
	ldr r2, _080E8218 @ =0x08001010
	subs r0, r0, r2
	str r0, [sp, #0x028]
	ldr r0, _080E821C @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r1, [sp, #0x028]
	adds r5, r5, r1
	lsls r6, r6, #0x10
	str r6, [sp, #0x030]
	lsrs r2, r6, #0x10
	str r2, [sp, #0x02C]
	mov r0, r10
	lsls r6, r0, #0x10
	lsrs r1, r6, #0x10
	str r1, [sp, #0x034]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ldr r2, [sp, #0x02C]
	ldr r3, [sp, #0x034]
	bl _call_via_r5
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r0, [r4, #0x00]
	mov r2, r9
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	asrs r1, r6, #0x10
	str r1, [sp, #0x038]
	movs r2, #0x80
	lsls r2, r2, #0x0C
	adds r3, r6, r2
	lsrs r3, r3, #0x10
	str r3, [sp, #0x03C]
	ldr r0, [sp, #0x018]
	str r0, [sp, #0x000]
	ldr r1, _080E821C @ =0x03000FB4
	ldr r5, [r1, #0x00]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ldr r2, [sp, #0x02C]
	bl _call_via_r5
	movs r2, #0xF8
	lsls r2, r2, #0x02
	adds r0, r7, r2
	str r0, [r4, #0x00]
	mov r0, r9
	str r0, [r4, #0x04]
	ldr r1, _080E8210 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	adds r2, #0x20
	adds r0, r7, r2
	str r0, [r4, #0x00]
	ldr r0, [sp, #0x01C]
	str r0, [r4, #0x04]
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r1, #0x88
	lsls r1, r1, #0x02
	adds r1, r7, r1
	str r1, [sp, #0x040]
	str r1, [r4, #0x00]
	ldr r2, [sp, #0x024]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, _080E821C @ =0x03000FB4
	ldr r5, [r1, #0x00]
	ldr r2, [sp, #0x028]
	adds r5, r5, r2
	ldr r0, [sp, #0x014]
	subs r0, #0x01
	lsls r0, r0, #0x03
	ldr r1, [sp, #0x038]
	adds r0, r1, r0
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x044]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ldr r2, [sp, #0x02C]
	bl _call_via_r5
	movs r1, #0xF0
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r0, [r4, #0x00]
	mov r2, r9
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, [sp, #0x014]
	subs r1, #0x02
	lsls r1, r1, #0x03
	mov r10, r1
	ldr r2, [sp, #0x038]
	add r10, r2
	mov r0, r10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r1, [sp, #0x018]
	str r1, [sp, #0x000]
	ldr r2, _080E821C @ =0x03000FB4
	ldr r5, [r2, #0x00]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ldr r2, [sp, #0x02C]
	mov r3, r10
	bl _call_via_r5
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r0, r7, r0
	str r0, [sp, #0x048]
	str r0, [r4, #0x00]
	mov r1, r9
	str r1, [r4, #0x04]
	ldr r2, _080E8210 @ =0x84000008
	str r2, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r1, #0xD8
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x01C]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	adds r1, #0x20
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x024]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, _080E821C @ =0x03000FB4
	ldr r5, [r1, #0x00]
	ldr r2, [sp, #0x028]
	adds r5, r5, r2
	ldr r6, [sp, #0x010]
	subs r6, #0x03
	lsls r6, r6, #0x03
	ldr r0, [sp, #0x030]
	asrs r0, r0, #0x10
	str r0, [sp, #0x04C]
	adds r6, r0, r6
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r1, [sp, #0x018]
	str r1, [sp, #0x000]
	movs r2, #0x03
	str r2, [sp, #0x004]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	adds r2, r6, #0x0
	ldr r3, [sp, #0x034]
	bl _call_via_r5
	movs r1, #0xE8
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r0, [r4, #0x00]
	mov r2, r9
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r0, [sp, #0x010]
	subs r0, #0x01
	lsls r0, r0, #0x03
	ldr r1, [sp, #0x04C]
	adds r0, r1, r0
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x050]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x000]
	ldr r0, _080E821C @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ldr r2, [sp, #0x050]
	ldr r3, [sp, #0x03C]
	bl _call_via_r5
	movs r1, #0x98
	lsls r1, r1, #0x02
	adds r1, r7, r1
	str r1, [sp, #0x054]
	str r1, [r4, #0x00]
	mov r2, r9
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r1, #0x84
	lsls r1, r1, #0x03
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x01C]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	adds r1, #0x20
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x024]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, _080E821C @ =0x03000FB4
	ldr r5, [r1, #0x00]
	ldr r2, [sp, #0x028]
	adds r5, r5, r2
	ldr r0, [sp, #0x018]
	str r0, [sp, #0x000]
	movs r1, #0x03
	str r1, [sp, #0x004]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	adds r2, r6, #0x0
	ldr r3, [sp, #0x044]
	bl _call_via_r5
	movs r2, #0x8C
	lsls r2, r2, #0x03
	adds r0, r7, r2
	str r0, [r4, #0x00]
	mov r0, r9
	str r0, [r4, #0x04]
	ldr r1, _080E8210 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x000]
	ldr r0, _080E821C @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ldr r2, [sp, #0x050]
	mov r3, r10
	bl _call_via_r5
	movs r1, #0xA0
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r0, [r4, #0x00]
	mov r2, r9
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	adds r1, #0x20
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x01C]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r0, _080E8220 @ =0x08001A60
	ldr r1, _080E8218 @ =0x08001010
	subs r0, r0, r1
	str r0, [sp, #0x058]
	ldr r2, _080E821C @ =0x03000FB4
	ldr r5, [r2, #0x00]
	adds r5, r5, r0
	ldr r0, [sp, #0x038]
	adds r0, #0x10
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x05C]
	ldr r0, [sp, #0x018]
	str r0, [sp, #0x000]
	movs r1, #0x02
	str r1, [sp, #0x004]
	ldr r0, [sp, #0x014]
	subs r0, #0x03
	lsls r0, r0, #0x0F
	lsrs r0, r0, #0x10
	str r0, [sp, #0x060]
	str r0, [sp, #0x008]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ldr r2, [sp, #0x02C]
	bl _call_via_r5
	ldr r2, [sp, #0x020]
	str r2, [r4, #0x00]
	mov r0, r9
	str r0, [r4, #0x04]
	ldr r1, _080E8210 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r2, #0xF0
	lsls r2, r2, #0x01
	adds r0, r7, r2
	str r0, [r4, #0x00]
	ldr r0, [sp, #0x01C]
	str r0, [r4, #0x04]
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, [sp, #0x048]
	str r1, [r4, #0x00]
	ldr r2, [sp, #0x024]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, _080E8224 @ =0x080013E4
	mov r10, r1
	mov r2, r10
	ldr r0, _080E8218 @ =0x08001010
	subs r2, r2, r0
	mov r10, r2
	ldr r1, _080E821C @ =0x03000FB4
	ldr r5, [r1, #0x00]
	add r5, r10
	ldr r2, [sp, #0x04C]
	adds r2, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x010]
	subs r0, #0x04
	movs r1, #0x03
	bl __divsi3
	adds r6, r0, #0x0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0x008]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	mov r2, r8
	ldr r3, [sp, #0x034]
	bl _call_via_r5
	ldr r1, [sp, #0x040]
	str r1, [r4, #0x00]
	mov r2, r9
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x01C]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, [sp, #0x054]
	str r1, [r4, #0x00]
	ldr r2, [sp, #0x024]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, _080E821C @ =0x03000FB4
	ldr r5, [r1, #0x00]
	add r5, r10
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	mov r2, r8
	ldr r3, [sp, #0x044]
	bl _call_via_r5
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r0, [r4, #0x00]
	mov r2, r9
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	adds r1, #0x20
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x01C]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, _080E821C @ =0x03000FB4
	ldr r4, [r1, #0x00]
	ldr r2, [sp, #0x058]
	adds r4, r4, r2
	ldr r0, [sp, #0x018]
	str r0, [sp, #0x000]
	movs r1, #0x02
	str r1, [sp, #0x004]
	ldr r2, [sp, #0x060]
	str r2, [sp, #0x008]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ldr r2, [sp, #0x050]
	ldr r3, [sp, #0x05C]
	bl _call_via_r4
	mov r0, r9
	bl free_heap_memory_8018C68
	add sp, #0x064
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E8208: .4byte 0x08200160
_080E820C: .4byte 0x040000D4
_080E8210: .4byte 0x84000008
_080E8214: .4byte 0x0800112C
_080E8218: .4byte 0x08001010
_080E821C: .4byte 0x03000FB4
_080E8220: .4byte 0x08001A60
_080E8224: .4byte 0x080013E4
