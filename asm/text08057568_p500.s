	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_814D968
sub_814D968:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r6, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r4, #0x08
	movs r0, #0x84
	lsls r0, r0, #0x01
	adds r1, r6, r0
	adds r0, r4, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r4, #0x08
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x10]
	movs r0, #0x01
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x12]
	adds r4, #0x02
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x14]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x16]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x18]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x1A]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x1C]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x1E]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x20]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x22]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x24]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x26]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x28]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x2A]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x2C]
	movs r0, #0x01
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x2E]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
