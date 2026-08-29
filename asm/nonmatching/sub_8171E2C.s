	.syntax unified
	.text

	thumb_func_start sub_8171E2C
sub_8171E2C:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08171EA6
	adds r0, r1, #0x0
	adds r0, #0xAC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08171EA6
	adds r0, r1, #0x0
	adds r0, #0xB0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08171EA6
	adds r0, r1, #0x0
	adds r0, #0xB4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08171EA6
	adds r0, r1, #0x0
	adds r0, #0xB8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08171EA6
	adds r0, r1, #0x0
	adds r0, #0xBC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08171EA6
	adds r0, r1, #0x0
	adds r0, #0xC0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08171EA6
	adds r0, r1, #0x0
	adds r0, #0xC4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08171EA6
	adds r0, r1, #0x0
	adds r0, #0xC8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08171EA6
	adds r0, r1, #0x0
	adds r0, #0xCC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08171EA6
	adds r0, r1, #0x0
	adds r0, #0xD0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08171EA6
	adds r0, r1, #0x0
	adds r0, #0xD4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08171EAA
_08171EA6:
	movs r0, #0x01
	b _08171EAC
_08171EAA:
	movs r0, #0x00
_08171EAC:
	pop {r1}
	bx r1
