	.syntax unified
	.text

	thumb_func_start sub_810D098
sub_810D098:
	push {lr}
	add sp, #-0x004
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, r1, #0x0
	ldr r0, _0810D0D0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0xAF
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x13
	bls _0810D0E0
	ldr r0, _0810D0D4 @ =0x03000FDC
	lsls r1, r1, #0x09
	ldr r2, _0810D0D8 @ =0x00004E70
	adds r1, r1, r2
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0810D0DC @ =0x060113A0
	movs r2, #0x80
	lsls r2, r2, #0x01
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	b _0810D10A
_0810D0D0: .4byte 0x03000FD8
_0810D0D4: .4byte 0x03000FDC
_0810D0D8: .4byte 0x00004E70
_0810D0DC: .4byte 0x060113A0
_0810D0E0:
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x11
	bhi _0810D10A
	ldr r0, _0810D110 @ =0x03000FDC
	lsls r1, r2, #0x04
	adds r1, #0x08
	lsls r1, r1, #0x05
	ldr r3, _0810D114 @ =0x00004E70
	adds r1, r1, r3
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0810D118 @ =0x060113A0
	movs r2, #0x80
	lsls r2, r2, #0x01
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
_0810D10A:
	add sp, #0x004
	pop {r0}
	bx r0
_0810D110: .4byte 0x03000FDC
_0810D114: .4byte 0x00004E70
_0810D118: .4byte 0x060113A0
