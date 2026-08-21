	.syntax unified
	.text

	thumb_func_start sub_80775A4
sub_80775A4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077602
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080775FE
	ldr r5, _0807760C @ =0x000024E0
_080775CA:
	ldr r3, [r4, #0x30]
	ldr r1, [r3, #0x38]
	cmp r1, #0x00
	bge _080775D4
	adds r1, #0xFF
_080775D4:
	asrs r1, r1, #0x08
	ldr r2, [r3, #0x3C]
	cmp r2, #0x00
	bge _080775DE
	adds r2, #0xFF
_080775DE:
	asrs r2, r2, #0x08
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _080775E8
	adds r3, #0xFF
_080775E8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_80DF024
	ldr r0, [r4, #0x30]
	bl sub_807C298
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _080775CA
_080775FE:
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08077602:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807760C: .4byte 0x000024E0
