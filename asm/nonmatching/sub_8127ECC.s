	.syntax unified
	.text

	thumb_func_start sub_8127ECC
sub_8127ECC:
	push {r4, lr}
	adds r4, r1, #0x0
	lsls r3, r0, #0x02
	ldr r2, _08127EF4 @ =0x08A57994
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	adds r1, r0, r2
	cmp r4, #0x00
	beq _08127EEA
	adds r0, r2, #0x4
	adds r0, r3, r0
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	subs r0, r0, r1
	str r0, [r4, #0x00]
_08127EEA:
	adds r0, r1, #0x0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08127EF4: .4byte 0x08A57994
