	.syntax unified
	.text

	thumb_func_start sub_80664D4
sub_80664D4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _08066532
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _080664EC
	adds r2, #0xFF
_080664EC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080664F6
	adds r3, #0xFF
_080664F6:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0806650C
	movs r0, #0x13
	b _0806650E
_0806650C:
	movs r0, #0x12
_0806650E:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806653C @ =0x08066335
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08066532:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806653C: .4byte sub_8066334
