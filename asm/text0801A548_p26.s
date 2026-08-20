	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8051368
sub_8051368:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08051394 @ =0x0000020F
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_8021ED8
	ldr r0, _08051398 @ =0x0000023D
	adds r4, r4, r0
	movs r0, #0x07
	strb r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08051394: .4byte 0x0000020F
_08051398: .4byte 0x0000023D
	thumb_func_start sub_805139C
sub_805139C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	bl init_fobj_803FEB8
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, _0805141C @ =0x08CDC108
	str r0, [r1, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r6, #0x41
	negs r6, r6
	ands r0, r6
	movs r1, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08051420 @ =0x0000020D
	adds r5, r4, r0
	ldrb r1, [r5, #0x00]
	movs r3, #0x02
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	subs r1, #0x06
	ands r0, r1
	subs r1, #0x08
	ands r0, r1
	ands r0, r6
	strb r0, [r5, #0x00]
	ldr r0, [r2, #0x00]
	ldr r1, _08051424 @ =0xFFFC7FFF
	ands r0, r1
	str r0, [r2, #0x00]
	ldr r0, _08051428 @ =0x0000020E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0805142C @ =0x0000020F
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	ands r3, r0
	strb r3, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	ldr r1, _08051430 @ =0xFFFE1FFF
	ands r0, r1
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0805141C: .4byte 0x08CDC108
_08051420: .4byte 0x0000020D
_08051424: .4byte 0xFFFC7FFF
_08051428: .4byte 0x0000020E
_0805142C: .4byte 0x0000020F
_08051430: .4byte 0xFFFE1FFF
	thumb_func_start sub_8051434
sub_8051434:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, _08051480 @ =0x0000020F
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0805147A
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r1, r2, r3
	ldr r3, [r1, #0x00]
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _08051456
	adds r0, #0xFF
_08051456:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	ldr r3, [r1, #0x00]
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08051464
	adds r0, #0xFF
_08051464:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x02]
	ldr r1, [r1, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0F
	lsrs r0, r0, #0x1C
	lsls r0, r0, #0x0C
	strh r0, [r1, #0x0E]
_0805147A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08051480: .4byte 0x0000020F
	thumb_func_start sub_8051484
sub_8051484:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80403C4
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x1F]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	thumb_func_start nullsub_20
nullsub_20: @ 080514B0
	bx lr
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	thumb_func_start nullsub_19
nullsub_19: @ 080514B8
	bx lr
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
