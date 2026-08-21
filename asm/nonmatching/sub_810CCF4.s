	.syntax unified
	.text

	thumb_func_start sub_810CCF4
sub_810CCF4:
	push {r4, r5, lr}
	ldr r5, _0810CD2C @ =0x03000FD8
	ldr r3, [r5, #0x00]
	movs r0, #0xA3
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	beq _0810CD26
	movs r0, #0x00
	str r0, [r2, #0x00]
	str r0, [r1, #0x04]
	movs r4, #0x94
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x02
	bl sub_8085260
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x03
	bl sub_8085260
_0810CD26:
	pop {r4, r5}
	pop {r0}
	bx r0
_0810CD2C: .4byte 0x03000FD8
