	.syntax unified
	.text

	thumb_func_start sub_8074744
sub_8074744:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080747CC
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	beq _0807476C
	cmp r1, #0x02
	bne _08074792
_0807476C:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074774
	adds r1, #0xFF
_08074774:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807477E
	adds r2, #0xFF
_0807477E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074788
	adds r3, #0xFF
_08074788:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074804 @ =0x0000242B
	bl sub_80DF024
_08074792:
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bhi _080747C4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080747A6
	adds r1, #0xFF
_080747A6:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080747B0
	adds r2, #0xFF
_080747B0:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080747BA
	adds r3, #0xFF
_080747BA:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074808 @ =0x00002434
	bl sub_80DF024
_080747C4:
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x08
	strh r0, [r1, #0x00]
_080747CC:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08074822
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08074822
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0807480C
	cmp r0, #0x01
	beq _08074812
	adds r0, r4, #0x0
	movs r1, #0x0C
	b _08074816
	.byte 0x00, 0x00
_08074804: .4byte 0x0000242B
_08074808: .4byte 0x00002434
_0807480C:
	adds r0, r4, #0x0
	movs r1, #0x04
	b _08074816
_08074812:
	adds r0, r4, #0x0
	movs r1, #0x08
_08074816:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807482C @ =0x08074831
	str r0, [r4, #0x4C]
_08074822:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807482C: .4byte sub_8074830
