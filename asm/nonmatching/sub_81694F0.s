	.syntax unified
	.text

	thumb_func_start sub_81694F0
sub_81694F0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x0C]
	bl sub_8163A6C
	ldr r2, [r4, #0x04]
	ldr r0, [r4, #0x00]
	cmp r2, r0
	bge _0816953A
	ldr r1, [r4, #0x08]
	cmp r1, #0x00
	beq _0816951A
	subs r0, r1, #0x1
	str r0, [r4, #0x08]
	adds r0, r2, #0x4
	str r0, [r4, #0x04]
	ldr r0, [r4, #0x0C]
	adds r0, #0x56
	movs r1, #0x01
	b _08169522
_0816951A:
	adds r0, r2, #0x1
	str r0, [r4, #0x04]
	ldr r0, [r4, #0x0C]
	adds r0, #0x56
_08169522:
	strh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	movs r1, #0xE0
	lsls r1, r1, #0x08
	ldr r2, [r4, #0x00]
	ldr r3, [r4, #0x04]
	bl sub_8163E0C
	ldr r1, [r4, #0x0C]
	str r0, [r1, #0x18]
	b _08169542
_0816953A:
	ldr r0, [r4, #0x0C]
	adds r0, #0x56
	movs r1, #0x00
	strh r1, [r0, #0x00]
_08169542:
	ldr r3, [r4, #0x0C]
	adds r2, r3, #0x0
	adds r2, #0x56
	adds r1, r3, #0x0
	adds r1, #0x58
	ldrh r0, [r2, #0x00]
	ldrh r1, [r1, #0x00]
	cmp r0, r1
	beq _08169580
	adds r2, r0, #0x0
	cmp r2, #0x00
	beq _08169560
	cmp r2, #0x01
	beq _08169570
	b _08169580
_08169560:
	ldr r0, [r3, #0x10]
	str r2, [sp, #0x000]
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	b _08169580
_08169570:
	ldr r0, [r3, #0x10]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
_08169580:
	ldr r0, [r4, #0x0C]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8161C9C
	ldr r0, [r4, #0x0C]
	ldr r1, [r0, #0x10]
	movs r0, #0x00
	strh r0, [r1, #0x0E]
	ldr r0, [r4, #0x10]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8161C9C
	ldr r0, [r4, #0x10]
	ldr r1, [r0, #0x10]
	movs r0, #0x04
	strh r0, [r1, #0x0E]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
