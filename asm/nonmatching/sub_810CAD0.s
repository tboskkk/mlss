	.syntax unified
	.text

	thumb_func_start sub_810CAD0
sub_810CAD0:
	push {lr}
	ldr r2, _0810CAFC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0810CAE6
	ldr r0, _0810CB00 @ =0x0810C05D
	str r0, [r1, #0x04]
_0810CAE6:
	ldr r0, [r2, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0810CAF8
	ldr r0, _0810CB00 @ =0x0810C05D
	str r0, [r1, #0x04]
_0810CAF8:
	pop {r0}
	bx r0
_0810CAFC: .4byte 0x03000FD8
_0810CB00: .4byte sub_810C05C
