	.syntax unified
	.text

	thumb_func_start sub_80797E0
sub_80797E0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0807983E
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r5, #0x01
	negs r5, r5
	movs r0, #0xE3
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08079808
	adds r1, #0xFF
_08079808:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08079812
	adds r2, #0xFF
_08079812:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807981C
	adds r3, #0xFF
_0807981C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08079848 @ =0x00002AA6
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xA4
	movs r1, #0x01
	str r1, [r0, #0x00]
	ldr r3, _0807984C @ =0x00000113
	adds r0, r2, r3
	strb r1, [r0, #0x00]
	adds r0, r5, #0x0
_0807983E:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08079848: .4byte 0x00002AA6
_0807984C: .4byte 0x00000113
