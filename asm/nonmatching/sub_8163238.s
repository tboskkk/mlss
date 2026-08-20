	.syntax unified
	.text

	thumb_func_start sub_8163238
sub_8163238:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [sp, #0x00C]
	ldr r0, [r5, #0x00]
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x14]
	str r1, [r5, #0x08]
	str r2, [r5, #0x0C]
	str r3, [r5, #0x28]
	movs r0, #0x00
	str r0, [r5, #0x2C]
	cmp r4, #0x00
	bne _08163258
	movs r0, #0x01
	b _0816325A
_08163258:
	movs r0, #0x02
_0816325A:
	str r0, [r5, #0x24]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
