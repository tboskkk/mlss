	.syntax unified
	.text

	thumb_func_start sub_802814C
sub_802814C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	bl sub_801A6B0
	ldr r0, _080281C4 @ =0x0000012D
	adds r6, r4, r0
	ldrb r1, [r6, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08028190
	adds r0, r4, #0x0
	bl sub_80273E4
	movs r0, #0xC1
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _0802817E
	movs r1, #0x03
	bl sub_8057B58
	movs r0, #0x00
	str r0, [r5, #0x00]
_0802817E:
	movs r0, #0x02
	movs r1, #0x00
	bl sub_8018B78
	ldrb r1, [r6, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_08028190:
	ldr r0, _080281C8 @ =0x00001BE5
	bl sub_80E99E0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	beq _080281D0
	adds r0, r4, #0x0
	bl process_disable
	movs r0, #0x02
	strb r0, [r4, #0x00]
	ldr r4, _080281CC @ =0x081E2684
	movs r0, #0x68
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	adds r3, r5, #0x0
	bl sub_8054378
	b _0802823E
	.byte 0x00, 0x00
_080281C4: .4byte 0x0000012D
_080281C8: .4byte 0x00001BE5
_080281CC: .4byte 0x081E2684
_080281D0:
	cmp r4, #0x00
	beq _080281DC
	adds r0, r4, #0x0
	movs r1, #0x03
	bl sub_8022554
_080281DC:
	bl sub_8123340
	ldr r3, _08028218 @ =0x03001034
	ldr r0, _0802821C @ =0x03000FC0
	ldr r1, [r0, #0x00]
	movs r2, #0xAE
	lsls r2, r2, #0x03
	ldr r3, [r3, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	bl sub_81251F0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08028224
	ldr r0, _08028220 @ =0x03000D40
	ldrb r1, [r0, #0x00]
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x00]
	bl sub_80FC198
	bl sub_812335C
	movs r0, #0x01
	bl make_fldm_801AF5C
	b _0802823E
	.byte 0x00, 0x00
_08028218: .4byte 0x03001034
_0802821C: .4byte 0x03000FC0
_08028220: .4byte 0x03000D40
_08028224:
	movs r0, #0xB2
	lsls r0, r0, #0x01
	ldr r4, _08028244 @ =0x081E268C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x00
	bl load_init_812538C
_0802823E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08028244: .4byte 0x081E268C
