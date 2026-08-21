	.syntax unified
	.text

	thumb_func_start sub_81580A4
sub_81580A4:
	push {r4, lr}
	add sp, #-0x004
	ldr r2, [r0, #0x4C]
	ldr r0, _081580D4 @ =0x03001018
	ldr r3, [r0, #0x00]
	ldr r4, _081580D8 @ =0x00001CB8
	adds r0, r3, r4
	ldr r2, [r2, #0x04]
	ldr r0, [r0, #0x00]
	subs r2, r2, r0
	asrs r2, r2, #0x08
	ldr r0, _081580DC @ =0x00001CA8
	adds r3, r3, r0
	ldr r0, [r3, #0x00]
	movs r3, #0x01
	str r3, [sp, #0x000]
	movs r3, #0x50
	bl sub_81649AC
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081580D4: .4byte 0x03001018
_081580D8: .4byte 0x00001CB8
_081580DC: .4byte 0x00001CA8
