	.syntax unified
	.text

	thumb_func_start sub_8151650
sub_8151650:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, _08151724 @ =0x08CDC4B0
	str r0, [r4, #0x18]
	movs r0, #0x00
	bl sub_8019628
	movs r0, #0x02
	movs r1, #0x00
	bl sub_8018B78
	ldr r3, _08151728 @ =0x04000208
	movs r0, #0x00
	strh r0, [r3, #0x00]
	ldr r2, _0815172C @ =0x02000004
	ldrh r1, [r2, #0x00]
	ldr r0, _08151730 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _08151734 @ =0x04000200
	ldrh r1, [r2, #0x00]
	ldr r0, _08151738 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ldrh r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x01
	strh r0, [r3, #0x00]
	movs r0, #0x04
	movs r1, #0x00
	bl sub_8018B78
	adds r0, r4, #0x0
	bl sub_8151BBC
	ldr r1, _0815173C @ =0x00001F30
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081516AE
	movs r1, #0x03
	bl process_remove
_081516AE:
	ldr r5, _08151740 @ =0x03001014
	ldr r0, [r5, #0x00]
	adds r0, #0x04
	bl sub_80184F4
	ldr r1, _08151744 @ =0x00001CB4
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081516C8
	movs r1, #0x03
	bl sub_8150F60
_081516C8:
	ldr r0, [r5, #0x00]
	bl free_heap_memory_8018C68
	ldr r1, _08151748 @ =0x0300034C
	ldr r0, _0815174C @ =0x0000FFFF
	strh r0, [r1, #0x02]
	ldr r0, _08151750 @ =0x00000888
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x14]
	bl process_enable
	bl sub_8150A38
	movs r1, #0x80
	lsls r1, r1, #0x12
	movs r0, #0x40
	strh r0, [r1, #0x00]
	ldr r1, _08151754 @ =0x00001064
	adds r0, r4, r1
	movs r1, #0x02
	bl sub_8160EA4
	movs r1, #0x84
	lsls r1, r1, #0x04
	adds r0, r4, r1
	movs r1, #0x02
	bl sub_8160EA4
	adds r0, r4, #0x0
	adds r0, #0x1C
	movs r1, #0x02
	bl sub_8160EA4
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl process_remove
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08151724: .4byte 0x08CDC4B0
_08151728: .4byte 0x04000208
_0815172C: .4byte 0x02000004
_08151730: .4byte 0x0000FFEF
_08151734: .4byte 0x04000200
_08151738: .4byte 0x0000FFFD
_0815173C: .4byte 0x00001F30
_08151740: .4byte 0x03001014
_08151744: .4byte 0x00001CB4
_08151748: .4byte 0x0300034C
_0815174C: .4byte 0x0000FFFF
_08151750: .4byte 0x00000888
_08151754: .4byte 0x00001064
