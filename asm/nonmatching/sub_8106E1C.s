	.syntax unified
	.text

	thumb_func_start sub_8106E1C
sub_8106E1C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08106E50 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08106E48
	ldr r4, [r1, #0x7C]
	bl nullsub_4
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8081E2C
	ldr r0, _08106E54 @ =0x08100D19
	str r0, [r5, #0x04]
	movs r0, #0x04
	bl sub_80F75D8
_08106E48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106E50: .4byte 0x03000FD8
_08106E54: .4byte sub_8100D18
