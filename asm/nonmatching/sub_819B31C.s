	.syntax unified
	.text

	thumb_func_start sub_819B31C
sub_819B31C:
	push {r4, lr}
	b _0819B3EE
_0819B320:
	ldr r1, [r3, #0x00]
	adds r2, r1, r2
	movs r3, #0x00
	ldsh r0, [r2, r3]
	lsls r0, r0, #0x01
	movs r4, #0x90
	lsls r4, r4, #0x03
	adds r1, r1, r4
	adds r1, r1, r0
	ldrh r3, [r1, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, #0x01
	movs r1, #0x07
	ands r0, r1
	strh r0, [r2, #0x00]
	lsrs r0, r3, #0x0C
	cmp r0, #0x09
	bhi _0819B3EE
	lsls r0, r0, #0x02
	ldr r1, _0819B350 @ =lbl_0819B354
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0819B350: .4byte lbl_0819B354
lbl_0819B354:
	.4byte _0819B37C
	.4byte _0819B38E
	.4byte _0819B39A
	.4byte _0819B3EE
	.4byte _0819B3EE
	.4byte _0819B3B8
	.4byte _0819B3C8
	.4byte _0819B3D8
	.4byte _0819B3DE
	.4byte _0819B3A6
_0819B37C:
	lsrs r0, r3, #8
	movs r1, #15
	ands r0, r1
	movs r1, #255 @ 0xff
	ands r3, r1
	adds r1, r3, #0
	bl sub_819B110
	b.n _0819B3EE
_0819B38E:
	lsrs r0, r3, #8
	movs r1, #15
	ands r0, r1
	bl sub_819B0AC
	b.n _0819B3EE
_0819B39A:
	lsrs r0, r3, #8
	movs r1, #15
	ands r0, r1
	bl sub_819B19C
	b.n _0819B3EE
_0819B3A6:
	lsrs r0, r3, #8
	movs r1, #15
	ands r0, r1
	movs r1, #255 @ 0xff
	ands r3, r1
	adds r1, r3, #0
	bl sub_819B1B8
	b.n _0819B3EE
_0819B3B8:
	ldr r0, [pc, #8] @ (0x819b3c4)
	ands r3, r0
	adds r0, r3, #0
	bl sub_819B22C
	b.n _0819B3EE
	lsrs r7, r7, #31
	movs r0, r0
_0819B3C8:
	ldr r0, [pc, #8] @ (0x819b3d4)
	ands r3, r0
	adds r0, r3, #0
	bl sub_819B290
	b.n _0819B3EE
	lsrs r7, r7, #31
	movs r0, r0
_0819B3D8:
	bl sub_819B2E0
	b.n _0819B3EE
_0819B3DE:
	lsrs r0, r3, #8
	movs r1, #15
	ands r0, r1
	movs r1, #255 @ 0xff
	ands r3, r1
	adds r1, r3, #0
	bl sub_819B0F8
_0819B3EE:
	ldr r3, _0819B410 @ =0x03007FF0
	ldr r0, [r3, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x03
	adds r1, r0, r2
	ldr r4, _0819B414 @ =0x00000492
	adds r0, r0, r4
	movs r4, #0x00
	ldsh r1, [r1, r4]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	bne _0819B320
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0819B410: .4byte 0x03007FF0
_0819B414: .4byte 0x00000492
