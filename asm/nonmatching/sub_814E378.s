	.syntax unified
	.text

	thumb_func_start sub_814E378
sub_814E378:
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r2, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r7, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r7, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldr r6, [r0, #0x00]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r6, #0x08
	movs r0, #0x00
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x08]
	movs r0, #0x01
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x0A]
	adds r6, #0x02
	movs r0, #0x00
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x0C]
	adds r6, #0x01
	movs r0, #0x00
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x0E]
	adds r6, #0x01
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r6, #0x08
	movs r0, #0x8C
	lsls r0, r0, #0x01
	adds r1, r7, r0
	adds r0, r6, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r6, #0x08
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r1, r7, r0
	adds r0, r6, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r6, #0x08
	movs r0, #0x00
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x28]
	movs r0, #0x01
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x2A]
	adds r6, #0x02
	movs r0, #0x00
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x2C]
	movs r0, #0x01
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x2E]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
