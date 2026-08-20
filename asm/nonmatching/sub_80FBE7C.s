	.syntax unified
	.text

	thumb_func_start sub_80FBE7C
sub_80FBE7C:
	push {lr}
	ldr r0, [r1, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r1, r0, #0x1D
	lsrs r1, r1, #0x1F
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	ands r0, r1
	cmp r0, #0x00
	bne _080FBE9A
	movs r0, #0x01
	b _080FBE9C
_080FBE9A:
	movs r0, #0x00
_080FBE9C:
	pop {r1}
	bx r1
