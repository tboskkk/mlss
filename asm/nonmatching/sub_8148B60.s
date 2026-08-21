	.syntax unified
	.text

	thumb_func_start sub_8148B60
sub_8148B60:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r1, _08148BB4 @ =0x00000242
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	bl sub_813ADF0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _08148BAC
	movs r0, #0xBB
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	ldr r0, _08148BB8 @ =0x08147AD5
	str r0, [r5, #0x00]
_08148BAC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08148BB4: .4byte 0x00000242
_08148BB8: .4byte sub_8147AD4
