	.syntax unified
	.text

	thumb_func_start sub_80903A0
sub_80903A0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080903BC
	adds r0, r4, #0x0
	bl sub_8090420
	b _080903CA
_080903BC:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _080903CA
	adds r0, r4, #0x0
	bl sub_80903DC
_080903CA:
	ldr r0, _080903D8 @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080903D8: .4byte sub_8087540
