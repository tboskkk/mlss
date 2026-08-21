	.syntax unified
	.text

	thumb_func_start sub_806AF80
sub_806AF80:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806AFC0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806AF9E
	adds r1, #0xFF
_0806AF9E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806AFA8
	adds r2, #0xFF
_0806AFA8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806AFB2
	adds r3, #0xFF
_0806AFB2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806AFE4 @ =0x00000DB2
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806AFC0:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806AFDC
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x14
	strh r1, [r0, #0x00]
	ldr r0, _0806AFE8 @ =0x0806AFED
	str r0, [r4, #0x4C]
_0806AFDC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806AFE4: .4byte 0x00000DB2
_0806AFE8: .4byte sub_806AFEC
