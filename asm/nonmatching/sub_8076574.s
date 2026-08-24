	.syntax unified
	.text

	thumb_func_start sub_8076574
sub_8076574:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08076588
	b _08076738
_08076588:
	adds r0, r6, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0807659C
	adds r1, #0xFF
_0807659C:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080765A6
	adds r2, #0xFF
_080765A6:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080765B0
	adds r3, #0xFF
_080765B0:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08076678 @ =0x00002539
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080765C8
	adds r0, #0xFF
_080765C8:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080765DA
	adds r0, #0xFF
_080765DA:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	adds r3, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080765EC
	adds r0, #0xFF
_080765EC:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0807667C @ =0x00004048
	bl sub_807BF34
	adds r5, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
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
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08076680 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08076684 @ =0x08076751
	str r0, [r5, #0x4C]
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r3, [r0, #0x00]
	subs r1, r3, #0x3
	adds r7, r0, #0x0
	cmp r1, #0x01
	bhi _08076688
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	b _080766A6
_08076678: .4byte 0x00002539
_0807667C: .4byte 0x00004048
_08076680: .4byte sub_8087540
_08076684: .4byte sub_8076750
_08076688:
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r1, _08076740 @ =0x083B876C
	lsls r0, r3, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r2, #0x04
	ldr r1, _08076744 @ =0x083B878C
	ldr r0, [r7, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
_080766A6:
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r4, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r5, #0xA0
	str r4, [r5, #0x00]
	ldr r1, _08076740 @ =0x083B876C
	ldr r0, [r7, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x10
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080766FC
	adds r0, #0xFF
_080766FC:
	asrs r0, r0, #0x08
	subs r2, r2, r0
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807670C
	adds r0, #0xFF
_0807670C:
	asrs r0, r0, #0x08
	movs r1, #0x08
	negs r1, r1
	subs r1, r1, r0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	ldr r1, _08076748 @ =0xFFFFC000
	adds r0, r0, r1
	str r0, [r5, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	ldr r0, _0807674C @ =0x080771D9
	str r0, [r6, #0x4C]
_08076738:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08076740: .4byte dword_83B876C @ =0x083B876C
_08076744: .4byte dword_83B878C @ =0x083B878C
_08076748: .4byte 0xFFFFC000
_0807674C: .4byte sub_80771D8
