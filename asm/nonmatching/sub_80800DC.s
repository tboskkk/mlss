	.syntax unified
	.text

	thumb_func_start sub_80800DC
sub_80800DC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r4, [r6, #0x08]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808015A
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r5, #0x01
	negs r5, r5
	cmp r0, r5
	bne _0808011C
	ldr r2, _08080118 @ =0x00002039
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xA5
	lsls r0, r0, #0x01
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	b _08080132
	.byte 0x00, 0x00
_08080118: .4byte 0x00002039
_0808011C:
	ldr r2, _08080160 @ =0x00002068
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xA7
	lsls r0, r0, #0x01
	adds r1, r5, #0x0
	bl play_sfx_80195B4
_08080132:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0x0C
	bl sub_80F7538
	ldr r0, [r4, #0x28]
	ldr r1, _08080164 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	str r0, [r6, #0x04]
_0808015A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08080160: .4byte 0x00002068
_08080164: .4byte 0x00000111
