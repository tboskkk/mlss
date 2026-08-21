	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80A2560
sub_80A2560:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080A2608 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080A2582
	b _080A2748
_080A2582:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2594
	cmp r1, #0x04
	bne _080A25D4
_080A2594:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A25A2
	adds r0, #0xFF
_080A25A2:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A25B0
	adds r0, #0xFF
_080A25B0:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A25BE
	adds r0, #0xFF
_080A25BE:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r1, _080A260C @ =0x00000399
	adds r0, r4, #0x0
	bl sub_80880C4
_080A25D4:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080A25E8
	cmp r2, #0x04
	bne _080A2650
_080A25E8:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A2614
	ldr r2, _080A2610 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A2620
	.byte 0x00, 0x00
_080A2608: .4byte 0x03000FD8
_080A260C: .4byte 0x00000399
_080A2610: .4byte 0x00002002
_080A2614:
	ldr r2, _080A26E8 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A2620:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080A2636
	movs r2, #0x01
_080A2636:
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
_080A2650:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A265E
	cmp r2, #0x04
	bne _080A2668
_080A265E:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080A2668:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080A267C
	cmp r2, #0x04
	bne _080A26BC
_080A267C:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A268A
	adds r0, #0xFF
_080A268A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A2698
	adds r0, #0xFF
_080A2698:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A26A6
	adds r0, #0xFF
_080A26A6:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r1, _080A26EC @ =0x00000399
	adds r0, r5, #0x0
	bl sub_80880C4
_080A26BC:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A26CA
	cmp r1, #0x04
	bne _080A2730
_080A26CA:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A26F4
	ldr r2, _080A26F0 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A2700
_080A26E8: .4byte 0x0000204F
_080A26EC: .4byte 0x00000399
_080A26F0: .4byte 0x00002002
_080A26F4:
	ldr r2, _080A2750 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A2700:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080A2716
	movs r2, #0x01
_080A2716:
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
_080A2730:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A273E
	cmp r2, #0x04
	bne _080A2748
_080A273E:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080A2748:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A2750: .4byte 0x0000204F
	thumb_func_start sub_80A2754
sub_80A2754:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080A27D4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r6, #0x2C]
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	bne _080A278E
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r1, r0
	ble _080A278E
	str r6, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A278A
	cmp r1, #0x04
	bne _080A278E
