	.syntax unified
	.text

	thumb_func_start sub_810CCC8
sub_810CCC8:
	push {r4, lr}
	ldr r0, _0810CCEC @ =0x0810D625
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807D2D0
	adds r4, r0, #0x0
	movs r0, #0x00
	strh r0, [r4, #0x14]
	ldr r0, _0810CCF0 @ =0x0810D5F5
	movs r1, #0x18
	movs r2, #0x00
	bl sub_807D2D0
	str r4, [r0, #0x08]
	pop {r4}
	pop {r0}
	bx r0
_0810CCEC: .4byte sub_810D624
_0810CCF0: .4byte sub_810D5F4
