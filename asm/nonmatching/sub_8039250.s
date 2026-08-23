	.syntax unified
	.text

	thumb_func_start sub_8039250
sub_8039250:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	mov r8, r0
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x04]
	adds r0, r1, #0x0
	subs r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x03
	bls _0803927C
	adds r0, r1, #0x0
	subs r0, #0x88
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x03
	bhi _08039300
_0803927C:
	movs r7, #0x80
	lsls r7, r7, #0x02
	add r7, r8
	ldr r1, [r7, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	ldr r2, _08039320 @ =0x0839F6CE
	cmp r0, #0x00
	bne _08039292
	ldr r2, _08039324 @ =0x0839F730
_08039292:
	movs r3, #0x24
	cmp r0, #0x00
	bne _0803929A
	movs r3, #0x20
_0803929A:
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r1, r4
	ldr r1, [r0, #0x00]
	ldr r6, _08039328 @ =0x0000026E
	add r6, r8
	movs r5, #0x00
	ldsh r0, [r6, r5]
	lsls r0, r0, #0x01
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x04]
	ldr r0, [r7, #0x00]
	adds r0, r0, r4
	ldr r5, [r0, #0x00]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	lsls r0, r0, #0x01
	adds r0, r0, r2
	ldrb r0, [r0, #0x01]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	adds r1, r3, #0x0
	bl __divsi3
	strh r0, [r5, #0x06]
	ldr r1, [r7, #0x00]
	adds r4, r1, r4
	ldr r0, [r4, #0x00]
	movs r2, #0x06
	ldsh r0, [r0, r2]
	movs r2, #0x00
	cmp r0, #0xFF
	bgt _080392EC
	movs r3, #0x01
	negs r3, r3
	adds r2, r3, #0x0
_080392EC:
	ldr r5, _0803932C @ =0x0000023B
	adds r0, r1, r5
	strb r2, [r0, #0x00]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x30
	bge _08039300
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	strh r0, [r6, #0x00]
_08039300:
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x04]
	subs r0, #0x80
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _08039316
	b _080399D6
_08039316:
	lsls r0, r0, #0x02
	ldr r1, _08039330 @ =lbl_08039334
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08039320: .4byte 0x0839F6CE
_08039324: .4byte 0x0839F730
_08039328: .4byte 0x0000026E
_0803932C: .4byte 0x0000023B
_08039330: .4byte lbl_08039334
lbl_08039334:
	.4byte _08039374
	.4byte _08039418
	.4byte _0803945C
	.4byte _080394C8
	.4byte _08039684
	.4byte _080396F8
	.4byte _08039780
	.4byte _08039890
	.4byte _08039374
	.4byte _08039418
	.4byte _0803945C
	.4byte _080394C8
	.4byte _08039684
	.4byte _080396F8
	.4byte _08039780
	.4byte _08039890
_08039374:
	movs r4, #129 @ 0x81
	lsls r4, r4, #2
	add r4, r8
	ldr r0, [r4, #0]
	bl sub_80402C4
	ldr r0, [pc, #144] @ (0x8039414)
	add r0, r8
	ldrb r1, [r0, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	bne.n _080393AC
	ldr r3, [r4, #0]
	ldr r4, [r3, #20]
	ldr r1, [r3, #24]
	adds r1, r4, r1
	movs r0, #128 @ 0x80
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0, #0]
	ldr r2, [r0, #20]
	ldr r0, [r0, #24]
	adds r0, r2, r0
	cmp r1, r0
	bge.n _080393AC
	subs r0, r0, r4
	str r0, [r3, #24]
_080393AC:
	movs r3, #129 @ 0x81
	lsls r3, r3, #2
	add r3, r8
	ldr r0, [r3, #0]
	movs r2, #165 @ 0xa5
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	ldrb r1, [r0, #18]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne.n _080393C8
	b.n _080399D6
_080393C8:
	movs r0, #128 @ 0x80
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #0]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	ldr r1, [r3, #0]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	movs r1, #156 @ 0x9c
	lsls r1, r1, #2
	add r1, r8
	movs r0, #16
	strh r0, [r1, #0]
	ldr r1, [r3, #0]
	movs r5, #133 @ 0x85
	lsls r5, r5, #2
	adds r1, r1, r5
	ldrb r2, [r1, #0]
	subs r0, #24
	ands r0, r2
	strb r0, [r1, #0]
	ldr r0, [r3, #0]
	movs r1, #165 @ 0xa5
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, [r0, #0]
	ldrb r1, [r2, #18]
	movs r0, #7
	negs r0, r0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #18]
	b.n _080399D6
	movs r0, r0
	lsls r1, r1, #8
	movs r0, r0
_08039418:
	movs r1, #156 @ 0x9c
	lsls r1, r1, #2
	add r1, r8
	ldrh r0, [r1, #0]
	subs r0, #1
	strh r0, [r1, #0]
	lsls r0, r0, #16
	cmp r0, #0
	beq.n _0803942C
	b.n _080399D6
_0803942C:
	movs r0, #128 @ 0x80
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #0]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	movs r2, #129 @ 0x81
	lsls r2, r2, #2
	add r2, r8
	ldr r1, [r2, #0]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	ldr r1, [r2, #0]
	movs r2, #133 @ 0x85
	lsls r2, r2, #2
	adds r1, r1, r2
	ldrb r2, [r1, #0]
	movs r0, #8
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0]
	b.n _080399D6
_0803945C:
	movs r3, #129 @ 0x81
	lsls r3, r3, #2
	add r3, r8
	ldr r1, [r3, #0]
	ldr r0, [r1, #24]
	movs r2, #128 @ 0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1, #24]
	movs r1, #156 @ 0x9c
	lsls r1, r1, #2
	add r1, r8
	ldrh r0, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	lsls r0, r0, #16
	ldr r1, [pc, #68] @ (0x80394c4)
	cmp r0, r1
	bgt.n _08039484
	b.n _080399D6
_08039484:
	movs r0, #128 @ 0x80
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #0]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	ldr r1, [r3, #0]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	ldr r2, [r3, #0]
	movs r5, #133 @ 0x85
	lsls r5, r5, #2
	adds r2, r2, r5
	ldrb r1, [r2, #0]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0]
	ldr r0, [r3, #0]
	movs r1, #165 @ 0xa5
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	adds r0, #32
	movs r1, #240 @ 0xf0
	strb r1, [r0, #0]
	b.n _080399D6
	movs r0, r0
	movs r0, r0
	asrs r7, r7, #7
_080394C8:
	movs r4, #129 @ 0x81
	lsls r4, r4, #2
	add r4, r8
	ldr r1, [r4, #0]
	movs r2, #133 @ 0x85
	lsls r2, r2, #2
	adds r3, r1, r2
	ldrb r2, [r3, #0]
	movs r0, #7
	ands r0, r2
	cmp r0, #0
	bne.n _08039528
	adds r0, r1, #0
	bl sub_80402C4
	ldr r0, [pc, #60] @ (0x8039524)
	add r0, r8
	ldrb r1, [r0, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	bne.n _08039588
	ldr r3, [r4, #0]
	ldr r5, [r3, #20]
	ldr r1, [r3, #24]
	adds r1, r5, r1
	movs r0, #128 @ 0x80
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0, #0]
	ldr r2, [r0, #20]
	ldr r0, [r0, #24]
	adds r0, r2, r0
	cmp r1, r0
	bge.n _08039588
	subs r0, r0, r5
	str r0, [r3, #24]
	ldr r0, [r4, #0]
	movs r3, #151 @ 0x97
	lsls r3, r3, #2
	adds r0, r0, r3
	movs r1, #1
	negs r1, r1
	str r1, [r0, #0]
	b.n _08039588
	movs r0, r0
	lsls r1, r1, #8
	movs r0, r0
_08039528:
	movs r5, #165 @ 0xa5
	lsls r5, r5, #2
	adds r0, r1, r5
	ldr r0, [r0, #0]
	adds r0, #35 @ 0x23
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne.n _08039588
	movs r0, #8
	negs r0, r0
	ands r0, r2
	strb r0, [r3, #0]
	ldr r2, [r4, #0]
	adds r0, r2, #0
	adds r0, #84 @ 0x54
	ldrb r0, [r0, #0]
	ldr r1, [pc, #252] @ (0x8039648)
	cmp r0, #0
	bne.n _08039550
	subs r1, #1
_08039550:
	adds r0, r2, #0
	bl sub_8049000
	ldr r1, [r4, #0]
	ldr r0, [pc, #240] @ (0x803964c)
	adds r1, r1, r0
	ldrb r2, [r1, #0]
	movs r0, #65 @ 0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0]
	ldr r0, [r4, #0]
	movs r3, #1
	negs r3, r3
	movs r1, #0
	adds r2, r3, #0
	bl sub_80401F0
	ldr r1, [r4, #0]
	movs r2, #147 @ 0x93
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r0, #128 @ 0x80
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0, #0]
	ldr r0, [r0, #20]
	str r0, [r1, #0]
_08039588:
	ldr r0, [pc, #196] @ (0x8039650)
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #48 @ 0x30
	beq.n _08039596
	b.n _080399D6
_08039596:
	movs r6, #129 @ 0x81
	lsls r6, r6, #2
	add r6, r8
	ldr r0, [r6, #0]
	movs r5, #151 @ 0x97
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r1, [r0, #0]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq.n _080395B0
	b.n _080399D6
_080395B0:
	subs r5, #92 @ 0x5c
	add r5, r8
	ldr r1, [r5, #0]
	ldrh r0, [r1, #4]
	adds r0, #1
	movs r3, #0
	strh r0, [r1, #4]
	ldr r1, [r6, #0]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	ldr r1, [r6, #0]
	ldr r0, [pc, #128] @ (0x803964c)
	adds r1, r1, r0
	ldrb r2, [r1, #0]
	movs r0, #65 @ 0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0]
	movs r2, #130 @ 0x82
	lsls r2, r2, #2
	add r2, r8
	ldrb r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0]
	ldr r0, [r5, #0]
	movs r2, #165 @ 0xa5
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	movs r1, #128 @ 0x80
	lsls r1, r1, #1
	strh r1, [r0, #4]
	ldr r0, [r5, #0]
	adds r0, r0, r2
	ldr r0, [r0, #0]
	strh r1, [r0, #6]
	ldr r0, [r5, #0]
	ldr r1, [pc, #84] @ (0x8039654)
	adds r0, r0, r1
	strb r3, [r0, #0]
	ldr r2, [r6, #0]
	movs r4, #133 @ 0x85
	lsls r4, r4, #2
	adds r2, r2, r4
	ldrb r3, [r2, #0]
	movs r1, #8
	negs r1, r1
	adds r0, r1, #0
	ands r0, r3
	movs r3, #3
	orrs r0, r3
	strb r0, [r2, #0]
	ldr r0, [r5, #0]
	adds r0, r0, r4
	ldrb r2, [r0, #0]
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0]
	ldr r2, [r6, #0]
	adds r0, r2, #0
	adds r0, #84 @ 0x54
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne.n _0803965C
	ldr r1, [pc, #32] @ (0x8039658)
	adds r0, r2, #0
	bl sub_8049000
	ldr r0, [r5, #0]
	ldr r1, [pc, #8] @ (0x8039648)
	bl sub_8049000
	b.n _0803966C
	movs r0, r0
	asrs r2, r0, #32
	movs r0, r0
	lsls r2, r2, #8
	movs r0, r0
	lsls r6, r5, #9
	movs r0, r0
	lsls r3, r7, #8
	movs r0, r0
	asrs r1, r0, #32
	movs r0, r0
_0803965C:
	ldr r1, [pc, #24] @ (0x8039678)
	adds r0, r2, #0
	bl sub_8049000
	ldr r0, [r5, #0]
	ldr r1, [pc, #20] @ (0x803967c)
	bl sub_8049000
_0803966C:
	ldr r1, [pc, #16] @ (0x8039680)
	add r1, r8
	movs r0, #8
	strh r0, [r1, #0]
	b.n _080399D6
	movs r0, r0
	asrs r2, r0, #32
	movs r0, r0
	asrs r1, r0, #32
	movs r0, r0
	lsls r6, r5, #9
	movs r0, r0
_08039684:
	ldr r1, [pc, #104] @ (0x80396f0)
	add r1, r8
	ldrh r0, [r1, #0]
	subs r0, #1
	strh r0, [r1, #0]
	lsls r0, r0, #16
	cmp r0, #0
	beq.n _08039696
	b.n _080399D6
_08039696:
	movs r5, #128 @ 0x80
	lsls r5, r5, #2
	add r5, r8
	ldr r1, [r5, #0]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	movs r0, #129 @ 0x81
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #0]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	ldr r2, [r5, #0]
	adds r2, #36 @ 0x24
	ldrb r3, [r2, #0]
	lsls r1, r3, #29
	lsrs r1, r1, #29
	adds r1, #4
	movs r0, #7
	ands r1, r0
	movs r4, #8
	negs r4, r4
	adds r0, r4, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0]
	ldr r0, [r5, #0]
	ldr r1, [pc, #32] @ (0x80396f4)
	movs r3, #1
	negs r3, r3
	movs r2, #117 @ 0x75
	bl sub_80401F0
	ldr r1, [r5, #0]
	movs r2, #133 @ 0x85
	lsls r2, r2, #2
	adds r1, r1, r2
	ldrb r0, [r1, #0]
	ands r4, r0
	movs r0, #1
	orrs r4, r0
	strb r4, [r1, #0]
	b.n _080399D6
	lsls r6, r5, #9
	movs r0, r0
	lsls r2, r7, #9
	movs r0, r0
_080396F8:
	movs r4, #128 @ 0x80
	lsls r4, r4, #2
	add r4, r8
	ldr r0, [r4, #0]
	bl sub_80402C4
	ldr r0, [r4, #0]
	bl sub_80465D8
	ldr r0, [r4, #0]
	mov r1, r8
	adds r1, #40 @ 0x28
	movs r2, #0
	movs r3, #0
	bl sub_804FB64
	ldr r1, [r4, #0]
	movs r3, #151 @ 0x97
	lsls r3, r3, #2
	adds r0, r1, r3
	ldr r5, [r0, #0]
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	beq.n _0803972C
	b.n _080399D6
_0803972C:
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	movs r0, #129 @ 0x81
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #0]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	ldr r2, [r4, #0]
	adds r0, r2, #0
	adds r0, #84 @ 0x54
	ldrb r0, [r0, #0]
	ldr r1, [pc, #44] @ (0x8039778)
	cmp r0, #0
	bne.n _08039750
	subs r1, #30
_08039750:
	adds r0, r2, #0
	bl sub_8049000
	ldr r1, [pc, #36] @ (0x803977c)
	add r1, r8
	movs r0, #60 @ 0x3c
	strh r0, [r1, #0]
	ldr r0, [r4, #0]
	adds r0, #84 @ 0x54
	ldrb r0, [r0, #0]
	movs r1, #254 @ 0xfe
	cmp r0, #0
	bne.n _0803976C
	movs r1, #240 @ 0xf0
_0803976C:
	adds r0, r1, #0
	adds r1, r5, #0
	bl play_sfx_80195B4
	b.n _080399D6
	movs r0, r0
	asrs r4, r0, #2
	movs r0, r0
	lsls r6, r5, #9
	movs r0, r0
_08039780:
	ldr r1, [pc, #92] @ (0x80397e0)
	add r1, r8
	ldrh r0, [r1, #0]
	subs r0, #1
	strh r0, [r1, #0]
	lsls r0, r0, #16
	cmp r0, #0
	beq.n _08039792
	b.n _080399D6
_08039792:
	movs r6, #129 @ 0x81
	lsls r6, r6, #2
	add r6, r8
	ldr r4, [r6, #0]
	movs r7, #128 @ 0x80
	lsls r7, r7, #2
	add r7, r8
	ldr r2, [r7, #0]
	movs r5, #133 @ 0x85
	lsls r5, r5, #2
	adds r2, r2, r5
	ldrb r3, [r2, #0]
	movs r1, #8
	negs r1, r1
	adds r0, r1, #0
	ands r0, r3
	movs r3, #3
	orrs r0, r3
	strb r0, [r2, #0]
	adds r4, r4, r5
	ldrb r0, [r4, #0]
	ands r1, r0
	orrs r1, r3
	strb r1, [r4, #0]
	ldr r6, [r6, #0]
	adds r0, r6, #0
	adds r0, #84 @ 0x54
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne.n _080397EC
	ldr r1, [pc, #20] @ (0x80397e4)
	adds r0, r6, #0
	bl sub_8049000
	ldr r0, [r7, #0]
	ldr r1, [pc, #12] @ (0x80397e8)
	bl sub_8049000
	b.n _080397FC
	lsls r6, r5, #9
	movs r0, r0
	asrs r1, r0, #32
	movs r0, r0
	asrs r2, r0, #32
	movs r0, r0
_080397EC:
	ldr r1, [pc, #140] @ (0x803987c)
	adds r0, r6, #0
	bl sub_8049000
	ldr r0, [r7, #0]
	ldr r1, [pc, #136] @ (0x8039880)
	bl sub_8049000
_080397FC:
	movs r3, #129 @ 0x81
	lsls r3, r3, #2
	add r3, r8
	ldr r1, [r3, #0]
	ldr r5, [pc, #124] @ (0x8039884)
	adds r1, r1, r5
	ldrb r2, [r1, #0]
	movs r0, #65 @ 0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0]
	ldr r0, [pc, #116] @ (0x8039888)
	add r0, r8
	ldrb r1, [r0, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	bne.n _0803985E
	ldr r1, [r3, #0]
	movs r0, #128 @ 0x80
	lsls r0, r0, #2
	add r0, r8
	ldr r2, [r0, #0]
	ldr r3, [r2, #12]
	cmp r3, #0
	bge.n _08039832
	adds r3, #255 @ 0xff
_08039832:
	asrs r3, r3, #8
	ldr r0, [r2, #16]
	cmp r0, #0
	bge.n _0803983C
	adds r0, #255 @ 0xff
_0803983C:
	asrs r0, r0, #8
	str r0, [sp, #0]
	ldr r0, [r2, #20]
	cmp r0, #0
	bge.n _08039848
	adds r0, #255 @ 0xff
_08039848:
	asrs r0, r0, #8
	str r0, [sp, #4]
	ldr r2, [pc, #60] @ (0x803988c)
	adds r0, r1, r2
	ldrh r0, [r0, #0]
	str r0, [sp, #8]
	adds r0, r1, #0
	movs r1, #1
	movs r2, #0
	bl sub_8045A94
_0803985E:
	movs r0, #128 @ 0x80
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #0]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	movs r0, #129 @ 0x81
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #0]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	b.n _080399D6
	asrs r2, r0, #32
	movs r0, r0
	asrs r1, r0, #32
	movs r0, r0
	lsls r5, r1, #8
	movs r0, r0
	lsls r1, r1, #8
	movs r0, r0
	lsls r6, r7, #8
	movs r0, r0
_08039890:
	movs r5, #129 @ 0x81
	lsls r5, r5, #2
	add r5, r8
	ldr r1, [r5, #0]
	mov r0, r8
	bl sub_802DC0C
	lsls r0, r0, #24
	cmp r0, #0
	bne.n _080398BA
	ldr r1, [r5, #0]
	ldr r0, [r1, #24]
	cmp r0, #0
	beq.n _080398C6
	ldrb r1, [r1, #1]
	lsls r1, r1, #24
	asrs r1, r1, #24
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne.n _080398C6
_080398BA:
	ldr r0, [r5, #0]
	bl sub_8047B78
	lsls r0, r0, #24
	cmp r0, #0
	bne.n _080399B8
_080398C6:
	movs r7, #129 @ 0x81
	lsls r7, r7, #2
	add r7, r8
	ldr r0, [r7, #0]
	bl sub_8047B78
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne.n _080398EC
	ldr r1, [r7, #0]
	ldr r0, [r1, #12]
	ldr r2, [pc, #192] @ (0x80399a0)
	ands r0, r2
	str r0, [r1, #12]
	ldr r1, [r7, #0]
	ldr r0, [r1, #16]
	ands r0, r2
	str r0, [r1, #16]
_080398EC:
	ldr r0, [r7, #0]
	bl sub_8046980
	ldr r0, [r7, #0]
	movs r1, #218 @ 0xda
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, [r0, #0]
	movs r6, #128 @ 0x80
	lsls r6, r6, #2
	add r6, r8
	ldr r0, [r6, #0]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0
	strb r1, [r0, #0]
	strb r1, [r2, #0]
	ldr r2, [r7, #0]
	ldr r0, [r6, #0]
	strh r1, [r0, #4]
	strh r1, [r2, #4]
	ldr r2, [r7, #0]
	ldr r1, [r6, #0]
	movs r4, #214 @ 0xd6
	lsls r4, r4, #2
	adds r1, r1, r4
	ldrb r3, [r1, #0]
	movs r5, #9
	negs r5, r5
	adds r0, r5, #0
	ands r0, r3
	strb r0, [r1, #0]
	adds r2, r2, r4
	ldrb r1, [r2, #0]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #0]
	ldr r3, [r7, #0]
	ldr r2, [r6, #0]
	ldr r6, [pc, #104] @ (0x80399a4)
	adds r2, r2, r6
	ldrb r4, [r2, #0]
	movs r1, #65 @ 0x41
	negs r1, r1
	adds r0, r1, #0
	ands r0, r4
	strb r0, [r2, #0]
	adds r3, r3, r6
	ldrb r0, [r3, #0]
	ands r1, r0
	strb r1, [r3, #0]
	ldr r1, [r7, #0]
	ldr r3, [pc, #80] @ (0x80399a8)
	adds r1, r1, r3
	ldrb r2, [r1, #0]
	movs r0, #33 @ 0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0]
	ldr r1, [r7, #0]
	adds r1, r1, r3
	ldrb r0, [r1, #0]
	movs r2, #64 @ 0x40
	orrs r0, r2
	strb r0, [r1, #0]
	ldr r1, [r7, #0]
	ldr r3, [pc, #56] @ (0x80399ac)
	adds r1, r1, r3
	ldrb r2, [r1, #0]
	movs r0, #3
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0]
	ldr r2, [pc, #48] @ (0x80399b0)
	add r2, r8
	ldrb r1, [r2, #0]
	movs r0, #127 @ 0x7f
	ands r0, r1
	strb r0, [r2, #0]
	ldr r1, [pc, #40] @ (0x80399b4)
	add r1, r8
	ldrb r0, [r1, #0]
	ands r5, r0
	strb r5, [r1, #0]
	mov r0, r8
	movs r1, #0
	bl sub_802DF80
	b.n _080399D6
	movs r0, r0
_080399A0:
	.byte 0x00, 0xFF, 0xFF, 0xFF, 0x51, 0x03, 0x00, 0x00, 0x0D, 0x02, 0x00, 0x00, 0x5A, 0x03, 0x00, 0x00
	.byte 0x0B, 0x02, 0x00, 0x00, 0x0A, 0x02, 0x00, 0x00
_080399B8:
	.byte 0x28, 0x68, 0x44, 0x46, 0x28, 0x34, 0x21, 0x1C, 0x0C, 0xF0, 0xF8, 0xFB, 0x28, 0x68, 0x0C, 0xF0
	.byte 0x07, 0xFE, 0x28, 0x68, 0x21, 0x1C, 0x00, 0x22, 0x00, 0x23, 0x16, 0xF0, 0xC7, 0xF8
_080399D6:
	ldr r1, _080399FC @ =0x00000272
	add r1, r8
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _080399F0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD6
	bl play_sfx_80195B4
_080399F0:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080399FC: .4byte 0x00000272
