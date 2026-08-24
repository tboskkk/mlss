	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08060E3C
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08060E12
	adds r1, #0xFF
_08060E12:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08060E1C
	adds r2, #0xFF
_08060E1C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08060E26
	adds r3, #0xFF
_08060E26:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08060E44 @ =0x0000124C
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	ldr r0, _08060E48 @ =0x08060E7D
	str r0, [r4, #0x4C]
_08060E3C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08060E44: .4byte 0x0000124C
_08060E48: .4byte 0x08060E7D
