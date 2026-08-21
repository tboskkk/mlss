	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80A04F8
sub_80A04F8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x33
	strh r0, [r1, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x8C
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r6, #0x00]
	adds r4, r0, r1
	str r4, [r6, #0x00]
	ldr r0, _080A05CC @ =0x00004FFF
	cmp r4, r0
	bgt _080A05E4
	ldr r2, _080A05D0 @ =0x03001038
	ldr r0, _080A05D4 @ =0x0819832C
	ldr r1, _080A05D8 @ =0x08198220
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	movs r0, #0xA0
	lsls r0, r0, #0x07
	subs r0, r0, r4
	adds r1, r5, #0x0
	adds r1, #0xB2
	movs r4, #0x00
	ldsh r2, [r1, r4]
	movs r1, #0x50
	subs r1, r1, r2
	bl _call_via_r3
	ldr r1, [r5, #0x08]
	cmp r0, #0x04
	bge _080A0544
	movs r0, #0x04
_080A0544:
	strh r0, [r1, #0x06]
	strh r0, [r1, #0x04]
	adds r2, r5, #0x0
	adds r2, #0x84
	adds r0, r5, #0x0
	adds r0, #0x88
	ldr r1, [r2, #0x00]
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	ldr r3, _080A05DC @ =0x08198584
	cmp r1, #0x00
	bge _080A0560
	adds r1, #0xFF
_080A0560:
	asrs r0, r1, #0x08
	movs r4, #0xFF
	ands r0, r4
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080A0574
	adds r0, #0x3F
_080A0574:
	asrs r1, r0, #0x06
	ldr r0, [r6, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080A0580
	adds r0, #0xFF
_080A0580:
	asrs r1, r0, #0x08
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x07
	cmp r0, #0x00
	bge _080A058E
	adds r0, #0xFF
_080A058E:
	asrs r1, r0, #0x08
	movs r0, #0xBC
	lsls r0, r0, #0x06
	subs r0, r0, r1
	str r0, [r5, #0x10]
	ldr r1, _080A05E0 @ =0x08198504
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _080A05A2
	adds r0, #0xFF
_080A05A2:
	asrs r0, r0, #0x08
	ands r0, r4
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _080A05B4
	adds r0, #0x3F
_080A05B4:
	asrs r1, r0, #0x06
	ldr r0, [r6, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080A05C0
	adds r0, #0xFF
_080A05C0:
	asrs r1, r0, #0x08
	movs r0, #0xD8
	lsls r0, r0, #0x07
	subs r0, r0, r1
	str r0, [r5, #0x14]
	b _080A05F8
_080A05CC: .4byte 0x00004FFF
_080A05D0: .4byte 0x03001038
_080A05D4: .4byte 0x0819832C
_080A05D8: .4byte 0x08198220
_080A05DC: .4byte 0x08198584
_080A05E0: .4byte 0x08198504
_080A05E4:
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_807C298
	ldr r0, [r5, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	bl sub_807C298
_080A05F8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80A0600
sub_80A0600:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x28]
	ldr r7, [r0, #0x38]
	movs r6, #0x00
	ldr r0, [r5, #0x30]
	adds r4, r0, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	beq _080A0686
	ldr r0, _080A0658 @ =0x03001038
	mov r9, r0
	ldr r1, _080A065C @ =0x08198350
	ldr r0, _080A0660 @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
_080A0626:
	mov r1, r9
	ldr r2, [r1, #0x00]
	add r2, r8
	adds r0, r6, #0x0
	movs r1, #0x05
	bl _call_via_r2
	cmp r0, #0x00
	bne _080A064A
	ldrb r2, [r4, #0x1B]
	lsrs r1, r2, #0x07
	movs r0, #0x01
	eors r1, r0
	lsls r1, r1, #0x07
	movs r0, #0x7F
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1B]
_080A064A:
	cmp r6, #0x09
	bne _080A0664
	ldr r0, [r7, #0x38]
	str r0, [r4, #0x04]
	ldr r0, [r7, #0x3C]
	b _080A066E
	.byte 0x00, 0x00
_080A0658: .4byte 0x03001038
_080A065C: .4byte 0x08198350
_080A0660: .4byte 0x08198220
_080A0664:
	cmp r6, #0x13
	bne _080A0674
	ldr r0, [r5, #0x38]
	str r0, [r4, #0x04]
	ldr r0, [r5, #0x3C]
_080A066E:
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x00]
	b _080A067E
_080A0674:
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x04]
	str r1, [r4, #0x04]
	ldr r1, [r0, #0x08]
	str r1, [r4, #0x08]
_080A067E:
	adds r4, r0, #0x0
	adds r6, #0x01
	cmp r4, #0x00
	bne _080A0626
_080A0686:
	adds r3, r7, #0x0
	adds r3, #0x8C
	ldr r1, _080A0738 @ =0x08198584
	adds r2, r7, #0x0
	adds r2, #0x84
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _080A0698
	adds r0, #0xFF
_080A0698:
	asrs r0, r0, #0x08
	adds r0, #0x80
	movs r4, #0xFF
	ands r0, r4
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080A06AE
	adds r0, #0x3F
_080A06AE:
	asrs r1, r0, #0x06
	ldr r0, [r3, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080A06BA
	adds r0, #0xFF
_080A06BA:
	asrs r1, r0, #0x08
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x07
	cmp r0, #0x00
	bge _080A06C8
	adds r0, #0xFF
_080A06C8:
	asrs r1, r0, #0x08
	movs r0, #0xBC
	lsls r0, r0, #0x06
	subs r0, r0, r1
	str r0, [r5, #0x10]
	ldr r1, _080A073C @ =0x08198504
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _080A06DC
	adds r0, #0xFF
_080A06DC:
	asrs r0, r0, #0x08
	adds r0, #0x80
	ands r0, r4
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080A06F0
	adds r0, #0x3F
_080A06F0:
	asrs r1, r0, #0x06
	ldr r0, [r3, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080A06FC
	adds r0, #0xFF
_080A06FC:
	asrs r1, r0, #0x08
	movs r0, #0xD8
	lsls r0, r0, #0x07
	subs r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r5, #0x18]
	ldr r3, [r5, #0x08]
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldr r1, [r7, #0x08]
	ldrh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldrh r0, [r1, #0x04]
	strh r0, [r3, #0x04]
	ldr r3, [r5, #0x08]
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldr r1, [r7, #0x08]
	ldrh r0, [r1, #0x06]
	strh r0, [r2, #0x06]
	ldrh r0, [r1, #0x06]
	strh r0, [r3, #0x06]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A0738: .4byte 0x08198584
_080A073C: .4byte 0x08198504
	thumb_func_start sub_80A0740
sub_80A0740:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080A0752
	adds r1, #0xFF
_080A0752:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080A075C
	adds r2, #0xFF
_080A075C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080A0766
	adds r3, #0xFF
_080A0766:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080A0784 @ =0x00002ADB
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_810DD7C
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080A0784: .4byte 0x00002ADB
