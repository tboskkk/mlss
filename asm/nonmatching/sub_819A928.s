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
