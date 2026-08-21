	.syntax unified
	.text

	thumb_func_start sub_8077140
sub_8077140:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077154
	adds r1, #0xFF
_08077154:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807715E
	adds r2, #0xFF
_0807715E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077168
	adds r3, #0xFF
_08077168:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077184 @ =0x000025B9
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08077184: .4byte 0x000025B9
