	.syntax unified
	.text

	thumb_func_start sub_8047B98
sub_8047B98:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	ldrb r2, [r0, #0x12]
	lsls r2, r2, #0x1D
	lsrs r2, r2, #0x1E
	ldr r0, _08047BE0 @ =0x00000213
	adds r4, r5, r0
	lsls r2, r2, #0x06
	ldrb r3, [r4, #0x00]
	movs r0, #0x3F
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x00]
	ldr r2, _08047BE4 @ =0x00000212
	adds r4, r5, r2
	movs r0, #0x03
	adds r2, r1, #0x0
	ands r2, r0
	lsls r2, r2, #0x07
	ldrh r3, [r4, #0x00]
	ldr r0, _08047BE8 @ =0xFFFFFE7F
	ands r0, r3
	orrs r0, r2
	strh r0, [r4, #0x00]
	movs r0, #0xAC
	lsls r0, r0, #0x02
	adds r2, r5, r0
	cmp r1, #0x01
	bne _08047BF0
	ldr r0, _08047BEC @ =0x083A0633
	b _08047BF2
	.byte 0x00, 0x00
_08047BE0: .4byte 0x00000213
_08047BE4: .4byte 0x00000212
_08047BE8: .4byte 0xFFFFFE7F
_08047BEC: .4byte dword_83A0633 @ =0x083A0633
_08047BF0:
	ldr r0, _08047C14 @ =0x083A061D
_08047BF2:
	str r0, [r2, #0x00]
	movs r1, #0xAC
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x00]
	movs r2, #0xAD
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	pop {r4, r5}
	pop {r0}
	bx r0
_08047C14: .4byte dword_83A061D @ =0x083A061D
