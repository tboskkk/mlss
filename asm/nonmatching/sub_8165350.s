	push {r4, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, _0816536C @ =0x0800261C
	ldr r4, _08165370 @ =0x080022A4
	subs r3, r3, r4
	ldr r4, [r0, #0x20]
	adds r4, r4, r3
	ldr r0, [r0, #0x04]
	bl _call_via_r4
	pop {r4}
	pop {r0}
	bx r0
_0816536C: .4byte 0x0800261C
_08165370: .4byte 0x080022A4
