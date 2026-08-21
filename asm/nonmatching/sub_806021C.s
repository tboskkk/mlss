	.syntax unified
	.text

	thumb_func_start sub_806021C
sub_806021C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x10]
	ldr r1, _08060254 @ =0xFFFFFE9A
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0806024C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _08060258 @ =0x080603D9
	str r0, [r4, #0x4C]
_0806024C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060254: .4byte 0xFFFFFE9A
_08060258: .4byte sub_80603D8