_080A278A:
	ldr r0, _080A27D8 @ =0x080A2C81
	str r0, [r4, #0x4C]
_080A278E:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
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
	ldr r0, _080A27DC @ =0x040A1101
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r5, #0x24]
	adds r1, #0x01
	strh r1, [r5, #0x24]
	cmp r0, #0x01
	bne _080A27E0
	adds r0, r5, #0x0
	bl sub_8086764
	b _080A27E4
	.byte 0x00, 0x00
_080A27D4: .4byte 0x03000FD8
_080A27D8: .4byte sub_80A2C80
_080A27DC: .4byte 0x040A1101
_080A27E0:
	ldr r0, _080A27EC @ =0x080A27F1
	str r0, [r6, #0x4C]
_080A27E4:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080A27EC: .4byte sub_80A27F0
	thumb_func_start sub_80A27F0
sub_80A27F0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080A2854 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A284C
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2818
	cmp r1, #0x04
	bne _080A2848
_080A2818:
	ldr r2, _080A2858 @ =0x03001038
	ldr r0, _080A285C @ =0x0819832C
	ldr r1, _080A2860 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x06
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A2848:
	ldr r0, _080A2864 @ =0x080A2869
	str r0, [r5, #0x4C]
_080A284C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A2854: .4byte 0x03000FD8
_080A2858: .4byte 0x03001038
_080A285C: .4byte 0x0819832C
_080A2860: .4byte 0x08198220
_080A2864: .4byte sub_80A2868
	thumb_func_start sub_80A2868
sub_80A2868:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080A290C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
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
	beq _080A2902
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A289E
	cmp r1, #0x04
	bne _080A28F2
_080A289E:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A28AC
	adds r0, #0xFF
_080A28AC:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A28BA
	adds r0, #0xFF
_080A28BA:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A28C8
	adds r0, #0xFF
_080A28C8:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080A28DE
	adds r0, #0xFF
_080A28DE:
	asrs r0, r0, #0x08
	adds r0, #0x1A
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	bl sub_8088164
_080A28F2:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A2910 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A2914 @ =0x080A2919
	str r0, [r6, #0x4C]
_080A2902:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A290C: .4byte 0x03000FD8
_080A2910: .4byte 0x00000FFF
_080A2914: .4byte sub_80A2918
	thumb_func_start sub_80A2918
sub_80A2918:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080A29AC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080A29B0 @ =0x03001038
	ldr r2, _080A29B4 @ =0x0819832C
	ldr r3, _080A29B8 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080A2970
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r5, #0x00
	ldsh r0, [r0, r5]
	movs r1, #0x01
	cmp r0, r2
	bge _080A2972
_080A2970:
	movs r1, #0x00
_080A2972:
	cmp r1, #0x00
	bne _080A2978
	b _080A2AB8
_080A2978:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A298A
	cmp r1, #0x04
	bne _080A29D8
_080A298A:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A29BC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080A29C8
	.byte 0x00, 0x00
_080A29AC: .4byte 0x03000FD8
_080A29B0: .4byte 0x03001038
_080A29B4: .4byte 0x0819832C
_080A29B8: .4byte 0x08198220
_080A29BC:
	ldr r2, _080A2A5C @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080A29C8:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A29D8:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080A29EC
	cmp r2, #0x04
	bne _080A2A2E
_080A29EC:
	ldr r3, [r7, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A29FA
	adds r0, #0xFF
_080A29FA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A2A08
	adds r0, #0xFF
_080A2A08:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A2A16
	adds r0, #0xFF
_080A2A16:
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
_080A2A2E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2A3C
	cmp r1, #0x04
	bne _080A2AA0
_080A2A3C:
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A2A64
	ldr r2, _080A2A60 @ =0x00002002
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A2A70
	.byte 0x00, 0x00
_080A2A5C: .4byte 0x0000204D
_080A2A60: .4byte 0x00002002
_080A2A64:
	ldr r2, _080A2AF8 @ =0x0000204F
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A2A70:
	ldr r3, [r7, #0x08]
	movs r2, #0x00
	adds r0, r7, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080A2A86
	movs r2, #0x01
_080A2A86:
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
_080A2AA0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A2AAE
	cmp r2, #0x04
	bne _080A2AB8
_080A2AAE:
	movs r0, #0x00
	str r0, [r7, #0x4C]
	adds r0, r7, #0x0
	bl sub_808863C
_080A2AB8:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A2B44
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2AD8
	cmp r1, #0x04
	bne _080A2B18
_080A2AD8:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A2AFC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080A2B08
_080A2AF8: .4byte 0x0000204F
_080A2AFC:
	ldr r2, _080A2B50 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080A2B08:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A2B18:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080A2B20
	adds r1, #0xFF
_080A2B20:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080A2B2A
	adds r2, #0xFF
_080A2B2A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080A2B34
	adds r3, #0xFF
_080A2B34:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	ldr r0, _080A2B54 @ =0x080A2B59
	mov r5, r8
	str r0, [r5, #0x4C]
_080A2B44:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A2B50: .4byte 0x0000204D
_080A2B54: .4byte sub_80A2B58
	thumb_func_start sub_80A2B58
sub_80A2B58:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080A2BBC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A2BB4
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2B84
	cmp r1, #0x04
	bne _080A2BAA
_080A2B84:
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A2BAA:
	movs r1, #0x00
	str r1, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
_080A2BB4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A2BBC: .4byte 0x03000FD8
	thumb_func_start sub_80A2BC0
sub_80A2BC0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r3, [r4, #0x2C]
	adds r2, r4, #0x0
	adds r2, #0xB2
	ldrh r0, [r2, #0x00]
	adds r0, #0x26
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080A2BF4
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r1, [r3, #0x40]
	ldr r0, [r3, #0x18]
	cmp r1, r0
	bne _080A2C4C
	movs r4, #0x00
	ldsh r0, [r2, r4]
	adds r0, r1, r0
	str r0, [r3, #0x18]
	b _080A2C4C
_080A2BF4:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2C06
	cmp r1, #0x04
	bne _080A2C48
_080A2C06:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A2C14
	adds r0, #0xFF
_080A2C14:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A2C22
	adds r0, #0xFF
_080A2C22:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A2C30
	adds r0, #0xFF
_080A2C30:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	bl sub_80880C4
_080A2C48:
	ldr r0, _080A2C54 @ =0x080A2C59
	str r0, [r4, #0x4C]
_080A2C4C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080A2C54: .4byte sub_80A2C58
	thumb_func_start sub_80A2C58
sub_80A2C58:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A2C78
	movs r1, #0x00
	str r1, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
_080A2C78:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
