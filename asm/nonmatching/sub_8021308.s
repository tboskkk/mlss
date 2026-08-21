	.syntax unified
	.text

	thumb_func_start sub_8021308
sub_8021308:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldrb r1, [r4, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08021356
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x12]
	adds r0, r4, #0x0
	movs r1, #0x02
	bl sub_8021A18
	cmp r0, #0x00
	bne _08021356
	ldr r3, _0802136C @ =0x0203FFC4
	ldrh r2, [r4, #0x14]
	cmp r2, #0x00
	beq _08021356
	movs r7, #0x80
	lsls r7, r7, #0x07
	movs r6, #0x01
	ldr r0, _08021370 @ =0x0000FFFF
	adds r5, r0, #0x0
_0802133A:
	ldrh r1, [r3, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0802134E
	adds r0, r2, #0x0
	ands r0, r6
	cmp r0, #0x00
	beq _0802134E
	strh r5, [r3, #0x00]
_0802134E:
	adds r3, #0x02
	asrs r2, r2, #0x01
	cmp r2, #0x00
	bne _0802133A
_08021356:
	adds r0, r4, #0x0
	bl sub_8021C24
	ldr r5, _08021374 @ =0x0203FFB8
	ldr r1, [r4, #0x64]
	cmp r1, #0x00
	beq _08021378
	ldr r0, [r4, #0x68]
	str r0, [r1, #0x68]
	b _0802137C
	.byte 0x00, 0x00
_0802136C: .4byte 0x0203FFC4
_08021370: .4byte 0x0000FFFF
_08021374: .4byte 0x0203FFB8
_08021378:
	ldr r0, [r4, #0x68]
	str r0, [r5, #0x30]
_0802137C:
	ldr r1, [r4, #0x68]
	cmp r1, #0x00
	beq _08021388
	ldr r0, [r4, #0x64]
	str r0, [r1, #0x64]
	b _0802138C
_08021388:
	ldr r0, [r4, #0x64]
	str r0, [r5, #0x34]
_0802138C:
	adds r0, r4, #0x0
	bl sprite_heap_free
	ldrb r0, [r5, #0x01]
	subs r0, #0x01
	strb r0, [r5, #0x01]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
