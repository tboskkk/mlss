	.syntax unified
	.text

	thumb_func_start sub_8148CF8
sub_8148CF8:
	push {r4, r5, lr}
	adds r5, r2, #0x0
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r1, r0
	ldr r1, [r4, #0x00]
	ldr r0, _08148D38 @ =0x0000023B
	adds r2, r1, r0
	movs r0, #0xF0
	strb r0, [r2, #0x00]
	adds r0, #0xE4
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3B
	bls _08148D32
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	bl sub_804776C
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _08148D3C @ =0x08147441
	str r0, [r5, #0x00]
_08148D32:
	pop {r4, r5}
	pop {r0}
	bx r0
_08148D38: .4byte 0x0000023B
_08148D3C: .4byte sub_8147440
