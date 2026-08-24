	.syntax unified
	.text

	thumb_func_start sub_803C788
sub_803C788:
	push {r4, lr}
	add sp, #-0x004
	ldr r0, [r0, #0x1C]
	ldr r4, [r0, #0x10]
	ldr r2, _0803C7CC @ =0x0839F954
	movs r3, #0xDA
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldr r0, [r0, #0x00]
	ldrb r3, [r0, #0x02]
	adds r2, r3, r2
	ldrb r2, [r2, #0x00]
	lsls r2, r2, #0x05
	ldr r0, [r4, #0x08]
	adds r0, r0, r2
	adds r1, #0x54
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x0A
	ldr r2, _0803C7D0 @ =0x06010DC0
	adds r1, r1, r2
	ldr r2, _0803C7D4 @ =0x0839F962
	adds r3, r3, r2
	ldrb r2, [r3, #0x00]
	lsls r2, r2, #0x05
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0803C7CC: .4byte dword_839F954 @ =0x0839F954
_0803C7D0: .4byte 0x06010DC0
_0803C7D4: .4byte dword_839F962 @ =0x0839F962
