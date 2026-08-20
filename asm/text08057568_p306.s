	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_819A928
sub_819A928:
	ldr r1, _0819A958 @ =0x04000080
	movs r0, #0x77
	strb r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x8F
	strb r0, [r1, #0x00]
	ldr r2, _0819A95C @ =0x04000082
	ldrh r1, [r2, #0x00]
	ldr r0, _0819A960 @ =0x0000FFFC
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _0819A964 @ =0x04000065
	movs r0, #0x80
	strb r0, [r1, #0x00]
	ldr r0, _0819A968 @ =0x03007FF0
	ldr r0, [r0, #0x00]
	movs r1, #0x9F
	lsls r1, r1, #0x03
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	bx lr
_0819A958: .4byte 0x04000080
_0819A95C: .4byte 0x04000082
_0819A960: .4byte 0x0000FFFC
_0819A964: .4byte 0x04000065
_0819A968: .4byte 0x03007FF0
	thumb_func_start sub_819A96C
sub_819A96C:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x18
	movs r1, #0xFF
	lsls r1, r1, #0x10
	ands r1, r0
	lsrs r4, r1, #0x10
	subs r3, #0x24
	cmp r3, #0x00
	blt _0819A9AC
	ldr r2, _0819A9A8 @ =0x0821C9A8
	lsls r0, r3, #0x01
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	subs r0, r0, r1
	muls r0, r4
	lsrs r0, r0, #0x08
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0819A9AE
	.byte 0x00, 0x00
_0819A9A8: .4byte 0x0821C9A8
_0819A9AC:
	movs r0, #0x00
_0819A9AE:
	pop {r4}
	pop {r1}
	bx r1
