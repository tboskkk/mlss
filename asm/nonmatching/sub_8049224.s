	.syntax unified
	.text

	thumb_func_start sub_8049224
sub_8049224:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x04
	ldsh r0, [r5, r1]
	cmp r0, #0x04
	beq _0804927C
	adds r0, r5, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0804926C
	ldr r2, _08049264 @ =0x0000035B
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _08049268 @ =0x0000103B
	cmp r0, #0x00
	beq _0804926E
	adds r1, #0x01
	b _0804926E
	.byte 0x00, 0x00
_08049264: .4byte 0x0000035B
_08049268: .4byte 0x0000103B
_0804926C:
	ldr r1, _08049278 @ =0x00001052
_0804926E:
	adds r0, r5, #0x0
	bl sub_8049000
	b _0804929C
	.byte 0x00, 0x00
_08049278: .4byte 0x00001052
_0804927C:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0804929C
	movs r3, #0x01
	negs r3, r3
	adds r0, r5, #0x0
	movs r1, #0x01
	adds r2, r3, #0x0
	bl sub_8040804
_0804929C:
	movs r1, #0x99
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r3, _080492D4 @ =0x00000266
	adds r0, r5, r3
	movs r3, #0x00
	ldsh r2, [r0, r3]
	movs r4, #0x01
	negs r4, r4
	adds r0, r5, #0x0
	adds r3, r4, #0x0
	bl sub_80401F0
	ldr r0, _080492D8 @ =0x00000355
	adds r1, r5, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	movs r0, #0x04
	strh r0, [r5, #0x04]
	movs r0, #0xD7
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	pop {r4, r5}
	pop {r0}
	bx r0
_080492D4: .4byte 0x00000266
_080492D8: .4byte 0x00000355
