	.syntax unified
	.text

	thumb_func_start sub_8059F80
sub_8059F80:
	push {lr}
	ldr r0, _08059F98 @ =0x0300034C
	ldr r1, _08059F9C @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08059FA4
	ldr r2, _08059FA0 @ =0x088D4808
	b _08059FA6
	.byte 0x00, 0x00
_08059F98: .4byte 0x0300034C
_08059F9C: .4byte 0x00000888
_08059FA0: .4byte 0x088D4808
_08059FA4:
	ldr r2, _08059FCC @ =0x088C8730
_08059FA6:
	ldr r1, _08059FD0 @ =0x083AAD68
	ldr r0, _08059FD4 @ =0x03000DD0
	ldrb r0, [r0, #0x05]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r0, r2, r0
	ldr r1, _08059FD8 @ =0x02000080
	movs r2, #0x78
	bl CpuFastSet
	ldr r1, _08059FDC @ =0x0300034C
	ldr r0, _08059FE0 @ =0x00007FFF
	strh r0, [r1, #0x02]
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08059FCC: .4byte 0x088C8730
_08059FD0: .4byte 0x083AAD68
_08059FD4: .4byte 0x03000DD0
_08059FD8: .4byte 0x02000080
_08059FDC: .4byte 0x0300034C
_08059FE0: .4byte 0x00007FFF
