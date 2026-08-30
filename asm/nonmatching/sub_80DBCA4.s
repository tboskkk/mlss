	.syntax unified
	.text

	thumb_func_start sub_80DBCA4
sub_80DBCA4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DBCCA
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	adds r0, #0x0C
	strh r1, [r0, #0x00]
	ldr r0, _080DBCD0 @ =0x080DB8D9
	str r0, [r4, #0x4C]
_080DBCCA:
	pop {r4}
	pop {r0}
	bx r0
_080DBCD0: .4byte sub_80DB8D8
