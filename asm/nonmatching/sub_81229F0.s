	.syntax unified
	.text

	thumb_func_start sub_81229F0
sub_81229F0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08122A1C @ =0x0300034C
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r0, #0x07
	movs r1, #0x00
	bl sub_8127ECC
	movs r1, #0x84
	lsls r1, r1, #0x04
	adds r4, r4, r1
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8127E50
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08122A1C: .4byte 0x0300034C
