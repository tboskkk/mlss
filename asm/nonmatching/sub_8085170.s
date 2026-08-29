	push {r4, r5, lr}
	adds r5, r2, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r4, r1, #0x02
	adds r4, r4, r1
	lsls r4, r4, #0x02
	adds r4, r0, r4
	lsrs r2, r5, #0x04
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_80846A4
	movs r1, #0x0F
	ands r1, r5
	lsls r0, r1, #0x04
	adds r0, r0, r1
	lsls r1, r0, #0x08
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	ldr r3, _080851B0 @ =0x03001034
	ldr r1, [r4, #0x0C]
	ldrh r2, [r4, #0x04]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x0D
	ldr r3, [r3, #0x00]
	bl _call_via_r3
	pop {r4, r5}
	pop {r0}
	bx r0
_080851B0: .4byte 0x03001034
