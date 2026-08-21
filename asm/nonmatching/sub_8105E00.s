	.syntax unified
	.text

	thumb_func_start sub_8105E00
sub_8105E00:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08105E14
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _08105E58
_08105E14:
	ldr r0, [r4, #0x08]
	bl sub_807FB64
	ldr r0, _08105E60 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	movs r1, #0x04
	cmp r2, #0x00
	beq _08105E3A
	movs r1, #0x01
_08105E3A:
	ldr r3, _08105E64 @ =0x00002001
	cmp r2, #0x00
	beq _08105E42
	adds r3, #0x4D
_08105E42:
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x10
	strh r0, [r4, #0x10]
	ldr r1, _08105E68 @ =0x08105E6D
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
_08105E58:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08105E60: .4byte 0x03000FD8
_08105E64: .4byte 0x00002001
_08105E68: .4byte sub_8105E6C
