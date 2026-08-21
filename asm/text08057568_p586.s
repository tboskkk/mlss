	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81395AC
sub_81395AC:
	push {r4, lr}
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	bl sub_8138610
	ldr r1, [r4, #0x0C]
	ldr r0, [r4, #0x34]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x38]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _081395E2
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _081395E4
_081395E2:
	ldr r1, _0813960C @ =0x0000FFFF
_081395E4:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r1, r0
	beq _081395FC
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0x0
	bl sub_80478AC
_081395FC:
	ldr r0, _08139610 @ =0x00000242
	adds r1, r4, r0
	movs r0, #0x01
	strh r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813960C: .4byte 0x0000FFFF
_08139610: .4byte 0x00000242
	thumb_func_start sub_8139614
sub_8139614:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08139648
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r1, _08139644 @ =0x000002B5
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08139672
	adds r0, r4, #0x0
	bl sub_8137FA4
	b _08139672
	.byte 0x00, 0x00
_08139644: .4byte 0x000002B5
_08139648:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	ldr r1, _08139678 @ =0x0813B1E9
	cmp r0, #0x00
	bne _08139670
	ldr r1, [r5, #0x04]
_08139670:
	str r1, [r5, #0x00]
_08139672:
	pop {r4, r5}
	pop {r0}
	bx r0
_08139678: .4byte sub_813B1E8
	thumb_func_start sub_813967C
sub_813967C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	bl sub_8137440
	adds r0, r4, #0x0
	bl sub_8137E50
	adds r0, r4, #0x0
	bl sub_8137FA4
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r0, _081396A4 @ =0x08139615
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_081396A4: .4byte sub_8139614
