	.syntax unified
	.text

	thumb_func_start sub_8134AA8
sub_8134AA8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r5, #0x10
	bl sub_8134B24
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08134ABC
	movs r0, #0x01
	b _08134B12
_08134ABC:
	ldrh r0, [r4, #0x02]
	adds r0, #0x01
	strh r0, [r4, #0x02]
	ldrh r0, [r4, #0x00]
	cmp r0, #0x01
	beq _08134AE6
	cmp r0, #0x01
	bgt _08134AD2
	cmp r0, #0x00
	beq _08134ADC
	b _08134AF6
_08134AD2:
	cmp r0, #0x02
	beq _08134ADC
	cmp r0, #0x03
	beq _08134AE6
	b _08134AF6
_08134ADC:
	ldrh r2, [r4, #0x04]
	ldrh r3, [r4, #0x02]
	movs r0, #0x10
	movs r1, #0x00
	b _08134AEE
_08134AE6:
	ldrh r2, [r4, #0x04]
	ldrh r3, [r4, #0x02]
	movs r0, #0x00
	movs r1, #0x10
_08134AEE:
	bl sub_8134BD0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08134AF6:
	ldr r2, _08134B18 @ =0x04000050
	ldr r1, _08134B1C @ =0x08212560
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	ldr r0, _08134B20 @ =0x04000054
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8134B24
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_08134B12:
	pop {r4, r5}
	pop {r1}
	bx r1
_08134B18: .4byte 0x04000050
_08134B1C: .4byte 0x08212560
_08134B20: .4byte 0x04000054
