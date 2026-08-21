	.syntax unified
	.text

	thumb_func_start sub_80A0740
sub_80A0740:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080A0752
	adds r1, #0xFF
_080A0752:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080A075C
	adds r2, #0xFF
_080A075C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080A0766
	adds r3, #0xFF
_080A0766:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080A0784 @ =0x00002ADB
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_810DD7C
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080A0784: .4byte 0x00002ADB
