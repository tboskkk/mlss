	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_804173C
sub_804173C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	mov r8, r1
	ldr r0, [sp, #0x018]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r12, r2
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _08041784 @ =0x083A069C
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r5, [r0, #0x00]
	ldrb r0, [r5, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1A
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _0804184E
	ldrh r1, [r5, #0x16]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	adds r3, r3, r0
	mov r0, r8
	cmp r0, #0x00
	bne _080417E8
	cmp r2, #0x00
	beq _08041788
	lsls r1, r2, #0x08
	b _08041794
_08041784: .4byte 0x083A069C
_08041788:
	ldrb r0, [r3, #0x00]
	lsrs r0, r0, #0x03
	lsls r0, r0, #0x09
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r1, r0, r2
_08041794:
	ldr r2, _080417A4 @ =0x00000272
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	cmp r4, #0x00
	beq _080417A8
	lsls r1, r4, #0x08
	b _080417BA
	.byte 0x00, 0x00
_080417A4: .4byte 0x00000272
_080417A8:
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x03
	ldrb r1, [r3, #0x01]
	lsrs r1, r1, #0x05
	orrs r0, r1
	movs r1, #0x3F
	ands r0, r1
	adds r0, #0x01
	lsls r1, r0, #0x08
_080417BA:
	movs r2, #0x9D
	lsls r2, r2, #0x02
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	cmp r7, #0x00
	beq _080417CA
	lsls r1, r7, #0x08
	b _080417DC
_080417CA:
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x01
	ldrb r1, [r3, #0x02]
	lsrs r1, r1, #0x07
	orrs r0, r1
	movs r1, #0x3F
	ands r0, r1
	adds r0, #0x01
	lsls r1, r0, #0x08
_080417DC:
	ldr r3, _080417E4 @ =0x00000276
	adds r0, r6, r3
	b _080418DC
	.byte 0x00, 0x00
_080417E4: .4byte 0x00000276
_080417E8:
	cmp r2, #0x00
	beq _080417F0
	lsls r1, r2, #0x08
	b _080417FE
_080417F0:
	ldrb r0, [r3, #0x02]
	lsrs r0, r0, #0x02
	lsls r0, r0, #0x01
	movs r1, #0x3F
	ands r0, r1
	adds r0, #0x02
	lsls r1, r0, #0x08
_080417FE:
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	cmp r4, #0x00
	beq _0804180E
	lsls r1, r4, #0x08
	b _08041820
_0804180E:
	ldrb r0, [r3, #0x02]
	lsls r0, r0, #0x04
	ldrb r1, [r3, #0x03]
	lsrs r1, r1, #0x04
	orrs r0, r1
	movs r1, #0x3F
	ands r0, r1
	adds r0, #0x01
	lsls r1, r0, #0x08
_08041820:
	ldr r2, _08041830 @ =0x0000027A
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	cmp r7, #0x00
	beq _08041834
	lsls r1, r7, #0x08
	b _08041846
	.byte 0x00, 0x00
_08041830: .4byte 0x0000027A
_08041834:
	ldrb r0, [r3, #0x03]
	lsls r0, r0, #0x02
	ldrb r1, [r3, #0x04]
	lsrs r1, r1, #0x06
	orrs r0, r1
	movs r1, #0x3F
	ands r0, r1
	adds r0, #0x01
	lsls r1, r0, #0x08
_08041846:
	movs r3, #0x9F
	lsls r3, r3, #0x02
	adds r0, r6, r3
	b _080418DC
_0804184E:
	mov r0, r8
	cmp r0, #0x00
	bne _08041898
	cmp r2, #0x00
	beq _0804185C
	lsls r1, r2, #0x08
	b _08041862
_0804185C:
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
_08041862:
	ldr r3, _08041870 @ =0x00000272
	adds r0, r6, r3
	strh r1, [r0, #0x00]
	cmp r4, #0x00
	beq _08041874
	lsls r1, r4, #0x08
	b _0804187A
_08041870: .4byte 0x00000272
_08041874:
	movs r0, #0x80
	lsls r0, r0, #0x06
	adds r1, r0, #0x0
_0804187A:
	movs r2, #0x9D
	lsls r2, r2, #0x02
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	cmp r7, #0x00
	beq _0804188A
	lsls r1, r7, #0x08
	b _08041890
_0804188A:
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r1, r3, #0x0
_08041890:
	ldr r2, _08041894 @ =0x00000276
	b _080418DA
_08041894: .4byte 0x00000276
_08041898:
	mov r3, r12
	cmp r3, #0x00
	beq _080418A2
	lsls r1, r3, #0x08
	b _080418A8
_080418A2:
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r1, r0, #0x0
_080418A8:
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	cmp r4, #0x00
	beq _080418B8
	lsls r1, r4, #0x08
	b _080418BE
_080418B8:
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r1, r3, #0x0
_080418BE:
	ldr r2, _080418CC @ =0x0000027A
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	cmp r7, #0x00
	beq _080418D0
	lsls r1, r7, #0x08
	b _080418D6
_080418CC: .4byte 0x0000027A
_080418D0:
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r1, r3, #0x0
_080418D6:
	movs r2, #0x9F
	lsls r2, r2, #0x02
_080418DA:
	adds r0, r6, r2
_080418DC:
	strh r1, [r0, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80418E8
sub_80418E8:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	movs r5, #0x83
	lsls r5, r5, #0x02
	adds r0, r3, r5
	ldrb r1, [r0, #0x00]
	movs r6, #0x01
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08041902
	b _08041A26
_08041902:
	ldr r1, _080419BC @ =0x00000216
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08041912
	b _08041A26
_08041912:
	adds r0, r3, #0x0
	adds r0, #0x29
	movs r2, #0x00
	ldsb r2, [r0, r2]
	movs r1, #0x01
	negs r1, r1
	adds r7, r0, #0x0
	cmp r2, r1
	bne _08041926
	b _08041A26
_08041926:
	ldr r2, _080419C0 @ =0x0000020D
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08041A26
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bgt _08041A26
	ldr r2, [r3, #0x14]
	ldr r0, [r3, #0x18]
	adds r2, r2, r0
	ldr r0, [r3, #0x3C]
	ldr r1, [r3, #0x40]
	adds r0, r0, r1
	cmp r2, r0
	bgt _08041A26
	movs r2, #0x96
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bgt _08041A26
	movs r0, #0x00
	ldsb r0, [r7, r0]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x00]
	adds r0, r4, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08041A26
	ldr r0, [r4, #0x0C]
	ldr r1, [r4, #0x34]
	subs r0, r0, r1
	ldr r2, [r3, #0x0C]
	adds r2, r2, r0
	str r2, [r3, #0x0C]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x38]
	subs r1, r1, r0
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r3, #0x14]
	movs r6, #0x9D
	lsls r6, r6, #0x02
	adds r0, r4, r6
	ldrh r1, [r0, #0x00]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	ldr r0, _080419C4 @ =0x00000272
	adds r1, r3, r0
	ldrh r6, [r1, #0x00]
	adds r0, r4, r0
	ldrh r5, [r0, #0x00]
	lsrs r0, r6, #0x01
	subs r2, r2, r0
	lsrs r1, r5, #0x01
	ldr r0, [r4, #0x0C]
	subs r1, r0, r1
	cmp r1, r2
	bge _080419C8
	adds r0, r1, r5
	subs r0, r0, r2
	b _080419CC
	.byte 0x00, 0x00
_080419BC: .4byte 0x00000216
_080419C0: .4byte 0x0000020D
_080419C4: .4byte 0x00000272
_080419C8:
	adds r0, r2, r6
	subs r0, r0, r1
_080419CC:
	cmp r0, #0x00
	ble _08041A26
	ldr r0, _08041A00 @ =0x00000276
	adds r1, r3, r0
	ldrh r1, [r1, #0x00]
	mov r12, r1
	adds r0, r4, r0
	ldrh r5, [r0, #0x00]
	movs r1, #0x9C
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r6, #0x00
	ldsh r2, [r0, r6]
	ldr r0, [r3, #0x10]
	adds r2, r0, r2
	adds r1, r4, r1
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r4, #0x10]
	adds r1, r0, r1
	cmp r1, r2
	ble _08041A04
	subs r0, r1, r5
	subs r0, r2, r0
	b _08041A0A
	.byte 0x00, 0x00
_08041A00: .4byte 0x00000276
_08041A04:
	mov r4, r12
	subs r0, r2, r4
	subs r0, r1, r0
_08041A0A:
	cmp r0, #0x00
	ble _08041A26
	movs r1, #0x01
	ldsb r1, [r3, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08041A26
	ldrb r0, [r7, #0x00]
	strb r0, [r3, #0x01]
	movs r6, #0x97
	lsls r6, r6, #0x02
	adds r0, r3, r6
	str r1, [r0, #0x00]
_08041A26:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
