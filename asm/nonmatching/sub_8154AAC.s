	.syntax unified
	.text

	thumb_func_start sub_8154AAC
sub_8154AAC:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	ldr r0, _08154ACC @ =0x03001018
	ldr r0, [r0, #0x00]
	ldr r1, _08154AD0 @ =0x00001C98
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r3, #0x38
	ldsh r1, [r2, r3]
	cmp r1, #0x01
	beq _08154AE6
	cmp r1, #0x01
	bgt _08154AD4
	cmp r1, #0x00
	beq _08154ADA
	b _08154B1E
_08154ACC: .4byte 0x03001018
_08154AD0: .4byte 0x00001C98
_08154AD4:
	cmp r1, #0x02
	beq _08154B18
	b _08154B1E
_08154ADA:
	movs r5, #0x14
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	ble _08154B1E
	movs r0, #0x01
	b _08154B1C
_08154AE6:
	ldrh r4, [r0, #0x14]
	movs r3, #0x14
	ldsh r1, [r0, r3]
	cmp r1, #0x00
	bne _08154B04
	ldr r0, [r0, #0x04]
	ldr r1, [r2, #0x04]
	subs r0, r0, r1
	ldr r1, _08154B00 @ =0x00003BFF
	cmp r0, r1
	bgt _08154B1E
	movs r0, #0x02
	b _08154B1C
_08154B00: .4byte 0x00003BFF
_08154B04:
	ldrh r3, [r2, #0x14]
	movs r5, #0x14
	ldsh r0, [r2, r5]
	cmp r0, r1
	blt _08154B12
	strh r4, [r2, #0x14]
	b _08154B1E
_08154B12:
	adds r0, r3, #0x2
	strh r0, [r2, #0x14]
	b _08154B1E
_08154B18:
	movs r0, #0x00
	strh r0, [r2, #0x14]
_08154B1C:
	strh r0, [r2, #0x38]
_08154B1E:
	pop {r4, r5}
	pop {r0}
	bx r0
