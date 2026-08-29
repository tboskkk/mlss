	.syntax unified
	.text

	thumb_func_start sub_80E53E8
sub_80E53E8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r3, r1, #0x0
	ldr r6, _080E53FC @ =0x03000F94
	ldr r5, [r6, #0x00]
	cmp r5, #0x00
	beq _080E5400
	movs r0, #0x00
	b _080E5462
	.byte 0x00, 0x00
_080E53FC: .4byte 0x03000F94
_080E5400:
	movs r2, #0x80
	lsls r2, r2, #0x12
	ldrh r0, [r2, #0x00]
	movs r7, #0xC0
	lsls r7, r7, #0x07
	adds r1, r7, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _080E5468 @ =0x02000048
	lsls r0, r3, #0x08
	orrs r0, r3
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x3F
	eors r3, r0
	strh r3, [r1, #0x00]
	ldr r0, _080E546C @ =0x02000044
	movs r1, #0xA0
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	ldr r2, _080E5470 @ =0x08200120
	movs r0, #0x01
	bl alloc_heap_8018CEC
	str r0, [r6, #0x00]
	ldr r0, _080E5474 @ =0x03000F98
	str r5, [r0, #0x00]
	ldr r1, _080E5478 @ =0x03000F9C
	ldr r0, _080E547C @ =0x0300034C
	ldr r2, _080E5480 @ =0x000008C4
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r1, _080E5484 @ =0x080E5059
	movs r0, #0x02
	bl sub_8018B78
	cmp r4, #0x03
	ble _080E5456
	movs r4, #0x03
_080E5456:
	cmp r4, #0x00
	bge _080E545C
	movs r4, #0x00
_080E545C:
	ldr r0, _080E5488 @ =0x03000FA0
	str r4, [r0, #0x00]
	movs r0, #0x01
_080E5462:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080E5468: .4byte 0x02000048
_080E546C: .4byte 0x02000044
_080E5470: .4byte 0x08200120
_080E5474: .4byte 0x03000F98
_080E5478: .4byte 0x03000F9C
_080E547C: .4byte 0x0300034C
_080E5480: .4byte 0x000008C4
_080E5484: .4byte sub_80E5058
_080E5488: .4byte 0x03000FA0
