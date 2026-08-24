	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_810DD7C
	adds r5, r0, #0x0
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809F114
	adds r1, #0xFF
_0809F114:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809F11E
	adds r2, #0xFF
_0809F11E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809F128
	adds r3, #0xFF
_0809F128:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809F144 @ =0x00002651
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	adds r0, r5, #0x0
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0809F144: .4byte 0x00002651
