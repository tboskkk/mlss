	.syntax unified
	.text

	thumb_func_start sub_8158258
sub_8158258:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r6, [r4, #0x00]
	ldr r0, [r4, #0x1C]
	movs r1, #0x64
	bl __divsi3
	adds r1, r0, #0x0
	ldr r0, [r4, #0x30]
	adds r1, r1, r0
	movs r5, #0x00
	str r5, [sp, #0x000]
	adds r0, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r6, [r4, #0x04]
	ldr r0, [r4, #0x1C]
	movs r1, #0x0A
	bl __divsi3
	movs r1, #0x0A
	bl __modsi3
	adds r1, r0, #0x0
	ldr r0, [r4, #0x30]
	adds r1, r1, r0
	str r5, [sp, #0x000]
	adds r0, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r6, [r4, #0x08]
	ldr r0, [r4, #0x1C]
	movs r1, #0x0A
	bl __modsi3
	adds r1, r0, #0x0
	ldr r0, [r4, #0x30]
	adds r1, r1, r0
	str r5, [sp, #0x000]
	adds r0, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
