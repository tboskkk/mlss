	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80514C4
sub_80514C4:
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r6, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x98
	lsls r2, r2, #0x01
	adds r1, r6, r2
	adds r1, r1, r0
	ldrh r4, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r5, r5, r0
	movs r3, #0x00
	ldsh r2, [r5, r3]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_813A5C8
	ldr r0, _08051530 @ =0x00000242
	adds r3, r6, r0
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _08051534
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08051536
	.byte 0x00, 0x00
_08051530: .4byte 0x00000242
_08051534:
	movs r0, #0xFF
_08051536:
	strb r0, [r6, #0x02]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08051558 @ =0x0805155D
	str r0, [r7, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08051558: .4byte sub_805155C
	thumb_func_start sub_805155C
sub_805155C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8139F08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08051594
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _080515CC
_08051594:
	cmp r6, #0x00
	bne _080515CC
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r5, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r5, r1
	strh r6, [r0, #0x00]
	adds r2, #0x70
	adds r0, r5, r2
	strh r6, [r0, #0x00]
	ldr r0, _080515D4 @ =0x0813B1E9
	str r0, [r7, #0x00]
	ldr r0, _080515D8 @ =0x080514C5
	str r0, [r7, #0x0C]
_080515CC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080515D4: .4byte sub_813B1E8
_080515D8: .4byte sub_80514C4
	thumb_func_start sub_80515DC
sub_80515DC:
	push {r4, lr}
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08051600 @ =0x08051615
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _08051604 @ =0x080514C5
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08051600: .4byte sub_8051614
_08051604: .4byte sub_80514C4
	thumb_func_start sub_8051608
sub_8051608:
	push {lr}
	bl sub_80515DC
	pop {r0}
	bx r0
	.byte 0x00, 0x00
