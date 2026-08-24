	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08063ACC
	ldr r0, [r4, #0x28]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, _08063AB8 @ =0x08087541
	str r0, [r1, #0x68]
	ldr r0, [r4, #0x6C]
	str r0, [r1, #0x6C]
	movs r0, #0x00
	str r0, [r4, #0x6C]
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08063AC0
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063ABC @ =0x0806386D
	str r0, [r4, #0x4C]
	b _08063ACC
	.byte 0x00, 0x00
_08063AB8: .4byte sub_8087540
_08063ABC: .4byte sub_806386C
_08063AC0:
	adds r0, r1, #0x0
	bl sub_8086700
	adds r0, r4, #0x0
	bl sub_807C298
_08063ACC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
