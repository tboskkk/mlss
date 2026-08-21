	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80AB288
sub_80AB288:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080AB358 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AB350
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x30
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB2CA
	cmp r1, #0x04
	bne _080AB320
_080AB2CA:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080AB2D2
	adds r0, #0xFF
_080AB2D2:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x3C
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080AB2EC
	adds r2, #0xFF
_080AB2EC:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080AB30C
	adds r0, #0xFF
_080AB30C:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080AB320:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB332
	cmp r1, #0x04
	bne _080AB34C
_080AB332:
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB34C:
	ldr r0, _080AB35C @ =0x080AB361
	str r0, [r7, #0x4C]
_080AB350:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AB358: .4byte 0x03000FD8
_080AB35C: .4byte sub_80AB360
	thumb_func_start sub_80AB360
sub_80AB360:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080AB3F8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AB3F0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080AB396
	adds r1, #0xFF
_080AB396:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080AB3A0
	adds r2, #0xFF
_080AB3A0:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080AB3AA
	adds r3, #0xFF
_080AB3AA:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB3C6
	cmp r1, #0x04
	bne _080AB3E2
_080AB3C6:
	ldr r2, _080AB3FC @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AB3E2:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r0, _080AB400 @ =0x080AB405
	str r0, [r6, #0x4C]
_080AB3F0:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080AB3F8: .4byte 0x03000FD8
_080AB3FC: .4byte 0x00002034
_080AB400: .4byte sub_80AB404
	thumb_func_start sub_80AB404
sub_80AB404:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080AB4B4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080AB426
	b _080AB5F0
_080AB426:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB444
	cmp r1, #0x04
	bne _080AB482
_080AB444:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB452
	adds r0, #0xFF
_080AB452:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB460
	adds r0, #0xFF
_080AB460:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB46E
	adds r0, #0xFF
_080AB46E:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080AB482:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080AB496
	cmp r2, #0x04
	bne _080AB4F8
_080AB496:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AB4BC
	ldr r2, _080AB4B8 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AB4C8
_080AB4B4: .4byte 0x03000FD8
_080AB4B8: .4byte 0x00002002
_080AB4BC:
	ldr r2, _080AB594 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AB4C8:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080AB4DE
	movs r2, #0x01
_080AB4DE:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB4F8:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AB506
	cmp r2, #0x04
	bne _080AB510
_080AB506:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080AB510:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080AB524
	cmp r2, #0x04
	bne _080AB566
_080AB524:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB532
	adds r0, #0xFF
_080AB532:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB540
	adds r0, #0xFF
_080AB540:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB54E
	adds r0, #0xFF
_080AB54E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080AB566:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB574
	cmp r1, #0x04
	bne _080AB5D8
_080AB574:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AB59C
	ldr r2, _080AB598 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AB5A8
	.byte 0x00, 0x00
_080AB594: .4byte 0x0000204F
_080AB598: .4byte 0x00002002
_080AB59C:
	ldr r2, _080AB5F8 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AB5A8:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080AB5BE
	movs r2, #0x01
_080AB5BE:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB5D8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AB5E6
	cmp r2, #0x04
	bne _080AB5F0
_080AB5E6:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080AB5F0:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AB5F8: .4byte 0x0000204F
	thumb_func_start sub_80AB5FC
sub_80AB5FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080AB6C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	mov r0, r10
	ldr r5, [r0, #0x2C]
	movs r1, #0x01
	negs r1, r1
	mov r9, r1
	movs r0, #0x62
	bl play_sfx_80195B4
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080AB632
	adds r1, #0xFF
_080AB632:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080AB63C
	adds r2, #0xFF
_080AB63C:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080AB646
	adds r3, #0xFF
_080AB646:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080AB6C4 @ =0x00002F9E
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB662
	cmp r1, #0x04
	bne _080AB718
_080AB662:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AB66A
	adds r1, #0xFF
_080AB66A:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AB680
	adds r0, #0xFF
_080AB680:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AB696
	adds r3, #0xFF
_080AB696:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	adds r3, #0x3C
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080AB6C8
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080AB6D8
_080AB6C0: .4byte 0x03000FD8
_080AB6C4: .4byte 0x00002F9E
_080AB6C8:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080AB6D8:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080AB6E0
	adds r0, #0xFF
_080AB6E0:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080AB788 @ =0x03001038
	ldr r0, _080AB78C @ =0x0819832C
	ldr r1, _080AB790 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080AB6FA
	adds r1, #0x3F
_080AB6FA:
	asrs r1, r1, #0x06
	adds r1, #0x40
	movs r0, #0x80
	lsls r0, r0, #0x05
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080AB718:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB72A
	cmp r1, #0x04
	bne _080AB742
_080AB72A:
	ldr r2, _080AB794 @ =0x00002030
	adds r0, r6, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB742:
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB754
	cmp r1, #0x04
	bne _080AB772
_080AB754:
	ldr r2, _080AB798 @ =0x0000205F
	mov r0, r8
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	mov r1, r8
	ldr r2, [r1, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AB772:
	ldr r0, _080AB79C @ =0x080AB7A1
	mov r1, r10
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AB788: .4byte 0x03001038
_080AB78C: .4byte 0x0819832C
_080AB790: .4byte 0x08198220
_080AB794: .4byte 0x00002030
_080AB798: .4byte 0x0000205F
_080AB79C: .4byte sub_80AB7A0
	thumb_func_start sub_80AB7A0
sub_80AB7A0:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080AB860 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080AB7DC
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r2, [r5, #0x08]
	movs r1, #0x06
	ldsh r0, [r2, r1]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _080AB7DC
	strh r1, [r2, #0x06]
_080AB7DC:
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r6, r2, #0x0
	cmp r0, #0x00
	beq _080AB858
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080AB800
	cmp r2, #0x04
	bne _080AB818
_080AB800:
	ldr r2, _080AB864 @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB818:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AB826
	cmp r2, #0x04
	bne _080AB854
_080AB826:
	ldr r2, _080AB868 @ =0x03001038
	ldr r0, _080AB86C @ =0x0819832C
	ldr r1, _080AB870 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0C
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_080AB854:
	ldr r0, _080AB874 @ =0x080AB879
	str r0, [r7, #0x4C]
_080AB858:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AB860: .4byte 0x03000FD8
_080AB864: .4byte 0x00002030
_080AB868: .4byte 0x03001038
_080AB86C: .4byte 0x0819832C
_080AB870: .4byte 0x08198220
_080AB874: .4byte sub_80AB878
	thumb_func_start sub_80AB878
sub_80AB878:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080AB924 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AB91C
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB8B0
	cmp r1, #0x04
	bne _080AB90C
_080AB8B0:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AB8B8
	adds r1, #0xFF
_080AB8B8:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AB8CE
	adds r0, #0xFF
_080AB8CE:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AB8E4
	adds r3, #0xFF
_080AB8E4:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x04
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0xCC
	bl sub_8088274
_080AB90C:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080AB928 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080AB92C @ =0x080AB931
	str r0, [r7, #0x4C]
_080AB91C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AB924: .4byte 0x03000FD8
_080AB928: .4byte 0x00000FFF
_080AB92C: .4byte sub_80AB930
	thumb_func_start sub_80AB930
sub_80AB930:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080ABA40 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_8087EFC
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x01
	adds r0, r2, r1
	lsls r0, r0, #0x01
	mov r3, r10
	subs r7, r3, r0
	lsls r1, r1, #0x02
	subs r3, r3, r1
	str r3, [sp, #0x008]
	add r10, r2
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080AB992
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AB992:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080AB9A2
	b _080ABECE
_080AB9A2:
	adds r1, r7, #0x0
	cmp r1, #0x00
	bge _080AB9AA
	movs r1, #0x00
_080AB9AA:
	ldr r0, _080ABA44 @ =0x00007FFF
	cmp r1, r0
	ble _080AB9B2
	adds r1, r0, #0x0
_080AB9B2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080AB9C8
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080AB9CA
_080AB9C8:
	movs r2, #0x00
_080AB9CA:
	adds r7, r5, #0x0
	adds r7, #0x7E
	movs r3, #0xAE
	adds r3, r3, r5
	mov r9, r3
	cmp r2, #0x00
	beq _080ABAAC
	ldr r2, _080ABA40 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080ABA48
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AB9FC
	movs r1, #0x33
_080AB9F0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AB9F0
_080AB9FC:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABA10
	movs r1, #0x33
_080ABA04:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA04
_080ABA10:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABA24
	movs r1, #0x33
_080ABA18:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA18
_080ABA24:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABAA4
	movs r1, #0x03
_080ABA2E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABA38
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABA38:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABA2E
	b _080ABAA4
_080ABA40: .4byte 0x03000FD8
_080ABA44: .4byte 0x00007FFF
_080ABA48:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABA5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABA52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA52
_080ABA5E:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABA74
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABA68:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA68
_080ABA74:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABA8A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABA7E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA7E
_080ABA8A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABAA4
	movs r1, #0x10
_080ABA94:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABA9E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABA9E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABA94
_080ABAA4:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080ABAAC:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080ABAB6
	movs r1, #0x00
_080ABAB6:
	mov r0, r10
	cmp r0, #0x00
	bge _080ABABE
	movs r2, #0x00
_080ABABE:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080ABAC8
	adds r1, r0, #0x0
_080ABAC8:
	ldr r0, _080ABBBC @ =0x00007FFF
	cmp r2, r0
	ble _080ABAD0
	adds r2, r0, #0x0
_080ABAD0:
	cmp r2, r1
	bge _080ABAD6
	adds r1, r2, #0x0
_080ABAD6:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	cmp r0, r1
	blt _080ABAEC
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080ABAEE
_080ABAEC:
	movs r1, #0x00
_080ABAEE:
	cmp r1, #0x00
	bne _080ABAF4
	b _080ABC3C
_080ABAF4:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080ABBC0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080ABB12
	b _080ABC3C
_080ABB12:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080ABBC4 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080ABC2A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ABBC8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080ABB72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABB66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABB66
_080ABB72:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABB88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABB7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABB7C
_080ABB88:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABB9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABB92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABB92
_080ABB9E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABC26
	movs r1, #0x10
_080ABBA8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABBB2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABBB2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABBA8
	b _080ABC26
	.byte 0x00, 0x00
_080ABBBC: .4byte 0x00007FFF
_080ABBC0: .4byte 0x0300034C
_080ABBC4: .4byte 0x03000FD8
_080ABBC8:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080ABBE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABBD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABBD4
_080ABBE0:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABBF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABBEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABBEA
_080ABBF6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABC0C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABC00:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABC00
_080ABC0C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABC26
	movs r1, #0x10
_080ABC16:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABC20
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABC20:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABC16
_080ABC26:
	bl sub_807F448
_080ABC2A:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080ABD10 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080ABC3C:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080ABC48
	b _080ABECE
_080ABC48:
	mov r1, r10
	cmp r1, #0x00
	bge _080ABC50
	movs r1, #0x00
_080ABC50:
	ldr r0, _080ABD14 @ =0x00007FFF
	cmp r1, r0
	ble _080ABC58
	adds r1, r0, #0x0
_080ABC58:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080ABC6E
	movs r3, #0x00
	ldsh r0, [r7, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080ABC70
_080ABC6E:
	movs r2, #0x00
_080ABC70:
	cmp r2, #0x00
	bne _080ABC76
	b _080ABD84
_080ABC76:
	ldr r3, _080ABD18 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080ABD10 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ABD1C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABCC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABCBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABCBA
_080ABCC6:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABCDC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABCD0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABCD0
_080ABCDC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABCF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABCE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABCE6
_080ABCF2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABD78
	movs r1, #0x10
_080ABCFC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABD06
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABD06:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABCFC
	b _080ABD78
	.byte 0x00, 0x00
_080ABD10: .4byte 0x00000FFF
_080ABD14: .4byte 0x00007FFF
_080ABD18: .4byte 0x03000FD8
_080ABD1C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABD32
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABD26:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABD26
_080ABD32:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABD48
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABD3C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABD3C
_080ABD48:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABD5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABD52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABD52
_080ABD5E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABD78
	movs r1, #0x10
_080ABD68:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABD72
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABD72:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABD68
_080ABD78:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080ABECE
_080ABD84:
	movs r2, #0x00
	ldsh r0, [r7, r2]
	cmp r0, r10
	ble _080ABD8E
	b _080ABECE
_080ABD8E:
	ldr r0, _080ABE50 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080ABDA4
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080ABDA4
	b _080ABECE
_080ABDA4:
	ldr r2, _080ABE54 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080ABECE
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080ABE58 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ABE5C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABE06
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABDFA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABDFA
_080ABE06:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABE1C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE10:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE10
_080ABE1C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABE32
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE26:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE26
_080ABE32:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABEB8
	movs r1, #0x10
_080ABE3C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABE46
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABE46:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABE3C
	b _080ABEB8
	.byte 0x00, 0x00
_080ABE50: .4byte 0x0300034C
_080ABE54: .4byte 0x03000FD8
_080ABE58: .4byte 0x00000FFF
_080ABE5C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABE72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE66
_080ABE72:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABE88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE7C
_080ABE88:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABE9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE92
_080ABE9E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABEB8
	movs r1, #0x10
_080ABEA8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABEB2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABEB2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABEA8
_080ABEB8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080ABECE:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r7, r0, #0x0C
	cmp r7, #0x00
	bne _080ABEDA
	b _080ABFE8
_080ABEDA:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r10
	cmp r2, #0x00
	bge _080ABEE6
	movs r2, #0x00
_080ABEE6:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080ABEF0
	adds r1, r0, #0x0
_080ABEF0:
	ldr r0, _080ABF28 @ =0x00007FFF
	cmp r2, r0
	ble _080ABEF8
	adds r2, r0, #0x0
_080ABEF8:
	cmp r2, r1
	bge _080ABEFE
	adds r1, r2, #0x0
_080ABEFE:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080ABF18
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080ABF1A
_080ABF18:
	movs r1, #0x00
_080ABF1A:
	cmp r1, #0x00
	beq _080ABFE8
	cmp r7, #0x01
	ble _080ABF30
	ldr r4, _080ABF2C @ =0x040B1888
	b _080ABF32
	.byte 0x00, 0x00
_080ABF28: .4byte 0x00007FFF
_080ABF2C: .4byte 0x040B1888
_080ABF30:
	ldr r4, _080ABF78 @ =0x040B1788
_080ABF32:
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0x09
	ands r4, r0
	cmp r4, #0x00
	bne _080ABF7C
	cmp r1, #0x01
	bne _080ABF7C
	adds r0, r5, #0x0
	bl sub_8086764
	b _080AC078
	.byte 0x00, 0x00
_080ABF78: .4byte 0x040B1788
_080ABF7C:
	cmp r7, #0x01
	ble _080ABFAC
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080ABF88
	adds r1, #0xFF
_080ABF88:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080ABF92
	adds r2, #0xFF
_080ABF92:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080ABF9C
	adds r3, #0xFF
_080ABF9C:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080ABFA8 @ =0x00002E47
	bl sub_80DF024
	b _080ABFD2
_080ABFA8: .4byte 0x00002E47
_080ABFAC:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080ABFB4
	adds r1, #0xFF
_080ABFB4:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080ABFBE
	adds r2, #0xFF
_080ABFBE:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080ABFC8
	adds r3, #0xFF
_080ABFC8:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080AC088 @ =0x0000070B
	bl sub_80DF024
_080ABFD2:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080AC08C @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080ABFE8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AC078
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080ABFFE
	adds r1, #0xFF
_080ABFFE:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080AC008
	adds r2, #0xFF
_080AC008:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080AC012
	adds r3, #0xFF
_080AC012:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080AC090 @ =0x00002FF9
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC02E
	cmp r1, #0x04
	bne _080AC046
_080AC02E:
	ldr r2, _080AC094 @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC046:
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC058
	cmp r1, #0x04
	bne _080AC072
_080AC058:
	ldr r2, _080AC098 @ =0x0000204D
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r3, r8
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC072:
	ldr r0, _080AC09C @ =0x080AC0A1
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080AC078:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AC088: .4byte 0x0000070B
_080AC08C: .4byte 0x00000FFF
_080AC090: .4byte 0x00002FF9
_080AC094: .4byte 0x00002030
_080AC098: .4byte 0x0000204D
_080AC09C: .4byte sub_80AC0A0
	thumb_func_start sub_80AC0A0
sub_80AC0A0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080AC168 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AC15E
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC0DA
	cmp r1, #0x04
	bne _080AC130
_080AC0DA:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080AC0E2
	adds r0, #0xFF
_080AC0E2:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x3C
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080AC0FC
	adds r2, #0xFF
_080AC0FC:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080AC11C
	adds r0, #0xFF
_080AC11C:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080AC130:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC142
	cmp r1, #0x04
	bne _080AC15A
_080AC142:
	ldr r2, _080AC16C @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC15A:
	ldr r0, _080AC170 @ =0x080AC175
	str r0, [r7, #0x4C]
_080AC15E:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AC168: .4byte 0x03000FD8
_080AC16C: .4byte 0x00002030
_080AC170: .4byte sub_80AC174
	thumb_func_start sub_80AC174
sub_80AC174:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080AC29C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r2, _080AC2A0 @ =0x00001555
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080AC1A6
	adds r0, r4, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080AC1A8
_080AC1A6:
	movs r1, #0x00
_080AC1A8:
	cmp r1, #0x00
	beq _080AC1D6
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC1BE
	cmp r1, #0x04
	bne _080AC1D6
_080AC1BE:
	ldr r2, _080AC2A4 @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC1D6:
	ldr r2, _080AC2A8 @ =0x00002AAA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080AC1F2
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080AC1F4
_080AC1F2:
	movs r1, #0x00
_080AC1F4:
	cmp r1, #0x00
	beq _080AC222
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC20A
	cmp r1, #0x04
	bne _080AC222
_080AC20A:
	ldr r2, _080AC2A4 @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC222:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AC292
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080AC242
	adds r1, #0xFF
_080AC242:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080AC24C
	adds r2, #0xFF
_080AC24C:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080AC256
	adds r3, #0xFF
_080AC256:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC272
	cmp r1, #0x04
	bne _080AC28E
_080AC272:
	ldr r2, _080AC2AC @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x08
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
_080AC28E:
	ldr r0, _080AC2B0 @ =0x080AC2B5
	str r0, [r6, #0x4C]
_080AC292:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AC29C: .4byte 0x03000FD8
_080AC2A0: .4byte 0x00001555
_080AC2A4: .4byte 0x00002030
_080AC2A8: .4byte 0x00002AAA
_080AC2AC: .4byte 0x00002034
_080AC2B0: .4byte sub_80AC2B4
	thumb_func_start sub_80AC2B4
sub_80AC2B4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080AC364 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080AC2D6
	b _080AC4A0
_080AC2D6:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC2F4
	cmp r1, #0x04
	bne _080AC332
_080AC2F4:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC302
	adds r0, #0xFF
_080AC302:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC310
	adds r0, #0xFF
_080AC310:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC31E
	adds r0, #0xFF
_080AC31E:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080AC332:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080AC346
	cmp r2, #0x04
	bne _080AC3A8
_080AC346:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AC36C
	ldr r2, _080AC368 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AC378
_080AC364: .4byte 0x03000FD8
_080AC368: .4byte 0x00002002
_080AC36C:
	ldr r2, _080AC444 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AC378:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080AC38E
	movs r2, #0x01
_080AC38E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC3A8:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AC3B6
	cmp r2, #0x04
	bne _080AC3C0
_080AC3B6:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080AC3C0:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080AC3D4
	cmp r2, #0x04
	bne _080AC416
_080AC3D4:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC3E2
	adds r0, #0xFF
_080AC3E2:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC3F0
	adds r0, #0xFF
_080AC3F0:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC3FE
	adds r0, #0xFF
_080AC3FE:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080AC416:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC424
	cmp r1, #0x04
	bne _080AC488
_080AC424:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AC44C
	ldr r2, _080AC448 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AC458
	.byte 0x00, 0x00
_080AC444: .4byte 0x0000204F
_080AC448: .4byte 0x00002002
_080AC44C:
	ldr r2, _080AC4A8 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AC458:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080AC46E
	movs r2, #0x01
_080AC46E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC488:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AC496
	cmp r2, #0x04
	bne _080AC4A0
_080AC496:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080AC4A0:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AC4A8: .4byte 0x0000204F
