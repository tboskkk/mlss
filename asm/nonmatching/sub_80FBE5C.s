	.syntax unified
	.text

	thumb_func_start sub_80FBE5C
sub_80FBE5C:
	push {lr}
	ldr r0, [r1, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080FBE74
	movs r0, #0x00
	b _080FBE76
_080FBE74:
	movs r0, #0x01
_080FBE76:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
