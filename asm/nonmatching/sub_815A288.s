	.syntax unified
	.text

	thumb_func_start sub_815A288
sub_815A288:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0815A35C @ =0x08CDCA50
	str r0, [r4, #0x18]
	movs r0, #0x00
	bl sub_8019628
	movs r0, #0x02
	movs r1, #0x00
	bl sub_8018B78
	ldr r3, _0815A360 @ =0x04000208
	movs r0, #0x00
	strh r0, [r3, #0x00]
	ldr r2, _0815A364 @ =0x02000004
	ldrh r1, [r2, #0x00]
	ldr r0, _0815A368 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _0815A36C @ =0x04000200
	ldrh r1, [r2, #0x00]
	ldr r0, _0815A370 @ =0x0000FFFD
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
	bl sub_815A5D0
	ldr r1, _0815A374 @ =0x00001CB8
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0815A2E6
	movs r1, #0x03
	bl sub_815ECA8
_0815A2E6:
	ldr r1, _0815A378 @ =0x00001EA4
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0815A2F6
	movs r1, #0x03
	bl process_remove
_0815A2F6:
	ldr r1, _0815A37C @ =0x00001CBC
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0815A306
	movs r1, #0x03
	bl sub_8159A64
_0815A306:
	ldr r0, _0815A380 @ =0x0300101C
	ldr r0, [r0, #0x00]
	bl free_heap_memory_8018C68
	ldr r1, _0815A384 @ =0x0300034C
	ldr r0, _0815A388 @ =0x0000FFFF
	strh r0, [r1, #0x02]
	ldr r0, _0815A38C @ =0x00000888
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x14]
	bl process_enable
	bl sub_8150A38
	ldr r1, _0815A390 @ =0x00001064
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
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815A35C: .4byte 0x08CDCA50
_0815A360: .4byte 0x04000208
_0815A364: .4byte 0x02000004
_0815A368: .4byte 0x0000FFEF
_0815A36C: .4byte 0x04000200
_0815A370: .4byte 0x0000FFFD
_0815A374: .4byte 0x00001CB8
_0815A378: .4byte 0x00001EA4
_0815A37C: .4byte 0x00001CBC
_0815A380: .4byte 0x0300101C
_0815A384: .4byte 0x0300034C
_0815A388: .4byte 0x0000FFFF
_0815A38C: .4byte 0x00000888
_0815A390: .4byte 0x00001064
