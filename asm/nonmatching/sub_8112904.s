	.syntax unified
	.text

	thumb_func_start sub_8112904
sub_8112904:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0811292C
	ldr r1, [r2, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	bgt _0811292C
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0811292C:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08112978
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08112940
	adds r1, #0xFF
_08112940:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0811294A
	adds r2, #0xFF
_0811294A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08112954
	adds r3, #0xFF
_08112954:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08112980 @ =0x00002764
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x88
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0xA3
	adds r1, r4, #0x0
	bl play_sfx_80195B4
_08112978:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08112980: .4byte 0x00002764
