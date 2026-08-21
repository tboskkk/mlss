	.syntax unified
	.text

	thumb_func_start sub_809D91C
sub_809D91C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0809D980
	adds r0, r5, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8C
	lsls r0, r0, #0x01
	movs r4, #0x01
	negs r4, r4
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r0, _0809D988 @ =0x00000127
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0809D956
	adds r1, #0xFF
_0809D956:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0809D960
	adds r2, #0xFF
_0809D960:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0809D96A
	adds r3, #0xFF
_0809D96A:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809D98C @ =0x00001E8A
	bl sub_80DF024
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x96
	strh r0, [r1, #0x00]
	ldr r0, _0809D990 @ =0x0809D59D
	str r0, [r5, #0x4C]
_0809D980:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0809D988: .4byte 0x00000127
_0809D98C: .4byte 0x00001E8A
_0809D990: .4byte sub_809D59C
