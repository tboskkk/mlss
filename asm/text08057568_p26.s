	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81582CC
sub_81582CC:
	push {lr}
	adds r2, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r2, #0x1C]
	adds r0, r0, r1
	cmp r0, #0x00
	bge _081582E0
	movs r0, #0x00
_081582E0:
	str r0, [r2, #0x1C]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bge _081582F2
	movs r0, #0x64
	str r0, [r2, #0x24]
	movs r0, #0x01
	b _081582FC
_081582F2:
	cmp r0, #0x00
	ble _081582FE
	movs r0, #0x64
	str r0, [r2, #0x24]
	movs r0, #0x02
_081582FC:
	str r0, [r2, #0x20]
_081582FE:
	adds r0, r2, #0x0
	bl sub_8158258
	pop {r0}
	bx r0
