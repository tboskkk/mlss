	.syntax unified
	.text

	thumb_func_start sub_809EBDC
sub_809EBDC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x2C]
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0809EBFE
	adds r0, r4, #0x0
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809EBFE:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _0809EC1A
	adds r0, r4, #0x0
	movs r1, #0x15
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809EC1A:
	ldr r0, _0809EC24 @ =0x0809E5E5
	str r0, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_0809EC24: .4byte sub_809E5E4
