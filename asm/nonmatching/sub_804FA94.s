	.syntax unified
	.text

	thumb_func_start sub_804FA94
sub_804FA94:
	push {r4, lr}
	adds r3, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	ldr r2, [r3, #0x44]
	ldr r1, [r3, #0x08]
	cmp r1, #0x00
	bge _0804FAAA
	adds r1, #0xFF
_0804FAAA:
	asrs r1, r1, #0x08
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x00]
	ldr r2, [r3, #0x44]
	ldr r0, [r3, #0x0C]
	ldr r1, [r3, #0x10]
	subs r0, r0, r1
	ldr r1, [r3, #0x14]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0804FAC6
	adds r0, #0xFF
_0804FAC6:
	asrs r0, r0, #0x08
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r2, #0x02]
	ldr r4, [r3, #0x44]
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1C
	lsls r2, r0, #0x0C
	ldr r0, [r3, #0x0C]
	cmp r0, #0x00
	bge _0804FAE2
	adds r0, #0xFF
_0804FAE2:
	asrs r1, r0, #0x08
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r3, #0x0
	subs r0, r0, r1
	orrs r2, r0
	strh r2, [r4, #0x0E]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
