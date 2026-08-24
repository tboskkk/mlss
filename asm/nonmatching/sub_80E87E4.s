	.syntax unified
	.text

	thumb_func_start sub_80E87E4
sub_80E87E4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r7, r0, #0x0
	ldr r2, _080E8864 @ =0x08200168
	movs r0, #0x01
	movs r1, #0x40
	bl alloc_heap_8018CEC
	str r0, [r7, #0x00]
	adds r4, r0, #0x0
	ldr r0, _080E8868 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x40
	bl _call_via_r3
	ldr r1, _080E886C @ =0x00008001
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x0F
	str r0, [sp, #0x008]
	movs r0, #0x07
	movs r2, #0x01
	movs r3, #0x00
	bl sub_8021574
	movs r6, #0x04
	movs r5, #0x01
	negs r5, r5
_080E8824:
	movs r0, #0xFF
	strb r0, [r4, #0x0C]
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x00
	ldr r1, _080E8870 @ =0x00008004
	movs r2, #0x01
	adds r3, r5, #0x0
	bl sub_8020DD0
	str r0, [r4, #0x00]
	movs r1, #0x00
	strb r1, [r0, #0x1F]
	str r1, [sp, #0x000]
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	lsls r0, r6, #0x10
	ldr r1, _080E8874 @ =0xFFFF0000
	adds r0, r0, r1
	adds r4, #0x10
	lsrs r6, r0, #0x10
	cmp r0, #0x00
	bgt _080E8824
	adds r0, r7, #0x0
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080E8864: .4byte dword_8200168 @ =0x08200168
_080E8868: .4byte 0x03001034
_080E886C: .4byte 0x00008001
_080E8870: .4byte 0x00008004
_080E8874: .4byte 0xFFFF0000
