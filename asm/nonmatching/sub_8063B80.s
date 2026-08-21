	.syntax unified
	.text

	thumb_func_start sub_8063B80
sub_8063B80:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086C64
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _08063B9A
	ldr r0, _08063BA4 @ =0x08063C25
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x10
	str r0, [r1, #0x00]
_08063B9A:
	adds r0, r2, #0x0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08063BA4: .4byte sub_8063C24
