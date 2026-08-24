	.syntax unified
	.text

	thumb_func_start sub_8025E94
sub_8025E94:
	push {r4, lr}
	adds r3, r0, #0x0
	ldr r0, _08025ED8 @ =0x0300034C
	ldrh r4, [r0, #0x2A]
	cmp r4, #0x00
	beq _08025EFC
	ldr r1, _08025EDC @ =0x0839F5A4
	movs r0, #0xFC
	lsls r0, r0, #0x01
	adds r2, r3, r0
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r4, r0
	bne _08025EEE
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x0A
	bne _08025EE4
	movs r0, #0x00
	strb r0, [r2, #0x00]
	movs r0, #0xFB
	lsls r0, r0, #0x01
	adds r1, r3, r0
	ldr r0, _08025EE0 @ =0x0000FFFF
	strh r0, [r1, #0x00]
	movs r0, #0x01
	b _08025F1C
	.byte 0x00, 0x00
_08025ED8: .4byte 0x0300034C
_08025EDC: .4byte 0x0839F5A4
_08025EE0: .4byte 0x0000FFFF
_08025EE4:
	movs r0, #0xFB
	lsls r0, r0, #0x01
	adds r1, r3, r0
	movs r0, #0x1E
	b _08025EFA
_08025EEE:
	movs r0, #0x00
	strb r0, [r2, #0x00]
	movs r0, #0xFB
	lsls r0, r0, #0x01
	adds r1, r3, r0
	ldr r0, _08025F24 @ =0x0000FFFF
_08025EFA:
	strh r0, [r1, #0x00]
_08025EFC:
	movs r1, #0xFB
	lsls r1, r1, #0x01
	adds r2, r3, r1
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08025F1A
	adds r1, #0x02
	adds r0, r3, r1
	movs r1, #0x00
	strb r1, [r0, #0x00]
	ldr r0, _08025F24 @ =0x0000FFFF
	strh r0, [r2, #0x00]
_08025F1A:
	movs r0, #0x00
_08025F1C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08025F24: .4byte 0x0000FFFF
