	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8112630
sub_8112630:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081126A4
	adds r0, r4, #0x0
	movs r1, #0x0B
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
	ldr r0, _081126AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x40]
	cmp r0, #0x00
	bne _0811267A
	adds r5, r4, #0x0
	adds r5, #0xA8
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bne _0811267A
	ldr r0, _081126B0 @ =0x08112841
	bl sub_8112350
	movs r0, #0x01
	str r0, [r5, #0x00]
_0811267A:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08112682
	adds r1, #0xFF
_08112682:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0811268C
	adds r2, #0xFF
_0811268C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08112696
	adds r3, #0xFF
_08112696:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _081126B4 @ =0x00002689
	bl sub_80DF024
	ldr r0, _081126B8 @ =0x08112899
	str r0, [r4, #0x4C]
_081126A4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_081126AC: .4byte 0x03000FD8
_081126B0: .4byte sub_8112840
_081126B4: .4byte 0x00002689
_081126B8: .4byte sub_8112898
