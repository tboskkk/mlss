	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_814EDAC
sub_814EDAC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r6, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r5, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r5, #0x08
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x08]
	movs r0, #0x01
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x0A]
	adds r5, #0x02
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x0C]
	adds r5, #0x01
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x0E]
	adds r5, #0x01
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r1, r6, r0
	adds r0, r5, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r5, #0x08
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x28]
	movs r0, #0x01
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x2A]
	adds r5, #0x02
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x2C]
	movs r0, #0x01
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x2E]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
