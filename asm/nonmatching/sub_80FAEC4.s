	.syntax unified
	.text

	thumb_func_start sub_80FAEC4
sub_80FAEC4:
	push {r4, lr}
	adds r4, r1, #0x0
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r0, #0x14]
	bl sub_8120E90
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _080FAEE6
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r2, #0x02
	eors r1, r2
	strh r1, [r0, #0x00]
_080FAEE6:
	pop {r4}
	pop {r0}
	bx r0
