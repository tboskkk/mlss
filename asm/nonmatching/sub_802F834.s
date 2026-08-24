	.syntax unified
	.text

	thumb_func_start sub_802F834
sub_802F834:
	push {r4, r5, r6, lr}
	ldr r4, _0802F884 @ =0x03000FC0
	ldr r0, [r4, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0x00
	ldr r2, _0802F888 @ =0x00000205
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0802F894
	ldr r0, [r4, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0x00
	movs r2, #0x81
	lsls r2, r2, #0x02
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0802F890
	ldr r0, [r4, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0x00
	ldr r2, _0802F88C @ =0x00000203
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	negs r1, r0
	orrs r1, r0
	lsrs r1, r1, #0x1F
	b _0802F896
	.byte 0x00, 0x00
_0802F884: .4byte 0x03000FC0
_0802F888: .4byte 0x00000205
_0802F88C: .4byte 0x00000203
_0802F890:
	movs r1, #0x02
	b _0802F896
_0802F894:
	movs r1, #0x03
_0802F896:
	adds r5, r1, #0x0
	cmp r5, #0x00
	ble _0802F916
	subs r5, #0x01
	ldr r0, _0802F91C @ =0x03000D74
	ldr r6, [r0, #0x00]
	ldrh r1, [r6, #0x0C]
	ldr r0, _0802F920 @ =0x000001FF
	ands r0, r1
	cmp r0, #0x01
	bne _0802F8DC
	lsrs r0, r1, #0x09
	movs r1, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _0802F8DC
	ldr r4, _0802F924 @ =0x02000282
	ldr r3, _0802F928 @ =0x0839FA3C
	ldr r2, _0802F92C @ =0x0300034C
	ldr r1, _0802F930 @ =0x00000888
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x01
	adds r0, r0, r1
	adds r0, r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldrh r1, [r2, #0x00]
	movs r0, #0x01
	orrs r0, r1
	strh r0, [r2, #0x00]
_0802F8DC:
	ldrh r1, [r6, #0x0E]
	ldr r0, _0802F920 @ =0x000001FF
	ands r0, r1
	cmp r0, #0x02
	bne _0802F916
	lsrs r0, r1, #0x09
	movs r1, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _0802F916
	ldr r4, _0802F934 @ =0x020002A2
	ldr r3, _0802F928 @ =0x0839FA3C
	ldr r2, _0802F92C @ =0x0300034C
	ldr r1, _0802F930 @ =0x00000888
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x01
	adds r0, r0, r1
	adds r0, r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldrh r1, [r2, #0x00]
	movs r0, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
_0802F916:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0802F91C: .4byte 0x03000D74
_0802F920: .4byte 0x000001FF
_0802F924: .4byte 0x02000282
_0802F928: .4byte 0x0839FA3C
_0802F92C: .4byte 0x0300034C
_0802F930: .4byte 0x00000888
_0802F934: .4byte 0x020002A2
