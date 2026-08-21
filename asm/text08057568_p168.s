	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8110988
sub_8110988:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	negs r1, r1
	adds r1, #0x0D
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _081109C8 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _081109CC @ =0x08110A31
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_081109C8: .4byte 0x00000119
_081109CC: .4byte sub_8110A30
