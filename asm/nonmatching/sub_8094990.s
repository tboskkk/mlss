	.syntax unified
	.text

	thumb_func_start sub_8094990
sub_8094990:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080949AC
	adds r0, r4, #0x0
	bl sub_8094778
	b _080949BA
_080949AC:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _080949BA
	adds r0, r4, #0x0
	bl sub_8094818
_080949BA:
	ldr r0, _080949C8 @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080949C8: .4byte sub_8087540
