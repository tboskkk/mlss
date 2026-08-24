	.syntax unified
	.text

	thumb_func_start sub_8158464
sub_8158464:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	bl sub_815F8F4
	ldr r0, _0815848C @ =0x08CDC5B0
	str r0, [r4, #0x30]
	movs r0, #0x00
	strh r5, [r4, #0x34]
	strh r0, [r4, #0x36]
	strh r0, [r4, #0x38]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_0815848C: .4byte dword_8CDC5B0 @ =0x08CDC5B0
