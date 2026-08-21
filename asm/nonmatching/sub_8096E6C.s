	.syntax unified
	.text

	thumb_func_start sub_8096E6C
sub_8096E6C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	ble _08096E84
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _08096EAC
_08096E84:
	ldr r1, _08096EB4 @ =0x0000208C
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	ldr r1, [r4, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x30]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08096EB8 @ =0x080963E5
	str r0, [r4, #0x4C]
_08096EAC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08096EB4: .4byte 0x0000208C
_08096EB8: .4byte sub_80963E4
