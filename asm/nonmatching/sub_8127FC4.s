	.syntax unified
	.text

	thumb_func_start sub_8127FC4
sub_8127FC4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _08128040 @ =0x08CDC3D8
	str r0, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x48
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x06
	strh r1, [r0, #0x00]
	ldr r2, _08128044 @ =0x0300034C
	ldr r0, _08128048 @ =0x00000888
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	subs r1, #0x38
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x24]
	cmp r0, #0x00
	beq _08128008
	movs r1, #0x03
	bl sub_80FAFD8
_08128008:
	bl sub_8021FD4
	adds r0, r4, #0x0
	adds r0, #0xC8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812801A
	bl free_heap_8018D9C
_0812801A:
	ldr r0, [r4, #0x20]
	cmp r0, #0x00
	beq _08128026
	movs r1, #0x03
	bl sub_81166AC
_08128026:
	ldr r0, [r4, #0x1C]
	cmp r0, #0x00
	beq _08128032
	movs r1, #0x03
	bl process_remove
_08128032:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
_08128040: .4byte 0x08CDC3D8
_08128044: .4byte 0x0300034C
_08128048: .4byte 0x00000888
