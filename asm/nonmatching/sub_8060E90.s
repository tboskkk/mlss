	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08060F5E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD9
	bl play_sfx_80195B4
	ldr r0, [r7, #0x2C]
	adds r6, r7, #0x0
	adds r6, #0x84
	ldr r5, [r0, #0x28]
	adds r1, r5, #0x0
	adds r1, #0xD8
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	ldr r4, [r1, #0x00]
	subs r0, r0, r4
	lsls r0, r0, #0x01
	movs r1, #0x03
	bl __divsi3
	adds r4, r4, r0
	str r4, [r6, #0x00]
	adds r6, #0x04
	adds r5, #0xDC
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	ldr r4, [r5, #0x00]
	subs r0, r0, r4
	lsls r0, r0, #0x01
	movs r1, #0x03
	bl __divsi3
	adds r4, r4, r0
	str r4, [r6, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x8C
	adds r0, r7, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	adds r0, #0x30
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xE0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	adds r0, r7, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _08060F3C
	adds r1, #0xFF
_08060F3C:
	asrs r1, r1, #0x08
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _08060F46
	adds r2, #0xFF
_08060F46:
	asrs r2, r2, #0x08
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _08060F50
	adds r3, #0xFF
_08060F50:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _08060F68 @ =0x00001071
	bl sub_80DF024
	ldr r0, _08060F6C @ =0x08061355
	str r0, [r7, #0x4C]
_08060F5E:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060F68: .4byte 0x00001071
_08060F6C: .4byte sub_8061354
