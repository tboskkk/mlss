	.syntax unified
	.text

	thumb_func_start sub_80953D4
sub_80953D4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8088020
	ldrh r0, [r4, #0x20]
	subs r0, #0x01
	strh r0, [r4, #0x20]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _08095414
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080953F2
	adds r1, #0xFF
_080953F2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080953FC
	adds r2, #0xFF
_080953FC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08095406
	adds r3, #0xFF
_08095406:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08095454 @ =0x00001CE7
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r4, #0x20]
_08095414:
	ldr r0, [r4, #0x08]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r0, r4, #0x0
	adds r0, #0x45
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	cmp r0, #0x00
	ble _0809543A
	adds r0, r4, #0x0
	adds r0, #0x44
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	cmp r0, #0xEF
	ble _0809544C
_0809543A:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	ldr r0, _08095458 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
_0809544C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08095454: .4byte 0x00001CE7
_08095458: .4byte 0x03000FD8
	.byte 0x01, 0x49, 0xC1, 0x64, 0x70, 0x47, 0x00, 0x00, 0x1D, 0x55, 0x09, 0x08
