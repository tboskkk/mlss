	.syntax unified
	.text

	thumb_func_start sub_80E5058
sub_80E5058:
	push {r4, lr}
	ldr r0, _080E5074 @ =0x03000F9C
	ldr r0, [r0, #0x00]
	bl _call_via_r0
	ldr r0, _080E5078 @ =0x03000FA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	beq _080E509C
	cmp r0, #0x01
	bgt _080E507C
	cmp r0, #0x00
	beq _080E5094
	b _080E5084
_080E5074: .4byte 0x03000F9C
_080E5078: .4byte 0x03000FA0
_080E507C:
	cmp r0, #0x02
	beq _080E50A4
	cmp r0, #0x03
	beq _080E50AC
_080E5084:
	ldr r2, _080E508C @ =0x03000F94
	ldr r4, _080E5090 @ =0x03000F98
	b _080E50DE
	.byte 0x00, 0x00
_080E508C: .4byte 0x03000F94
_080E5090: .4byte 0x03000F98
_080E5094:
	ldr r2, _080E5098 @ =0x040000B0
	b _080E50AE
_080E5098: .4byte 0x040000B0
_080E509C:
	ldr r2, _080E50A0 @ =0x040000BC
	b _080E50AE
_080E50A0: .4byte 0x040000BC
_080E50A4:
	ldr r2, _080E50A8 @ =0x040000C8
	b _080E50AE
_080E50A8: .4byte 0x040000C8
_080E50AC:
	ldr r2, _080E50FC @ =0x040000D4
_080E50AE:
	ldrh r1, [r2, #0x0A]
	ldr r0, _080E5100 @ =0x0000C5FF
	ands r0, r1
	strh r0, [r2, #0x0A]
	ldrh r1, [r2, #0x0A]
	ldr r0, _080E5104 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x0A]
	ldrh r0, [r2, #0x0A]
	ldr r3, _080E5108 @ =0x03000F94
	ldr r4, _080E510C @ =0x03000F98
	ldr r0, [r4, #0x00]
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x07
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, _080E5110 @ =0x04000040
	str r0, [r2, #0x04]
	ldr r0, _080E5114 @ =0xA6600001
	str r0, [r2, #0x08]
	ldr r0, [r2, #0x08]
	adds r2, r3, #0x0
_080E50DE:
	ldr r3, _080E5110 @ =0x04000040
	ldr r1, [r4, #0x00]
	ldr r2, [r2, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x07
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	movs r0, #0x01
	eors r1, r0
	str r1, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_080E50FC: .4byte 0x040000D4
_080E5100: .4byte 0x0000C5FF
_080E5104: .4byte 0x00007FFF
_080E5108: .4byte 0x03000F94
_080E510C: .4byte 0x03000F98
_080E5110: .4byte 0x04000040
_080E5114: .4byte 0xA6600001
