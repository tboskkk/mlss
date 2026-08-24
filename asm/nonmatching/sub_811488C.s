	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081148AE
	movs r0, #0xD5
	bl stop_sfx_80195A8
	ldr r1, _081148B4 @ =0x081147B5
	str r1, [r4, #0x4C]
	adds r0, r4, #0x0
	bl _call_via_r1
_081148AE:
	pop {r4}
	pop {r0}
	bx r0
_081148B4: .4byte sub_81147B4
