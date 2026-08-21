	.syntax unified
	.text

	thumb_func_start sub_8106FFC
sub_8106FFC:
	push {lr}
	adds r3, r0, #0x0
	ldr r0, _08107038 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x01
	eors r1, r0
	lsls r1, r1, #0x02
	adds r2, #0x80
	adds r2, r2, r1
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08107032
	ldr r1, _0810703C @ =0x080FD6D5
	str r1, [r3, #0x04]
	adds r0, r3, #0x0
	bl _call_via_r1
_08107032:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08107038: .4byte 0x03000FD8
_0810703C: .4byte sub_80FD6D4
