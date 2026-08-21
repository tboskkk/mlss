	.syntax unified
	.text

	thumb_func_start sub_8063B58
sub_8063B58:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08063B74
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063B7C @ =0x08063569
	str r0, [r4, #0x4C]
_08063B74:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063B7C: .4byte sub_8063568
