	.syntax unified
	.text

	thumb_func_start sub_8061754
sub_8061754:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80614B4
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08061784
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r2, [r0, #0x00]
	ldr r1, _0806178C @ =0x083B869C
	lsls r0, r2, #0x03
	adds r0, r0, r2
	lsls r0, r0, #0x02
	adds r1, #0x1C
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	ldr r0, _08061790 @ =0x08061831
	str r0, [r4, #0x4C]
_08061784:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806178C: .4byte 0x083B869C
_08061790: .4byte sub_8061830
