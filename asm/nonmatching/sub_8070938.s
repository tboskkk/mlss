	.syntax unified
	.text

	thumb_func_start sub_8070938
sub_8070938:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r3, _08070974 @ =0x03000E7D
	ldrb r0, [r3, #0x00]
	adds r0, #0x01
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	bhi _08070964
	ldr r2, _08070978 @ =0x083B873C
	ldr r0, _0807097C @ =0x03000E7C
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	ldrb r3, [r3, #0x00]
	adds r0, r0, r3
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	bne _08070980
_08070964:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	b _08070982
_08070974: .4byte 0x03000E7D
_08070978: .4byte dword_83B873C @ =0x083B873C
_0807097C: .4byte 0x03000E7C
_08070980:
	ldr r0, _0807098C @ =0x08070991
_08070982:
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807098C: .4byte sub_8070990
