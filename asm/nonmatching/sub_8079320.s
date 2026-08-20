	.syntax unified
	.text

	thumb_func_start sub_8079320
sub_8079320:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807933E
	str r0, [r1, #0x4C]
	ldr r2, [r1, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xA4
	movs r1, #0x02
	str r1, [r0, #0x00]
	ldr r3, _08079344 @ =0x00000113
	adds r0, r2, r3
	strb r1, [r0, #0x00]
_0807933E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079344: .4byte 0x00000113
