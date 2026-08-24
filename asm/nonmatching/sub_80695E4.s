	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08069676
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069640
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806961A
	adds r1, #0xFF
_0806961A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08069624
	adds r2, #0xFF
_08069624:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806962E
	adds r3, #0xFF
_0806962E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806963C @ =0x00001D5A
	bl sub_80DF024
	b _08069672
	.byte 0x00, 0x00
_0806963C: .4byte 0x00001D5A
_08069640:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08069654
	adds r1, #0xFF
_08069654:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806965E
	adds r2, #0xFF
_0806965E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08069668
	adds r3, #0xFF
_08069668:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08069680 @ =0x00001D6E
	bl sub_80DF024
_08069672:
	ldr r0, _08069684 @ =0x08069689
	str r0, [r4, #0x4C]
_08069676:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08069680: .4byte 0x00001D6E
_08069684: .4byte sub_8069688
