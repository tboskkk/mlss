	.syntax unified
	.text

	thumb_func_start sub_815CC60
sub_815CC60:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _0815CCB8 @ =0x08CDCC50
	str r0, [r5, #0x30]
	movs r6, #0x00
	strh r4, [r5, #0x38]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	ldr r1, _0815CCBC @ =0x00005008
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	adds r2, r0, #0x0
	str r2, [r5, #0x34]
	ldr r0, _0815CCC0 @ =0x03001020
	ldr r0, [r0, #0x00]
	ldr r3, _0815CCC4 @ =0x00001EA2
	adds r1, r0, r3
	ldrb r0, [r1, #0x00]
	cmp r0, #0x03
	bhi _0815CCC8
	adds r1, r0, #0x0
	adds r1, #0x30
	str r6, [sp, #0x000]
	adds r0, r2, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	b _0815CCD6
_0815CCB8: .4byte 0x08CDCC50
_0815CCBC: .4byte 0x00005008
_0815CCC0: .4byte 0x03001020
_0815CCC4: .4byte 0x00001EA2
_0815CCC8:
	str r6, [sp, #0x000]
	adds r0, r2, #0x0
	movs r1, #0x30
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
_0815CCD6:
	ldr r0, [r5, #0x34]
	bl sprite_show_8020CBC
	ldr r2, [r5, #0x34]
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r1, [r5, #0x34]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r1, [r5, #0x34]
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x02]
	ldr r1, [r5, #0x34]
	movs r0, #0x13
	strh r0, [r1, #0x0E]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r3, [r5, #0x34]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r3, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r3, [r5, #0x34]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x0C
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r3, [r5, #0x34]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x30
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r3, [r5, #0x34]
	ldrb r1, [r0, #0x1F]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x1F]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r5, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
