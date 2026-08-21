	.syntax unified
	.text

	thumb_func_start sub_8150734
sub_8150734:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08150754
	ldr r0, _08150750 @ =0x0814E061
	b _0815079A
	.byte 0x00, 0x00
_08150750: .4byte sub_814E060
_08150754:
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r1, [r0, #0x28]
	adds r0, r5, #0x0
	bl sub_814E820
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08150798
	mov r1, sp
	movs r2, #0x00
	mov r0, sp
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08150780
	movs r2, #0x01
_08150780:
	strb r2, [r1, #0x00]
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r1, [r0, #0x28]
	adds r0, r5, #0x0
	bl sub_814E820
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0815079C
_08150798:
	ldr r0, _081507A4 @ =0x081505A9
_0815079A:
	str r0, [r6, #0x00]
_0815079C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081507A4: .4byte sub_81505A8
