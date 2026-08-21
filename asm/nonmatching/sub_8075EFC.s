	.syntax unified
	.text

	thumb_func_start sub_8075EFC
sub_8075EFC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08075F3E
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075F12
	adds r1, #0xFF
_08075F12:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075F1C
	adds r2, #0xFF
_08075F1C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075F26
	adds r3, #0xFF
_08075F26:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075F48 @ =0x00002423
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x8C
	bl stop_sfx_80195A8
	movs r0, #0x00
_08075F3E:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08075F48: .4byte 0x00002423
