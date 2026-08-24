	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x30]
	cmp r0, #0x00
	bne _08074720
	ldr r0, _0807471C @ =0x080744B5
	b _0807473A
	.byte 0x00, 0x00
_0807471C: .4byte sub_80744B4
_08074720:
	adds r1, r2, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x8F
	ble _0807473C
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x96
	lsls r1, r1, #0x01
	strh r1, [r0, #0x00]
	ldr r0, _08074740 @ =0x08073E4D
_0807473A:
	str r0, [r2, #0x4C]
_0807473C:
	pop {r0}
	bx r0
_08074740: .4byte sub_8073E4C
