	.syntax unified
	.text

	thumb_func_start sub_80F1EE8
sub_80F1EE8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r7, r0, #0x0
	ldr r2, _080F1F68 @ =0x082001C0
	movs r0, #0x01
	movs r1, #0x40
	bl alloc_heap_8018CEC
	str r0, [r7, #0x00]
	adds r5, r0, #0x0
	ldr r0, _080F1F6C @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r2, #0x40
	bl _call_via_r3
	ldr r1, _080F1F70 @ =0x00008001
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
	ldr r4, _080F1F74 @ =0x00008004
	adds r0, r4, #0x0
	bl sub_8082AAC
	adds r0, r4, #0x0
	bl sub_8082A6C
	movs r6, #0x04
	movs r4, #0x01
	negs r4, r4
_080F1F36:
	movs r0, #0xFF
	strb r0, [r5, #0x0C]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r5, #0x00]
	lsls r0, r6, #0x10
	ldr r1, _080F1F78 @ =0xFFFF0000
	adds r0, r0, r1
	adds r5, #0x10
	lsrs r6, r0, #0x10
	cmp r0, #0x00
	bgt _080F1F36
	adds r0, r7, #0x0
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F1F68: .4byte 0x082001C0
_080F1F6C: .4byte 0x03001034
_080F1F70: .4byte 0x00008001
_080F1F74: .4byte 0x00008004
_080F1F78: .4byte 0xFFFF0000
