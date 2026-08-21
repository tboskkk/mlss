	.syntax unified
	.text

	thumb_func_start sub_8165484
sub_8165484:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r0, #0x6C
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _081654AE
	lsrs r0, r0, #0x11
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081654A6
	adds r0, r4, #0x0
	bl sub_8163A24
	b _081654B4
_081654A6:
	adds r0, r4, #0x0
	bl sub_8163A44
	b _081654B4
_081654AE:
	adds r0, r4, #0x0
	bl sub_8163A44
_081654B4:
	adds r0, r4, #0x0
	bl sub_8161DA0
	ldr r0, [r4, #0x3C]
	ldr r1, _081654D8 @ =0xFFFFF800
	adds r0, r0, r1
	cmp r5, r0
	bge _081654DC
	ldr r2, [r4, #0x10]
	ldrb r0, [r2, #0x1F]
	movs r1, #0xC0
	orrs r0, r1
	movs r1, #0x30
	orrs r0, r1
	movs r1, #0x0C
	orrs r0, r1
	movs r1, #0x03
	b _08165504
_081654D8: .4byte 0xFFFFF800
_081654DC:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x04
	negs r1, r1
	ands r0, r1
	movs r1, #0x02
_08165504:
	orrs r0, r1
	strb r0, [r2, #0x1F]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
