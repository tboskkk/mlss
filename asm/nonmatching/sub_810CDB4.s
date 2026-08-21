	.syntax unified
	.text

	thumb_func_start sub_810CDB4
sub_810CDB4:
	push {r4, r5, lr}
	ldr r5, _0810CDF4 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810CDEE
	movs r4, #0x94
	lsls r4, r4, #0x02
	adds r0, r1, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x04
	bl sub_8085260
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x05
	bl sub_8085260
	ldr r0, [r5, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r0, _0810CDF8 @ =0x0810CD99
	str r0, [r1, #0x04]
_0810CDEE:
	pop {r4, r5}
	pop {r0}
	bx r0
_0810CDF4: .4byte 0x03000FD8
_0810CDF8: .4byte 0x0810CD99
