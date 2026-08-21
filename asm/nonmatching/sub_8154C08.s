	.syntax unified
	.text

	thumb_func_start sub_8154C08
sub_8154C08:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x20]
	cmp r0, #0x01
	beq _08154C1C
	cmp r0, #0x01
	ble _08154C94
	cmp r0, #0x02
	beq _08154C58
	b _08154C94
_08154C1C:
	ldr r0, [r4, #0x24]
	subs r0, #0x01
	str r0, [r4, #0x24]
	cmp r0, #0x00
	bgt _08154C2C
	movs r0, #0x00
	str r0, [r4, #0x20]
	b _08154C94
_08154C2C:
	ldr r0, [r4, #0x28]
	movs r1, #0x04
	subs r1, r1, r0
	str r1, [r4, #0x28]
	ldr r2, [r4, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, #0x02
	adds r1, r1, r0
	strh r1, [r2, #0x00]
	ldr r2, [r4, #0x04]
	ldrh r1, [r2, #0x00]
	subs r1, #0x02
	ldr r0, [r4, #0x28]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r4, #0x08]
	ldrh r1, [r2, #0x00]
	subs r1, #0x02
	ldr r0, [r4, #0x28]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	b _08154C94
_08154C58:
	ldr r0, [r4, #0x24]
	subs r0, #0x01
	str r0, [r4, #0x24]
	cmp r0, #0x00
	bgt _08154C72
	movs r0, #0x00
	str r0, [r4, #0x34]
	str r0, [r4, #0x30]
	str r0, [r4, #0x20]
	adds r0, r4, #0x0
	bl sub_8158258
	b _08154C94
_08154C72:
	ldr r0, [r4, #0x34]
	subs r0, #0x01
	str r0, [r4, #0x34]
	cmp r0, #0x00
	bge _08154C8E
	ldr r0, [r4, #0x30]
	movs r1, #0x0A
	subs r1, r1, r0
	str r1, [r4, #0x30]
	movs r0, #0x05
	str r0, [r4, #0x34]
	adds r0, r4, #0x0
	bl sub_8158258
_08154C8E:
	ldr r0, [r4, #0x2C]
	adds r0, #0x01
	str r0, [r4, #0x2C]
_08154C94:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
