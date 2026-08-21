	.syntax unified
	.text

	thumb_func_start sub_806B340
sub_806B340:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806B382
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806B356
	adds r1, #0xFF
_0806B356:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806B360
	adds r2, #0xFF
_0806B360:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806B36A
	adds r3, #0xFF
_0806B36A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806B38C @ =0x00000D82
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x58
	bl stop_sfx_80195A8
	movs r0, #0x00
_0806B382:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806B38C: .4byte 0x00000D82
