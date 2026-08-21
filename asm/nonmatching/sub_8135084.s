	.syntax unified
	.text

	thumb_func_start sub_8135084
sub_8135084:
	push {r4, r5, r6, lr}
	add sp, #-0x088
	adds r4, r0, #0x0
	movs r0, #0x00
	movs r6, #0x80
	lsls r6, r6, #0x01
	ldr r5, _0813510C @ =0x08CDC470
	str r5, [sp, #0x040]
	str r1, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	str r0, [sp, #0x010]
	str r2, [sp, #0x014]
	str r0, [sp, #0x018]
	str r0, [sp, #0x01C]
	str r0, [sp, #0x020]
	str r0, [sp, #0x024]
	str r3, [sp, #0x028]
	str r0, [sp, #0x02C]
	str r0, [sp, #0x030]
	str r0, [sp, #0x034]
	str r0, [sp, #0x038]
	str r6, [sp, #0x03C]
	add r0, sp, #0x044
	adds r1, r4, #0x0
	mov r2, sp
	bl sub_8134CAC
	add r1, sp, #0x044
	ldr r0, [sp, #0x044]
	str r0, [r4, #0x00]
	ldr r0, [sp, #0x048]
	str r0, [r4, #0x04]
	ldr r0, [sp, #0x04C]
	str r0, [r4, #0x08]
	ldr r0, [sp, #0x050]
	str r0, [r4, #0x0C]
	ldr r0, [sp, #0x054]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x058]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x05C]
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x060]
	str r0, [r4, #0x1C]
	ldr r0, [sp, #0x064]
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x068]
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x06C]
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x070]
	str r0, [r4, #0x2C]
	ldr r0, [sp, #0x074]
	str r0, [r4, #0x30]
	ldr r0, [sp, #0x078]
	str r0, [r4, #0x34]
	ldr r0, [sp, #0x07C]
	str r0, [r4, #0x38]
	ldr r0, [r1, #0x3C]
	str r0, [r4, #0x3C]
	str r5, [r1, #0x40]
	str r5, [sp, #0x040]
	add sp, #0x088
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0813510C: .4byte 0x08CDC470
