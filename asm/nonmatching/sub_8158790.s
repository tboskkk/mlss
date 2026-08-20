	.syntax unified
	.text

	thumb_func_start sub_8158790
sub_8158790:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	adds r6, r3, #0x0
	adds r6, #0x24
	ldrb r0, [r6, #0x00]
	cmp r0, #0x01
	beq _081587A8
	cmp r0, #0x01
	ble _08158800
	cmp r0, #0x02
	beq _081587FC
	b _08158800
_081587A8:
	movs r4, #0x00
	ldr r5, _081587F0 @ =0x03001018
	ldr r0, [r5, #0x00]
	ldr r1, _081587F4 @ =0x00001C98
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldr r0, [r3, #0x04]
	ldr r1, [r2, #0x04]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _081587C8
	movs r4, #0x01
	adds r1, r2, #0x0
	adds r1, #0x24
	movs r0, #0x06
	strb r0, [r1, #0x00]
_081587C8:
	ldr r0, [r5, #0x00]
	ldr r1, _081587F8 @ =0x00001C9C
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldr r0, [r3, #0x04]
	ldr r1, [r2, #0x04]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _081587E4
	adds r4, #0x01
	adds r1, r2, #0x0
	adds r1, #0x24
	movs r0, #0x06
	strb r0, [r1, #0x00]
_081587E4:
	cmp r4, #0x01
	ble _08158800
	movs r0, #0x02
	strb r0, [r6, #0x00]
	b _08158800
	.byte 0x00, 0x00
_081587F0: .4byte 0x03001018
_081587F4: .4byte 0x00001C98
_081587F8: .4byte 0x00001C9C
_081587FC:
	movs r0, #0x01
	b _08158802
_08158800:
	movs r0, #0x00
_08158802:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
