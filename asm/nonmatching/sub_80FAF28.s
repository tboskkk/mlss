	.syntax unified
	.text

	thumb_func_start sub_80FAF28
sub_80FAF28:
	push {r4, lr}
	adds r3, r0, #0x0
	ldr r0, [r3, #0x24]
	ldr r1, _080FAF70 @ =0x000009A3
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080FAF62
	movs r2, #0x0C
	ldr r0, [r3, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r4, #0x00
_080FAF4A:
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080FAF54
	adds r0, #0x20
	strb r4, [r0, #0x00]
_080FAF54:
	adds r1, #0x40
	lsls r0, r2, #0x10
	ldr r2, _080FAF74 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	cmp r0, #0x00
	bgt _080FAF4A
_080FAF62:
	adds r0, r3, #0x0
	bl sub_80FAE34
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FAF70: .4byte 0x000009A3
_080FAF74: .4byte 0xFFFF0000
