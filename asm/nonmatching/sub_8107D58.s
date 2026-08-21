	.syntax unified
	.text

	thumb_func_start sub_8107D58
sub_8107D58:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08107D6E
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8107F84
	b _08107E64
_08107D6E:
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08107D80
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8108084
	b _08107E64
_08107D80:
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x00
	beq _08107D96
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0x0
	adds r2, r3, #0x0
	bl sub_810857C
	b _08107E64
_08107D96:
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	beq _08107DAC
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0x0
	adds r2, r3, #0x0
	bl sub_81087F0
	b _08107E64
_08107DAC:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x00
	beq _08107DC2
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0x0
	adds r2, r3, #0x0
	bl sub_81086B4
	b _08107E64
_08107DC2:
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08107DD6
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8108180
	b _08107E64
_08107DD6:
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08107DEA
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_810835C
	b _08107E64
_08107DEA:
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _08107DFE
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_81083EC
	b _08107E64
_08107DFE:
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08107E12
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_81084B4
	b _08107E64
_08107E12:
	movs r0, #0x80
	lsls r0, r0, #0x05
	ands r0, r1
	cmp r0, #0x00
	beq _08107E26
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8108E3C
	b _08107E64
_08107E26:
	movs r0, #0x80
	lsls r0, r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	beq _08107E3A
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8108DE4
	b _08107E64
_08107E3A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	beq _08107E4E
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8108D8C
	b _08107E64
_08107E4E:
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08107E5C
	movs r0, #0x00
	b _08107E64
_08107E5C:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8108D2C
_08107E64:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
