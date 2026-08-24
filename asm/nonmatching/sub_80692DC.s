	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x10]
	subs r0, #0x80
	str r0, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0xA4
	ldr r0, [r4, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _08069342
	movs r0, #0x00
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08069312
	adds r1, #0xFF
_08069312:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0806931C
	adds r0, #0xFF
_0806931C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08069328
	adds r3, #0xFF
_08069328:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806934C @ =0x00001CA8
	bl sub_80DF024
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08069350 @ =0x08069451
	str r0, [r4, #0x4C]
_08069342:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806934C: .4byte 0x00001CA8
_08069350: .4byte sub_8069450
