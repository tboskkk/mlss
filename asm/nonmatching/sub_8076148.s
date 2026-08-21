	.syntax unified
	.text

	thumb_func_start sub_8076148
sub_8076148:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080761A0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08076178
	cmp r0, #0x01
	beq _0807617E
	adds r0, r4, #0x0
	movs r1, #0x0B
	b _08076182
_08076178:
	adds r0, r4, #0x0
	movs r1, #0x03
	b _08076182
_0807617E:
	adds r0, r4, #0x0
	movs r1, #0x07
_08076182:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x28
	movs r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, _080761A8 @ =0x08074745
	str r0, [r4, #0x4C]
_080761A0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080761A8: .4byte sub_8074744
