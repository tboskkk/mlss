	.syntax unified
	.text

	thumb_func_start sub_8074324
sub_8074324:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08074344
	adds r0, #0xFF
_08074344:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08074352
	adds r0, #0xFF
_08074352:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08074360
	adds r0, #0xFF
_08074360:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074388 @ =0x0000226E
	bl sub_80DF024
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_08074388: .4byte 0x0000226E
