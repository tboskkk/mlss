	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80A653C
sub_80A653C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A65E4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A65DC
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A6570
	cmp r1, #0x04
	bne _080A6596
_080A6570:
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A6596:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A65A8
	cmp r1, #0x04
	bne _080A65D8
_080A65A8:
	ldr r2, _080A65E8 @ =0x03001038
	ldr r0, _080A65EC @ =0x0819832C
	ldr r1, _080A65F0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x02
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A65D8:
	ldr r0, _080A65F4 @ =0x080A65F9
	str r0, [r6, #0x4C]
_080A65DC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A65E4: .4byte 0x03000FD8
_080A65E8: .4byte 0x03001038
_080A65EC: .4byte 0x0819832C
_080A65F0: .4byte 0x08198220
_080A65F4: .4byte sub_80A65F8
	thumb_func_start sub_80A65F8
sub_80A65F8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080A66A8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	adds r0, r7, #0x0
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080A6620
	b _080A67E4
_080A6620:
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A6632
	cmp r1, #0x04
	bne _080A6674
_080A6632:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A6640
	adds r0, #0xFF
_080A6640:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A664E
	adds r0, #0xFF
_080A664E:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A665C
	adds r0, #0xFF
_080A665C:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080A6674:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080A6688
	cmp r2, #0x04
	bne _080A66EC
_080A6688:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A66B0
	ldr r2, _080A66AC @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A66BC
	.byte 0x00, 0x00
_080A66A8: .4byte 0x03000FD8
_080A66AC: .4byte 0x00002002
_080A66B0:
	ldr r2, _080A6788 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A66BC:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080A66D2
	movs r2, #0x01
_080A66D2:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A66EC:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A66FA
	cmp r2, #0x04
	bne _080A6704
_080A66FA:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080A6704:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080A6718
	cmp r2, #0x04
	bne _080A675A
_080A6718:
	ldr r3, [r7, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A6726
	adds r0, #0xFF
_080A6726:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A6734
	adds r0, #0xFF
_080A6734:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A6742
	adds r0, #0xFF
_080A6742:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r7, #0x0
	bl sub_80880C4
_080A675A:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A6768
	cmp r1, #0x04
	bne _080A67CC
_080A6768:
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A6790
	ldr r2, _080A678C @ =0x00002002
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A679C
	.byte 0x00, 0x00
_080A6788: .4byte 0x0000204F
_080A678C: .4byte 0x00002002
_080A6790:
	ldr r2, _080A67EC @ =0x0000204F
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A679C:
	ldr r3, [r7, #0x08]
	movs r2, #0x00
	adds r0, r7, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080A67B2
	movs r2, #0x01
_080A67B2:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A67CC:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A67DA
	cmp r2, #0x04
	bne _080A67E4
_080A67DA:
	movs r0, #0x00
	str r0, [r7, #0x4C]
	adds r0, r7, #0x0
	bl sub_808863C
_080A67E4:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A67EC: .4byte 0x0000204F
	thumb_func_start sub_80A67F0
sub_80A67F0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A6894 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r0, #0xAB
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9A
	bl play_sfx_80195B4
	ldr r0, [r5, #0x34]
	bl sub_807FB34
	movs r0, #0x00
	str r0, [r5, #0x34]
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A682A
	cmp r1, #0x04
	bne _080A6846
_080A682A:
	ldr r2, _080A6898 @ =0x00002055
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A6846:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A6858
	cmp r1, #0x04
	bne _080A6888
_080A6858:
	ldr r2, _080A689C @ =0x03001038
	ldr r0, _080A68A0 @ =0x0819832C
	ldr r1, _080A68A4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x01
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A6888:
	ldr r0, _080A68A8 @ =0x080A6BD9
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A6894: .4byte 0x03000FD8
_080A6898: .4byte 0x00002055
_080A689C: .4byte 0x03001038
_080A68A0: .4byte 0x0819832C
_080A68A4: .4byte 0x08198220
_080A68A8: .4byte sub_80A6BD8
