	push {lr}
	ldr r2, _080FC1E4 @ =0x03000FFC
	ldr r0, _080FC1E8 @ =0x03000D40
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r1, r0, #0x03
	subs r1, r1, r0
	lsls r1, r1, #0x05
	subs r1, r1, r0
	lsls r1, r1, #0x03
	adds r1, #0x10
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	ldr r2, _080FC1EC @ =0x040000D4
	movs r3, #0xEE
	lsls r3, r3, #0x01
	adds r1, r0, r3
	str r1, [r2, #0x00]
	ldr r1, _080FC1F0 @ =0x03000FC0
	ldr r3, [r1, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x20
	str r1, [r2, #0x04]
	ldr r1, _080FC1F4 @ =0x840000DB
	str r1, [r2, #0x08]
	ldr r1, [r2, #0x08]
	movs r1, #0xA9
	lsls r1, r1, #0x03
	adds r0, r0, r1
	movs r2, #0xE5
	lsls r2, r2, #0x02
	adds r1, r3, r2
	movs r2, #0xD4
	bl CpuSet
	pop {r0}
	bx r0
_080FC1E4: .4byte 0x03000FFC
_080FC1E8: .4byte 0x03000D40
_080FC1EC: .4byte 0x040000D4
_080FC1F0: .4byte 0x03000FC0
_080FC1F4: .4byte 0x840000DB
