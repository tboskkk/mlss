	.syntax unified
	.text

	thumb_func_start sub_81DCE9C
sub_81DCE9C:
	adds r2, r0, #0x0
	ldr r0, _081DCEB0 @ =0x08CDBD64
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x04]
	movs r3, #0x0E
	ldsh r0, [r0, r3]
	cmp r2, r0
	bne _081DCEB8
	ldr r0, _081DCEB4 @ =0x03001A6C
	b _081DCEDE
_081DCEB0: .4byte 0x08CDBD64
_081DCEB4: .4byte 0x03001A6C
_081DCEB8:
	ldr r0, [r1, #0x08]
	movs r3, #0x0E
	ldsh r0, [r0, r3]
	cmp r2, r0
	bne _081DCECC
	ldr r0, _081DCEC8 @ =0x03001A70
	b _081DCEDE
	.byte 0x00, 0x00
_081DCEC8: .4byte 0x03001A70
_081DCECC:
	ldr r0, [r1, #0x0C]
	movs r1, #0x0E
	ldsh r0, [r0, r1]
	cmp r2, r0
	beq _081DCEDC
	adds r0, r2, #0x0
	subs r0, #0x20
	b _081DCEE0
_081DCEDC:
	ldr r0, _081DCEE4 @ =0x03001A74
_081DCEDE:
	ldr r0, [r0, #0x00]
_081DCEE0:
	bx lr
	.byte 0x00, 0x00
_081DCEE4: .4byte 0x03001A74
