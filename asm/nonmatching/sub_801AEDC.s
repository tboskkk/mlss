	.syntax unified
	.text

	thumb_func_start sub_801AEDC
sub_801AEDC:
	push {r4, r5, r6, lr}
	ldr r0, _0801AF14 @ =0x03000D18
	ldr r0, [r0, #0x08]
	lsrs r4, r0, #0x04
	movs r5, #0x0F
	ands r5, r0
	lsrs r3, r4, #0x18
	movs r0, #0x06
	movs r6, #0x0F
_0801AEEE:
	subs r0, #0x01
	lsls r2, r0, #0x02
	adds r1, r4, #0x0
	lsrs r1, r2
	ands r1, r6
	eors r3, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x00
	bne _0801AEEE
	adds r1, r3, #0x0
	eors r1, r5
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0801AF14: .4byte 0x03000D18
