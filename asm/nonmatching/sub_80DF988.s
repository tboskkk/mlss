	.syntax unified
	.text

	thumb_func_start sub_80DF988
sub_80DF988:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	movs r0, #0x12
	ldsh r1, [r2, r0]
	ldr r0, [r2, #0x08]
	subs r0, r0, r1
	str r0, [r2, #0x08]
	ldrh r0, [r2, #0x18]
	ldrh r1, [r2, #0x10]
	adds r0, r0, r1
	strh r0, [r2, #0x10]
	ldrh r0, [r3, #0x06]
	ldrh r4, [r2, #0x14]
	adds r0, r0, r4
	strh r0, [r2, #0x14]
	movs r0, #0x12
	ldsh r1, [r2, r0]
	movs r4, #0x08
	ldsh r0, [r3, r4]
	muls r0, r1
	cmp r0, #0x00
	bge _080DF9B8
	adds r0, #0xFF
_080DF9B8:
	asrs r0, r0, #0x08
	strh r0, [r2, #0x12]
	movs r0, #0x18
	ldsh r1, [r2, r0]
	movs r4, #0x0A
	ldsh r0, [r3, r4]
	muls r0, r1
	cmp r0, #0x00
	bge _080DF9CC
	adds r0, #0xFF
_080DF9CC:
	asrs r0, r0, #0x08
	strh r0, [r2, #0x18]
	movs r0, #0x10
	ldsh r3, [r2, r0]
	ldr r0, _080DFA1C @ =0x08198584
	ldrb r1, [r2, #0x14]
	lsls r1, r1, #0x01
	adds r0, r1, r0
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _080DF9E6
	adds r0, #0x3F
_080DF9E6:
	asrs r0, r0, #0x06
	muls r0, r3
	cmp r0, #0x00
	bge _080DF9F0
	adds r0, #0xFF
_080DF9F0:
	asrs r0, r0, #0x08
	str r0, [r2, #0x04]
	ldr r0, _080DFA20 @ =0x08198504
	adds r0, r1, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080DFA02
	adds r0, #0x3F
_080DFA02:
	asrs r0, r0, #0x06
	muls r0, r3
	cmp r0, #0x00
	bge _080DFA0C
	adds r0, #0xFF
_080DFA0C:
	asrs r0, r0, #0x08
	str r0, [r2, #0x0C]
	ldrh r0, [r2, #0x16]
	subs r0, #0x01
	strh r0, [r2, #0x16]
	pop {r4}
	pop {r0}
	bx r0
_080DFA1C: .4byte 0x08198584
_080DFA20: .4byte 0x08198504
