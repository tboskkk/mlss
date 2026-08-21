	.syntax unified
	.text

	thumb_func_start sub_807438C
sub_807438C:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _080743A8
	movs r0, #0x00
	str r0, [r2, #0x4C]
	adds r0, r2, #0x0
	bl sub_807C298
_080743A8:
	pop {r0}
	bx r0
