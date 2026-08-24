	.syntax unified
	.text

	thumb_func_start sub_8022554
sub_8022554:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, _08022648 @ =0x08CDBDB8
	str r0, [r4, #0x18]
	movs r1, #0xC5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08022570
	movs r1, #0x03
	bl sub_81166AC
_08022570:
	movs r1, #0xC3
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08022582
	movs r1, #0x03
	bl process_remove
_08022582:
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0802259A
	ldr r0, _0802264C @ =0x08CDBDC8
	str r0, [r1, #0x18]
	adds r0, r1, #0x0
	movs r1, #0x03
	bl process_remove
_0802259A:
	movs r1, #0xFE
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080225AC
	movs r1, #0x03
	bl sub_805CCC0
_080225AC:
	movs r1, #0xC2
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080225BE
	movs r1, #0x03
	bl sub_805C73C
_080225BE:
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080225D0
	movs r1, #0x03
	bl sub_8057B58
_080225D0:
	adds r0, r4, #0x0
	bl sub_80292EC
	ldr r0, [r4, #0x1C]
	bl free_heap_8018DA8
	ldr r0, [r4, #0x20]
	bl free_heap_8018DA8
	movs r1, #0x8F
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	ldr r0, [r4, #0x24]
	bl free_heap_8018DA8
	movs r0, #0xC7
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _08022606
	movs r1, #0x03
	bl sub_80F034C
_08022606:
	movs r1, #0xC8
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08022618
	movs r1, #0x03
	bl sub_80F0420
_08022618:
	ldr r0, [r5, #0x00]
	bl sub_80F0184
	bl sub_8021FD4
	movs r0, #0x02
	movs r1, #0x00
	bl sub_8018B78
	ldr r1, _08022650 @ =0x0300034C
	ldr r0, _08022654 @ =0x0000088A
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl process_remove
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08022648: .4byte 0x08CDBDB8
_0802264C: .4byte 0x08CDBDC8
_08022650: .4byte 0x0300034C
_08022654: .4byte 0x0000088A
