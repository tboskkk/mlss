	.syntax unified
	.text

	thumb_func_start sub_810D468
sub_810D468:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _0810D4B8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	movs r3, #0x10
	ldsh r0, [r0, r3]
	lsls r0, r0, #0x02
	movs r4, #0xBF
	lsls r4, r4, #0x02
	adds r3, r1, r4
	adds r3, r3, r0
	ldr r0, [r3, #0x00]
	ldr r5, [r1, #0x7C]
	ldr r2, [r5, #0x44]
	ldr r6, _0810D4BC @ =0xFFFFF800
	adds r2, r2, r6
	movs r4, #0x00
	movs r6, #0xC3
	lsls r6, r6, #0x02
	adds r1, r1, r6
	str r0, [r1, #0x00]
	str r4, [r3, #0x00]
	ldr r1, [r5, #0x40]
	ldr r3, _0810D4C0 @ =0xFFFFE000
	adds r1, r1, r3
	movs r3, #0xE0
	lsls r3, r3, #0x06
	str r3, [sp, #0x000]
	movs r3, #0x00
	bl sub_8109CF4
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0810D4B8: .4byte 0x03000FD8
_0810D4BC: .4byte 0xFFFFF800
_0810D4C0: .4byte 0xFFFFE000
