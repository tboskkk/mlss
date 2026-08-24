	.syntax unified
	.text

	thumb_func_start sub_8114404
sub_8114404:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08114472
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08114422
	adds r2, #0xFF
_08114422:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0811442C
	adds r3, #0xFF
_0811442C:
	asrs r3, r3, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x20
	negs r1, r1
	bl sub_808843C
	ldr r1, _0811447C @ =0x0820114C
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08114480 @ =0x081146DD
	str r0, [r4, #0x58]
	ldr r0, _08114484 @ =0x08113CD5
	str r0, [r4, #0x60]
	ldr r0, _08114488 @ =0x08113E21
	str r0, [r4, #0x4C]
	movs r0, #0x86
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08114472:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0811447C: .4byte dword_820114C @ =0x0820114C
_08114480: .4byte sub_81146DC
_08114484: .4byte sub_8113CD4
_08114488: .4byte sub_8113E20
