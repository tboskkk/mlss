	.syntax unified
	.text

	thumb_func_start sub_816B384
sub_816B384:
	push {r4, lr}
	ldr r4, _0816B3B0 @ =0x0400001C
	ldr r0, _0816B3B4 @ =0x03001030
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x00]
	strh r0, [r4, #0x00]
	ldr r2, _0816B3B8 @ =0x0400001E
	ldrh r0, [r1, #0x02]
	strh r0, [r2, #0x00]
	adds r2, #0x92
	ldr r3, _0816B3BC @ =0x040000BA
	movs r0, #0x00
	strh r0, [r3, #0x00]
	adds r1, #0x04
	str r1, [r2, #0x00]
	str r4, [r2, #0x04]
	ldr r0, _0816B3C0 @ =0xA6600001
	str r0, [r2, #0x08]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816B3B0: .4byte 0x0400001C
_0816B3B4: .4byte 0x03001030
_0816B3B8: .4byte 0x0400001E
_0816B3BC: .4byte 0x040000BA
_0816B3C0: .4byte 0xA6600001
