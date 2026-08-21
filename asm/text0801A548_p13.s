	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80290E0
sub_80290E0:
	push {r4, r5, r6, lr}
	adds r1, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0xF0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08029116
	ldr r5, [r1, #0x24]
	ldr r6, _0802911C @ =0x02000080
	adds r4, r2, #0x0
_080290F4:
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08029108
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x08
	bl CpuFastSet
_08029108:
	adds r5, #0x20
	adds r6, #0x20
	ldr r0, [r4, #0x00]
	lsrs r0, r0, #0x01
	str r0, [r4, #0x00]
	cmp r0, #0x00
	bne _080290F4
_08029116:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0802911C: .4byte 0x02000080
	thumb_func_start sub_8029120
sub_8029120:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	lsls r1, r1, #0x10
	orrs r4, r1
	ldr r3, _0802916C @ =0x02000080
	ldr r5, [r0, #0x24]
	movs r7, #0x01
	cmp r4, #0x00
	beq _08029162
	adds r6, r0, #0x0
	adds r6, #0xF0
_0802913A:
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _08029156
	adds r0, r3, #0x0
	adds r1, r5, #0x0
	movs r2, #0x08
	str r3, [sp, #0x000]
	bl CpuFastSet
	ldr r0, [r6, #0x00]
	orrs r0, r7
	str r0, [r6, #0x00]
	ldr r3, [sp, #0x000]
_08029156:
	adds r3, #0x20
	adds r5, #0x20
	lsls r7, r7, #0x01
	lsrs r4, r4, #0x01
	cmp r4, #0x00
	bne _0802913A
_08029162:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0802916C: .4byte 0x02000080
