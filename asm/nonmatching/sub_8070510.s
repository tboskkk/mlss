	.syntax unified
	.text

	thumb_func_start sub_8070510
sub_8070510:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807052A
	adds r0, r2, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r1, #0x01
	str r1, [r0, #0x00]
	ldr r0, _08070530 @ =0x08070535
	str r0, [r2, #0x4C]
_0807052A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070530: .4byte sub_8070534
