	.syntax unified
	.text

	thumb_func_start sub_8158490
sub_8158490:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [sp, #0x00C]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	beq _081584F2
	cmp r0, #0x04
	beq _08158502
	ldrh r0, [r4, #0x1C]
	ldrh r2, [r4, #0x14]
	adds r0, r0, r2
	strh r0, [r4, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4, #0x20]
	adds r1, r1, r0
	ldrh r0, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r1, #0x14
	ldsh r0, [r4, r1]
	ldr r1, [r4, #0x04]
	adds r1, r1, r0
	str r1, [r4, #0x04]
	movs r0, #0x18
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r2
	str r0, [r4, #0x08]
	adds r0, r5, #0x0
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	ldr r1, [r4, #0x08]
	cmp r1, r0
	ble _08158510
	ldr r1, [r4, #0x04]
	adds r0, r5, #0x0
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	str r0, [r4, #0x08]
	b _08158510
_081584F2:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	b _08158510
_08158502:
	ldr r1, [r4, #0x30]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x3C]
	bl _call_via_r1
_08158510:
	movs r0, #0x00
	pop {r4, r5}
	pop {r1}
	bx r1
