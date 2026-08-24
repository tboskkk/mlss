	.syntax unified
	.text

	thumb_func_start sub_80DFB08
sub_80DFB08:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	ldr r6, [r5, #0x0C]
	ldr r4, _080DFB60 @ =0x084FB4FC
	movs r1, #0x02
	ldsh r0, [r6, r1]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r2, _080DFB64 @ =0x089F2CE0
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	adds r1, r1, r2
	ldr r2, _080DFB68 @ =0x06016800
	movs r3, #0x80
	lsls r3, r3, #0x01
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r0, #0x02
	bl sub_80827F0
	ldr r2, _080DFB6C @ =0x03001034
	ldr r0, _080DFB70 @ =0x08198154
	ldr r1, _080DFB74 @ =0x081980D8
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	movs r1, #0x02
	ldsh r0, [r6, r1]
	adds r2, r0, #0x1
	ldr r0, _080DFB78 @ =0x0300034C
	ldr r1, _080DFB7C @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	beq _080DFB80
	adds r0, r2, #0x1
	lsls r0, r0, #0x01
	b _080DFB82
_080DFB60: .4byte dword_84FB4FC @ =0x084FB4FC
_080DFB64: .4byte dword_89F2CE0 @ =0x089F2CE0
_080DFB68: .4byte 0x06016800
_080DFB6C: .4byte 0x03001034
_080DFB70: .4byte dword_8198154 @ =0x08198154
_080DFB74: .4byte dword_81980D8 @ =0x081980D8
_080DFB78: .4byte 0x0300034C
_080DFB7C: .4byte 0x00000888
_080DFB80:
	lsls r0, r2, #0x01
_080DFB82:
	adds r0, r4, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _080DFBD8 @ =0x089F2CE0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _080DFBDC @ =0x02000460
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, _080DFBE0 @ =0x0300034C
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x08
	adds r0, r3, #0x0
	movs r4, #0x00
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080DFBE4 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x09]
	lsls r1, r2, #0x1C
	lsrs r1, r1, #0x1C
	adds r1, #0x01
	movs r0, #0x0F
	ands r1, r0
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x09]
	str r4, [r5, #0x08]
	ldrh r0, [r6, #0x04]
	strh r0, [r5, #0x10]
	strh r4, [r5, #0x18]
	ldr r0, _080DFBE8 @ =0x080DFBED
	str r0, [r5, #0x04]
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DFBD8: .4byte dword_89F2CE0 @ =0x089F2CE0
_080DFBDC: .4byte 0x02000460
_080DFBE0: .4byte 0x0300034C
_080DFBE4: .4byte 0x03000FD8
_080DFBE8: .4byte sub_80DFBEC
