	.syntax unified
	.text

	thumb_func_start sub_8096F60
sub_8096F60:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _08096F88 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r3, r0, #0x0
	adds r3, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r0, #0x00
	ble _08096F8C
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _08096FB8
_08096F88: .4byte 0x03000FD8
_08096F8C:
	ldr r2, _08096FC0 @ =0x00002039
	adds r0, r3, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _08096FC4 @ =0x00002068
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08096FC8 @ =0x08096FCD
	str r0, [r4, #0x4C]
_08096FB8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08096FC0: .4byte 0x00002039
_08096FC4: .4byte 0x00002068
_08096FC8: .4byte sub_8096FCC
