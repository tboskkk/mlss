	.syntax unified
	.text

	thumb_func_start sub_80415A0
sub_80415A0:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r1, _08041684 @ =0x083A069C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1A
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08041690
	ldrh r1, [r2, #0x16]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	adds r4, r4, r0
	ldrb r0, [r4, #0x00]
	lsrs r0, r0, #0x03
	movs r2, #0x3F
	lsls r0, r0, #0x09
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r6, _08041688 @ =0x00000272
	adds r1, r5, r6
	strh r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x03
	ldrb r1, [r4, #0x01]
	lsrs r1, r1, #0x05
	orrs r0, r1
	ands r0, r2
	adds r0, #0x01
	lsls r0, r0, #0x08
	adds r3, #0x74
	adds r1, r5, r3
	strh r0, [r1, #0x00]
	ldrb r0, [r4, #0x01]
	lsls r0, r0, #0x01
	ldrb r1, [r4, #0x02]
	lsrs r1, r1, #0x07
	orrs r0, r1
	ands r0, r2
	adds r0, #0x01
	lsls r0, r0, #0x08
	adds r6, #0x04
	adds r1, r5, r6
	strh r0, [r1, #0x00]
	ldrb r0, [r4, #0x02]
	lsrs r0, r0, #0x02
	lsls r0, r0, #0x01
	ands r0, r2
	adds r0, #0x02
	lsls r0, r0, #0x08
	adds r3, #0x04
	adds r1, r5, r3
	strh r0, [r1, #0x00]
	ldrb r0, [r4, #0x02]
	lsls r0, r0, #0x04
	ldrb r1, [r4, #0x03]
	lsrs r1, r1, #0x04
	orrs r0, r1
	ands r0, r2
	adds r0, #0x01
	lsls r0, r0, #0x08
	adds r6, #0x04
	adds r1, r5, r6
	strh r0, [r1, #0x00]
	ldrb r0, [r4, #0x03]
	lsls r0, r0, #0x02
	ldrb r1, [r4, #0x04]
	lsrs r1, r1, #0x06
	orrs r0, r1
	ands r0, r2
	adds r0, #0x01
	lsls r0, r0, #0x08
	adds r3, #0x04
	adds r1, r5, r3
	strh r0, [r1, #0x00]
	ldrb r0, [r4, #0x04]
	ands r2, r0
	lsls r2, r2, #0x08
	subs r6, #0x0A
	adds r3, r5, r6
	strh r2, [r3, #0x00]
	ldrb r0, [r4, #0x05]
	lsrs r0, r0, #0x03
	movs r2, #0x3F
	lsls r0, r0, #0x01
	adds r0, #0x02
	adds r6, #0x12
	adds r1, r5, r6
	strb r0, [r1, #0x00]
	ldrb r1, [r4, #0x05]
	lsls r1, r1, #0x03
	ldrb r0, [r4, #0x06]
	lsrs r0, r0, #0x05
	orrs r1, r0
	ands r1, r2
	adds r1, #0x01
	ldr r2, _0804168C @ =0x00000283
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080416DA
	movs r0, #0xC0
	orrs r0, r1
	strh r0, [r3, #0x00]
	b _080416DA
_08041684: .4byte 0x083A069C
_08041688: .4byte 0x00000272
_0804168C: .4byte 0x00000283
_08041690:
	ldr r3, _08041720 @ =0x00000272
	adds r0, r5, r3
	movs r3, #0x80
	lsls r3, r3, #0x05
	strh r3, [r0, #0x00]
	movs r6, #0x9D
	lsls r6, r6, #0x02
	adds r0, r5, r6
	movs r2, #0x80
	lsls r2, r2, #0x06
	strh r2, [r0, #0x00]
	ldr r1, _08041724 @ =0x00000276
	adds r0, r5, r1
	movs r1, #0x80
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r6, #0x04
	adds r0, r5, r6
	strh r3, [r0, #0x00]
	ldr r3, _08041728 @ =0x0000027A
	adds r0, r5, r3
	strh r2, [r0, #0x00]
	adds r6, #0x04
	adds r0, r5, r6
	strh r1, [r0, #0x00]
	movs r1, #0x9C
	lsls r1, r1, #0x02
	adds r0, r5, r1
	strh r4, [r0, #0x00]
	ldr r2, _0804172C @ =0x00000282
	adds r1, r5, r2
	movs r0, #0x10
	strb r0, [r1, #0x00]
	adds r3, #0x09
	adds r1, r5, r3
	movs r0, #0x20
	strb r0, [r1, #0x00]
_080416DA:
	movs r6, #0x9E
	lsls r6, r6, #0x02
	adds r4, r5, r6
	ldrh r0, [r4, #0x00]
	ldr r1, _08041730 @ =0x0000027E
	adds r6, r5, r1
	strh r0, [r6, #0x00]
	movs r3, #0x9F
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldrh r0, [r2, #0x00]
	adds r1, #0x02
	adds r3, r5, r1
	strh r0, [r3, #0x00]
	subs r1, #0x72
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	bne _08041718
	ldr r1, _08041734 @ =0xFFFFF800
	adds r0, r1, #0x0
	ldrh r4, [r4, #0x00]
	adds r0, r0, r4
	strh r0, [r6, #0x00]
	ldr r6, _08041738 @ =0xFFFFFE00
	adds r0, r6, #0x0
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	strh r0, [r3, #0x00]
_08041718:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08041720: .4byte 0x00000272
_08041724: .4byte 0x00000276
_08041728: .4byte 0x0000027A
_0804172C: .4byte 0x00000282
_08041730: .4byte 0x0000027E
_08041734: .4byte 0xFFFFF800
_08041738: .4byte 0xFFFFFE00
