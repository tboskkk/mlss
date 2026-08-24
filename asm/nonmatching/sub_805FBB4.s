	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r3, r6, #0x0
	adds r3, #0xA4
	adds r0, #0x84
	ldr r1, [r3, #0x00]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r5, r6, #0x0
	adds r5, #0xA8
	adds r0, r6, #0x0
	adds r0, #0x88
	ldr r2, [r5, #0x00]
	ldr r0, [r0, #0x00]
	subs r2, r2, r0
	adds r4, r6, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	strh r0, [r4, #0x00]
	movs r7, #0x00
	ldsh r0, [r4, r7]
	ldr r4, [r6, #0x10]
	subs r4, r4, r0
	str r4, [r6, #0x10]
	ldr r0, [r3, #0x00]
	subs r0, r4, r0
	muls r0, r2
	bl __divsi3
	ldr r1, [r5, #0x00]
	adds r1, r0, r1
	str r1, [r6, #0x14]
	cmp r4, #0x00
	bge _0805FBFE
	adds r4, #0xFF
_0805FBFE:
	asrs r0, r4, #0x08
	str r0, [sp, #0x004]
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _0805FC0A
	adds r0, #0xFF
_0805FC0A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _0805FC16
	adds r0, #0xFF
_0805FC16:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	add r1, sp, #0x008
	add r2, sp, #0x00C
	add r0, sp, #0x004
	movs r3, #0x00
	bl sub_807FC08
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0B
	ble _0805FC62
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0805FC44
	adds r1, #0xFF
_0805FC44:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0805FC4E
	adds r2, #0xFF
_0805FC4E:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0805FC58
	adds r3, #0xFF
_0805FC58:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0805FC7C @ =0x00000E7A
	bl sub_80DF024
_0805FC62:
	ldr r1, [sp, #0x004]
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _0805FC72
	adds r0, r6, #0x0
	bl sub_807C298
_0805FC72:
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805FC7C: .4byte 0x00000E7A
