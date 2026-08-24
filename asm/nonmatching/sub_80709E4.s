	.syntax unified
	.text

	thumb_func_start sub_80709E4
sub_80709E4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08070A44
	ldr r0, [r4, #0x30]
	bl sub_807C298
	ldr r3, _08070A30 @ =0x03000E7D
	ldrb r0, [r3, #0x00]
	adds r0, #0x01
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	bhi _08070A26
	ldr r2, _08070A34 @ =0x083B873C
	ldr r0, _08070A38 @ =0x03000E7C
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	ldrb r1, [r3, #0x00]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	bne _08070A40
_08070A26:
	movs r0, #0x00
	strb r0, [r3, #0x00]
	ldr r0, _08070A3C @ =0x08070991
	b _08070A42
	.byte 0x00, 0x00
_08070A30: .4byte 0x03000E7D
_08070A34: .4byte dword_83B873C @ =0x083B873C
_08070A38: .4byte 0x03000E7C
_08070A3C: .4byte sub_8070990
_08070A40:
	ldr r0, _08070A4C @ =0x0806EF39
_08070A42:
	str r0, [r4, #0x4C]
_08070A44:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070A4C: .4byte sub_806EF38
