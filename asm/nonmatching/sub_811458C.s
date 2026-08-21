	.syntax unified
	.text

	thumb_func_start sub_811458C
sub_811458C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x30]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x20
	strh r0, [r1, #0x00]
	ldr r0, _081145C0 @ =0x081135C1
	str r0, [r4, #0x50]
	ldr r0, _081145C4 @ =0x081141F5
	str r0, [r4, #0x4C]
	movs r0, #0x90
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
_081145C0: .4byte sub_81135C0
_081145C4: .4byte 0x081141F5
