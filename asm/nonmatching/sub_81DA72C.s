	.syntax unified
	.text

	thumb_func_start sub_81DA72C
sub_81DA72C:
	push {r4, r5, r6, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _081DA78C @ =0x04000208
	ldrh r3, [r4, #0x00]
	adds r6, r3, #0x0
	movs r3, #0x00
	strh r3, [r4, #0x00]
	ldr r5, _081DA790 @ =0x04000204
	ldrh r4, [r5, #0x00]
	ldr r3, _081DA794 @ =0x0000F8FF
	ands r4, r3
	ldr r3, _081DA798 @ =0x03001BD0
	ldr r3, [r3, #0x00]
	ldrh r3, [r3, #0x06]
	orrs r4, r3
	strh r4, [r5, #0x00]
	ldr r3, _081DA79C @ =0x040000D4
	str r0, [r3, #0x00]
	ldr r0, _081DA7A0 @ =0x040000D8
	str r1, [r0, #0x00]
	ldr r1, _081DA7A4 @ =0x040000DC
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1, #0x00]
	adds r1, #0x02
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r2, #0x0
	ldrh r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x00
	beq _081DA780
	ldr r2, _081DA7A8 @ =0x040000DE
	movs r0, #0x80
	lsls r0, r0, #0x08
	adds r1, r0, #0x0
_081DA778:
	ldrh r0, [r2, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _081DA778
_081DA780:
	ldr r0, _081DA78C @ =0x04000208
	strh r6, [r0, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081DA78C: .4byte 0x04000208
_081DA790: .4byte 0x04000204
_081DA794: .4byte 0x0000F8FF
_081DA798: .4byte 0x03001BD0
_081DA79C: .4byte 0x040000D4
_081DA7A0: .4byte 0x040000D8
_081DA7A4: .4byte 0x040000DC
_081DA7A8: .4byte 0x040000DE
