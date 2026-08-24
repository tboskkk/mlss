	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _0811484C @ =0x0811488D
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x30]
	ldr r4, [r0, #0x30]
	ldr r0, _08114850 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r0, #0x02
	lsls r0, r0, #0x02
	adds r1, #0x80
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	str r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08114808
	adds r0, #0xFF
_08114808:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x1C
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0811481A
	adds r0, #0xFF
_0811481A:
	asrs r0, r0, #0x08
	adds r2, r0, #0x1
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0811482A
	adds r0, #0xFF
_0811482A:
	asrs r3, r0, #0x08
	adds r3, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0811484C: .4byte sub_811488C
_08114850: .4byte 0x03000FD8
