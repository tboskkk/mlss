	.syntax unified
	.text

	thumb_func_start sub_80DC854
sub_80DC854:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r4, [r6, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080DC868
	b _080DC9AC
_080DC868:
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080DC872
	adds r0, #0xFF
_080DC872:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x25
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080DC880
	adds r0, #0xFF
_080DC880:
	asrs r0, r0, #0x08
	subs r3, r0, #0x1
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080DC88C
	adds r0, #0xFF
_080DC88C:
	asrs r0, r0, #0x08
	adds r0, #0x26
	str r0, [sp, #0x000]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080DC9B4 @ =0x00004138
	bl sub_807BF34
	adds r5, r0, #0x0
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080DC9B8 @ =0x080DD4ED
	str r0, [r5, #0x4C]
	ldr r0, _080DC9BC @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _080DC9C0 @ =0x080DD601
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0x9C
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x24
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080DC944
	adds r0, #0xFF
_080DC944:
	asrs r0, r0, #0x08
	subs r0, #0x25
	str r0, [r1, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x88
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080DC956
	adds r0, #0xFF
_080DC956:
	asrs r0, r0, #0x08
	subs r0, #0x01
	str r0, [r1, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080DC968
	adds r0, #0xFF
_080DC968:
	asrs r0, r0, #0x08
	adds r0, #0x26
	str r0, [r1, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r2, #0x00
	movs r0, #0x02
	strh r0, [r1, #0x00]
	str r2, [r6, #0x6C]
	adds r0, r6, #0x0
	movs r1, #0x0F
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DC9C4 @ =0x080DD561
	str r0, [r6, #0x4C]
_080DC9AC:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080DC9B4: .4byte 0x00004138
_080DC9B8: .4byte sub_80DD4EC
_080DC9BC: .4byte sub_8087540
_080DC9C0: .4byte sub_80DD600
_080DC9C4: .4byte sub_80DD560
