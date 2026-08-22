	.syntax unified
	.text

	thumb_func_start sub_80EE1A4
sub_80EE1A4:
	push {lr}
	adds r2, r1, #0x0
	ldm r3!, {r0}
	cmp r0, #0x00
	beq _080EE1B6
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r2, [r0, #0x00]
_080EE1B6:
	ldm r3!, {r0}
	cmp r0, #0x07
	bhi _080EE266
	lsls r0, r0, #0x02
	ldr r1, _080EE1C8 @ =lbl_080EE1CC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080EE1C8: .4byte lbl_080EE1CC
lbl_080EE1CC:
	.4byte _080EE1EC
	.4byte _080EE1FC
	.4byte _080EE208
	.4byte _080EE210
	.4byte _080EE21C
	.4byte _080EE230
	.4byte _080EE242
	.4byte _080EE25C
_080EE1EC:
	ldr r0, [r3, #0]
	ldr r3, [pc, #8] @ (0x80ee1f8)
	adds r2, r2, r3
	strb r0, [r2, #0]
	b.n _080EE266
	movs r0, r0
	lsls r1, r6, #4
	movs r0, r0
_080EE1FC:
	movs r0, #189 @ 0xbd
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r0, [r3, #0]
	str r0, [r1, #0]
	b.n _080EE266
_080EE208:
	ldr r1, [r3, #0]
	movs r3, #190 @ 0xbe
	lsls r3, r3, #2
	b.n _080EE262
_080EE210:
	ldr r0, [r3, #0]
	movs r1, #155 @ 0x9b
	lsls r1, r1, #1
	adds r2, r2, r1
	strb r0, [r2, #0]
	b.n _080EE266
_080EE21C:
	ldr r1, [r3, #0]
	ldr r0, [pc, #12] @ (0x80ee22c)
	adds r3, r2, r0
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3, #0]
	subs r0, #15
	b.n _080EE254
	lsls r7, r6, #4
	movs r0, r0
_080EE230:
	ldr r1, [r3, #0]
	movs r0, #152 @ 0x98
	lsls r0, r0, #1
	adds r3, r2, r0
	movs r0, #3
	ands r1, r0
	ldrb r2, [r3, #0]
	subs r0, #7
	b.n _080EE254
_080EE242:
	ldr r1, [r3, #0]
	movs r0, #152 @ 0x98
	lsls r0, r0, #1
	adds r3, r2, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #0]
	subs r0, #6
_080EE254:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	b.n _080EE266
_080EE25C:
	ldr r1, [r3, #0]
	movs r3, #154 @ 0x9a
	lsls r3, r3, #1
_080EE262:
	adds r0, r2, r3
	strh r1, [r0, #0]
_080EE266:
	movs r0, #0x01
	pop {r1}
	bx r1
