	.syntax unified
	.text

	thumb_func_start sub_806F5F0
sub_806F5F0:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r4, _0806F648 @ =0x08198504
	adds r3, r2, #0x0
	adds r3, #0x8C
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _0806F602
	adds r0, #0xFF
_0806F602:
	asrs r0, r0, #0x08
	subs r0, #0x40
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0806F618
	adds r0, #0x3F
_0806F618:
	asrs r1, r0, #0x06
	lsls r1, r1, #0x01
	movs r0, #0xE0
	lsls r0, r0, #0x04
	subs r0, r0, r1
	str r0, [r2, #0x18]
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _0806F62C
	adds r0, #0xFF
_0806F62C:
	asrs r0, r0, #0x08
	movs r1, #0x7F
	ands r0, r1
	cmp r0, #0x3F
	bhi _0806F650
	ldr r0, [r2, #0x10]
	ldr r1, _0806F64C @ =0xFFFFFE67
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r3, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	b _0806F65E
	.byte 0x00, 0x00
_0806F648: .4byte 0x08198504
_0806F64C: .4byte 0xFFFFFE67
_0806F650:
	ldr r0, [r2, #0x10]
	ldr r1, _0806F684 @ =0xFFFFFECD
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r3, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
_0806F65E:
	adds r0, r0, r1
	str r0, [r3, #0x00]
	ldr r1, [r2, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	strh r0, [r1, #0x0C]
	ldr r0, [r2, #0x28]
	adds r0, #0xD8
	ldr r1, [r2, #0x10]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0806F67E
	str r0, [r2, #0x10]
	ldr r0, _0806F688 @ =0x0806F68D
	str r0, [r2, #0x4C]
_0806F67E:
	pop {r4}
	pop {r0}
	bx r0
_0806F684: .4byte 0xFFFFFECD
_0806F688: .4byte sub_806F68C
