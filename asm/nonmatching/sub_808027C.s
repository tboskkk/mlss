	.syntax unified
	.text

	thumb_func_start sub_808027C
sub_808027C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldr r0, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0808028E
	adds r1, #0xFF
_0808028E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	bge _08080298
	adds r2, #0xFF
_08080298:
	asrs r2, r2, #0x08
	movs r6, #0x00
	str r6, [sp, #0x000]
	movs r3, #0x0E
	bl sub_807F7BC
	ldr r0, _080802C0 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	ble _080802C4
	subs r0, r1, #0x1
	strh r0, [r4, #0x16]
	b _080802CE
_080802C0: .4byte 0x03000FD8
_080802C4:
	strh r6, [r4, #0x12]
	movs r0, #0x16
	strh r0, [r4, #0x16]
	ldr r0, _080802D8 @ =0x0807D0CD
	str r0, [r5, #0x04]
_080802CE:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080802D8: .4byte sub_807D0CC
