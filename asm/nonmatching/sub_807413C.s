	.syntax unified
	.text

	thumb_func_start sub_807413C
sub_807413C:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x71
	ble _0807415C
	movs r0, #0x72
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, #0xBA
	strh r0, [r1, #0x00]
	ldr r0, _08074160 @ =0x08074509
	str r0, [r2, #0x4C]
_0807415C:
	pop {r0}
	bx r0
_08074160: .4byte sub_8074508
