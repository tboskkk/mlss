	.syntax unified
	.text

	thumb_func_start sub_81592EC
sub_81592EC:
	push {r4, lr}
	ldr r1, _08159338 @ =0x04000040
	ldr r0, _0815933C @ =0x03001014
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x00]
	ldr r4, _08159340 @ =0x03001018
	ldr r0, [r4, #0x00]
	adds r0, #0x1C
	bl sub_8160E4C
	ldr r0, [r4, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x04
	adds r0, r0, r1
	bl sub_8160E4C
	ldr r4, [r4, #0x00]
	ldr r3, _08159344 @ =0x00001CC4
	adds r0, r4, r3
	ldrh r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08159326
	ldr r1, _08159348 @ =0x00001064
	adds r0, r4, r1
	bl sub_8160E4C
_08159326:
	ldr r2, _0815934C @ =0x0300034C
	ldrh r1, [r2, #0x02]
	ldr r3, _08159350 @ =0x00007FFF
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x02]
	pop {r4}
	pop {r0}
	bx r0
_08159338: .4byte 0x04000040
_0815933C: .4byte 0x03001014
_08159340: .4byte 0x03001018
_08159344: .4byte 0x00001CC4
_08159348: .4byte 0x00001064
_0815934C: .4byte 0x0300034C
_08159350: .4byte 0x00007FFF
