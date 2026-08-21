	.syntax unified
	.text

	thumb_func_start sub_803C610
sub_803C610:
	push {lr}
	ldr r0, _0803C634 @ =0x00000157
	bl stop_sfx_80195A8
	movs r0, #0x87
	bl stop_sfx_80195A8
	movs r0, #0xDB
	bl stop_sfx_80195A8
	movs r0, #0xDA
	bl stop_sfx_80195A8
	movs r0, #0xDA
	bl stop_sfx_80195A8
	pop {r0}
	bx r0
_0803C634: .4byte 0x00000157
