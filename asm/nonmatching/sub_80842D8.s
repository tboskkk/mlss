	.syntax unified
	.text

	thumb_func_start sub_80842D8
sub_80842D8:
	push {r4, lr}
	adds r2, r0, #0x0
	cmp r2, #0x00
	beq _08084330
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r2, #0x68]
	ldr r3, [r2, #0x64]
	ldr r4, _08084304 @ =0x03000D74
	cmp r1, r3
	bne _080842FA
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x30]
	cmp r2, r0
	bne _08084330
_080842FA:
	cmp r3, #0x00
	beq _08084308
	str r1, [r3, #0x68]
	b _0808430C
	.byte 0x00, 0x00
_08084304: .4byte 0x03000D74
_08084308:
	ldr r0, [r4, #0x00]
	str r1, [r0, #0x30]
_0808430C:
	cmp r1, #0x00
	beq _08084314
	str r3, [r1, #0x64]
	b _08084318
_08084314:
	ldr r0, [r4, #0x00]
	str r3, [r0, #0x34]
_08084318:
	ldrb r1, [r2, #0x11]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	movs r0, #0x00
	str r0, [r2, #0x64]
	str r0, [r2, #0x68]
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x01]
	subs r0, #0x01
	strb r0, [r1, #0x01]
_08084330:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
