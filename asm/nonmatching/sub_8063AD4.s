	.syntax unified
	.text

	thumb_func_start sub_8063AD4
sub_8063AD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063B1A
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08063B1A
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08063B20 @ =0x00001471
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r0, _08063B24 @ =0x08063B81
	str r0, [r4, #0x5C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x83
	bl play_sfx_80195B4
	ldr r0, _08063B28 @ =0x08063BA9
	str r0, [r4, #0x4C]
_08063B1A:
	pop {r4}
	pop {r0}
	bx r0
_08063B20: .4byte 0x00001471
_08063B24: .4byte sub_8063B80
_08063B28: .4byte sub_8063BA8
