	.syntax unified
	.text

	thumb_func_start sub_80612FC
sub_80612FC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	ldr r0, _0806134C @ =0x00003FFF
	cmp r1, r0
	bhi _0806131A
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x40]
	cmp r0, #0x00
	ble _0806131A
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x01
	str r0, [r1, #0x00]
_0806131A:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08061346
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, _08061350 @ =0x080610D5
	str r0, [r4, #0x4C]
_08061346:
	pop {r4}
	pop {r0}
	bx r0
_0806134C: .4byte 0x00003FFF
_08061350: .4byte sub_80610D4
