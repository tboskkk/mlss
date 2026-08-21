	.syntax unified
	.text

	thumb_func_start sub_805C5F4
sub_805C5F4:
	push {r4, r5, lr}
	ldr r2, _0805C62C @ =0x04000014
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r4, _0805C630 @ =0x03000E0C
	ldr r1, [r4, #0x00]
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x08]
	ldrh r0, [r1, #0x02]
	strh r0, [r2, #0x0A]
	ldr r0, _0805C634 @ =0x03000E08
	ldr r0, [r0, #0x00]
	movs r2, #0xA0
	bl CpuFastSet
	ldr r2, _0805C638 @ =0x040000B0
	ldr r1, _0805C63C @ =0x040000BA
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x02
	str r0, [r2, #0x00]
	str r5, [r2, #0x04]
	ldr r0, _0805C640 @ =0xA6400001
	str r0, [r2, #0x08]
	pop {r4, r5}
	pop {r0}
	bx r0
_0805C62C: .4byte 0x04000014
_0805C630: .4byte 0x03000E0C
_0805C634: .4byte 0x03000E08
_0805C638: .4byte 0x040000B0
_0805C63C: .4byte 0x040000BA
_0805C640: .4byte 0xA6400001
