	.syntax unified
	.text

	thumb_func_start sub_8095028
sub_8095028:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r0, _080950BC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0xA8
	movs r7, #0x00
	str r7, [r0, #0x00]
	ldr r6, [r4, #0x2C]
	ldr r5, [r4, #0x6C]
	ldr r1, [r4, #0x68]
	cmp r1, #0x00
	beq _08095050
	adds r0, r4, #0x0
	bl _call_via_r1
_08095050:
	str r6, [r4, #0x2C]
	str r5, [r4, #0x6C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080950C0 @ =0x080954DD
	str r0, [r4, #0x58]
	ldr r0, _080950C4 @ =0x08095469
	str r0, [r4, #0x5C]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	adds r1, r4, #0x0
	adds r1, #0xB8
	ldr r0, _080950C8 @ =0x00001AA8
	strh r0, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r4, #0x1C]
	strh r7, [r4, #0x1E]
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	adds r1, r6, #0x0
	adds r1, #0xB2
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	movs r0, #0x00
	str r0, [r4, #0x50]
	ldr r0, _080950CC @ =0x0809545D
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	movs r0, #0x01
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080950BC: .4byte 0x03000FD8
_080950C0: .4byte sub_80954DC
_080950C4: .4byte sub_8095468
_080950C8: .4byte 0x00001AA8
_080950CC: .4byte 0x0809545D
