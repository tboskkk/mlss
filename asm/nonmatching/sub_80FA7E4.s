	.syntax unified
	.text

	thumb_func_start sub_80FA7E4
sub_80FA7E4:
	push {lr}
	adds r2, r1, #0x0
	ldr r0, [r0, #0x24]
	ldr r1, _080FA804 @ =0x000009A2
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	ldr r0, _080FA808 @ =0x03000C80
	ldrb r0, [r0, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	bne _080FA80C
	movs r0, #0x01
	b _080FA812
	.byte 0x00, 0x00
_080FA804: .4byte 0x000009A2
_080FA808: .4byte 0x03000C80
_080FA80C:
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x00]
	movs r0, #0x00
_080FA812:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
