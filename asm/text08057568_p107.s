	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81581FC
sub_81581FC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0815820C
	bl sub_8021308
_0815820C:
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _0815821A
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_0815821A:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8158220
sub_8158220:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r1, #0x1E
	str r1, [r4, #0x1C]
	movs r5, #0x00
	str r5, [r4, #0x0C]
	movs r0, #0xF0
	lsls r0, r0, #0x06
	str r0, [r4, #0x10]
	ldr r2, _08158254 @ =0x03001038
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x0C
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	str r0, [r4, #0x14]
	str r5, [r4, #0x18]
	str r5, [r4, #0x04]
	strh r5, [r4, #0x00]
	strh r5, [r4, #0x08]
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08158254: .4byte 0x03001038
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
