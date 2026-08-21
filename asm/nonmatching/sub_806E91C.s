	.syntax unified
	.text

	thumb_func_start sub_806E91C
sub_806E91C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806E97C
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x6C
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806E95A
	adds r1, #0xFF
_0806E95A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806E964
	adds r2, #0xFF
_0806E964:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806E96E
	adds r3, #0xFF
_0806E96E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806E984 @ =0x00001FA6
	bl sub_80DF024
	ldr r0, _0806E988 @ =0x0806DBD5
	str r0, [r4, #0x4C]
_0806E97C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806E984: .4byte 0x00001FA6
_0806E988: .4byte sub_806DBD4
