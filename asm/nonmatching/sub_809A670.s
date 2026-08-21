	.syntax unified
	.text

	thumb_func_start sub_809A670
sub_809A670:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	movs r1, #0x7F
	ands r0, r1
	movs r1, #0x01
	bl sub_80F7068
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0809A68C
	adds r1, #0xFF
_0809A68C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809A696
	adds r2, #0xFF
_0809A696:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0809A6A0
	adds r3, #0xFF
_0809A6A0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809A6C8 @ =0x00000F93
	bl sub_80DF024
	movs r0, #0xA9
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0809A6C8: .4byte 0x00000F93
