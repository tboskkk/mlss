	.syntax unified
	.text

	thumb_func_start sub_810C950
sub_810C950:
	push {r4, r5, lr}
	ldr r5, _0810C9A0 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0810C976
	ldr r0, [r4, #0x08]
	bl sub_807FB34
	ldr r0, [r5, #0x00]
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
	str r1, [r4, #0x04]
_0810C976:
	ldr r0, [r5, #0x00]
	movs r1, #0xA2
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0810C998
	ldr r0, [r4, #0x08]
	bl sub_807FB34
	ldr r0, [r5, #0x00]
	movs r1, #0xA2
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
	str r1, [r4, #0x04]
_0810C998:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810C9A0: .4byte 0x03000FD8
