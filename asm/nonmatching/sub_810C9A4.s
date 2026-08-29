	.syntax unified
	.text

	thumb_func_start sub_810C9A4
sub_810C9A4:
	push {r4, r5, r6, lr}
	ldr r6, _0810C9D8 @ =0x03000FD8
	ldr r1, [r6, #0x00]
	lsls r5, r0, #0x02
	movs r0, #0xA1
	lsls r0, r0, #0x02
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r4, [r1, #0x00]
	cmp r4, #0x00
	beq _0810C9D0
	ldr r0, [r4, #0x08]
	bl sub_807FB34
	ldr r0, [r6, #0x00]
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	adds r0, r0, r5
	movs r1, #0x00
	str r1, [r0, #0x00]
	str r1, [r4, #0x04]
_0810C9D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810C9D8: .4byte 0x03000FD8
