	.syntax unified
	.text

	thumb_func_start sub_8082A28
sub_8082A28:
	push {lr}
	ldr r2, _08082A3C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08082A40
	movs r0, #0x01
	b _08082A68
_08082A3C: .4byte 0x03000FD8
_08082A40:
	ldr r0, _08082A4C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r3, _08082A50 @ =0x00003660
	adds r1, r0, r3
	b _08082A56
	.byte 0x00, 0x00
_08082A4C: .4byte 0x03000FDC
_08082A50: .4byte 0x00003660
_08082A54:
	subs r1, #0x08
_08082A56:
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08082A54
	ldr r0, [r2, #0x00]
	movs r2, #0xFA
	lsls r2, r2, #0x01
	adds r0, r0, r2
	str r1, [r0, #0x00]
	movs r0, #0x00
_08082A68:
	pop {r1}
	bx r1
