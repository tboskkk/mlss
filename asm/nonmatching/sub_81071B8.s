	.syntax unified
	.text

	thumb_func_start sub_81071B8
sub_81071B8:
	push {lr}
	adds r2, r0, #0x0
	movs r1, #0x18
	ldsh r0, [r2, r1]
	cmp r0, #0x01
	beq _081071CE
	movs r1, #0x0E
	cmp r0, #0x02
	bne _081071D0
	movs r1, #0x08
	b _081071D0
_081071CE:
	movs r1, #0x00
_081071D0:
	strh r1, [r2, #0x16]
	ldr r0, _081071E8 @ =0x08107151
	str r0, [r2, #0x04]
	ldr r1, _081071EC @ =0x084FCE8C
	ldrh r0, [r2, #0x16]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	bl sub_8082898
	pop {r0}
	bx r0
_081071E8: .4byte sub_8107150
_081071EC: .4byte 0x084FCE8C
