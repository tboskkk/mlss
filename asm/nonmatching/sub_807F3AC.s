	.syntax unified
	.text

	thumb_func_start sub_807F3AC
sub_807F3AC:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	ldr r5, [r4, #0x28]
	cmp r5, #0x00
	beq _0807F43C
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	bne _0807F3C4
	adds r4, r5, #0x0
	adds r4, #0x08
_0807F3C4:
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0807F3CC
	adds r0, #0xFF
_0807F3CC:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0807F3E4
	adds r0, #0xFF
_0807F3E4:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC5
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_810E03C
	adds r1, r4, #0x0
	adds r1, #0xB8
	ldr r0, _0807F434 @ =0x00000193
	strh r0, [r1, #0x00]
	ldr r1, _0807F438 @ =0x00000111
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0807F43C
	adds r0, r5, #0x0
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0807F43C
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086700
	movs r0, #0x01
	negs r0, r0
	b _0807F43E
	.byte 0x00, 0x00
_0807F434: .4byte 0x00000193
_0807F438: .4byte 0x00000111
_0807F43C:
	movs r0, #0x00
_0807F43E:
	add sp, #0x00C
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
