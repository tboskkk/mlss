	.syntax unified
	.text

	thumb_func_start sub_8104D14
sub_8104D14:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, _08104D90 @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _08104DAC
	movs r1, #0x12
	ldsh r0, [r5, r1]
	ldr r2, _08104D94 @ =0x03000FF4
	lsls r1, r0, #0x04
	subs r1, r1, r0
	lsls r1, r1, #0x02
	ldr r4, [r2, #0x00]
	adds r4, r4, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_81230D0
	ldr r6, [r5, #0x0C]
	adds r4, #0x30
	ldrb r0, [r4, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xF5
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_8102CA4
	ldr r1, [r5, #0x04]
	ldr r0, _08104D98 @ =0x081054D5
	cmp r1, r0
	beq _08104DAC
	ldr r0, [r5, #0x0C]
	cmp r0, r6
	beq _08104DA8
	ldr r4, _08104D9C @ =0x03000FD8
	ldr r0, [r4, #0x00]
	adds r0, #0x4C
	ldr r1, _08104DA0 @ =0x08104F11
	bl sub_807FFD8
	str r6, [r0, #0x0C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x01
	bl sub_807F6EC
	ldr r0, [r4, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	movs r1, #0x20
	strh r1, [r2, #0x34]
	ldr r0, [r0, #0x00]
	adds r0, #0x4A
	movs r1, #0x0C
	strh r1, [r0, #0x00]
	ldr r0, _08104DA4 @ =0x08106BB1
	b _08104DAA
_08104D90: .4byte 0x0300034C
_08104D94: .4byte 0x03000FF4
_08104D98: .4byte sub_81054D4
_08104D9C: .4byte 0x03000FD8
_08104DA0: .4byte sub_8104F10
_08104DA4: .4byte sub_8106BB0
_08104DA8:
	ldr r0, _08104DB4 @ =0x08102F55
_08104DAA:
	str r0, [r5, #0x04]
_08104DAC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08104DB4: .4byte sub_8102F54
