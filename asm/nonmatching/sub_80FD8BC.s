	.syntax unified
	.text

	thumb_func_start sub_80FD8BC
sub_80FD8BC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r4, _080FD8FC @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r5, #0x04
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080FD950
	bl sub_810C950
	ldr r2, [r4, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080FD904
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	movs r6, #0x28
	movs r5, #0x7C
	ldr r2, _080FD900 @ =0x00002039
	b _080FD914
	.byte 0x00, 0x00
_080FD8FC: .4byte 0x03000FD8
_080FD900: .4byte 0x00002039
_080FD904:
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	movs r6, #0x36
	movs r5, #0x5C
	ldr r2, _080FD958 @ =0x00002068
_080FD914:
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	movs r2, #0x20
	bl sub_808842C
	ldr r1, _080FD95C @ =0x08106F8D
	str r1, [r7, #0x04]
	adds r0, r7, #0x0
	bl _call_via_r1
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
_080FD950:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FD958: .4byte 0x00002068
_080FD95C: .4byte sub_8106F8C
