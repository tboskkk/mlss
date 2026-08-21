	.syntax unified
	.text

	thumb_func_start sub_8081D04
sub_8081D04:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	adds r0, r4, #0x0
	bl sub_8081444
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08081D20
	adds r0, #0xFF
_08081D20:
	asrs r1, r0, #0x08
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08081D2E
	adds r0, #0xFF
_08081D2E:
	asrs r2, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r2, [r4, #0x40]
	cmp r2, #0x00
	bge _08081D46
	adds r2, #0xFF
_08081D46:
	asrs r2, r2, #0x08
	adds r2, #0x20
	adds r0, r4, #0x0
	movs r1, #0xC0
	lsls r1, r1, #0x03
	bl sub_808842C
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x14
	strh r0, [r5, #0x10]
	ldr r0, _08081D80 @ =0x08082205
	str r0, [r5, #0x04]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08081D80: .4byte sub_8082204
