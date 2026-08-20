	.syntax unified
	.text

	thumb_func_start sub_808761C
sub_808761C:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, _08087634 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08087638
	movs r0, #0x00
	b _0808764C
	.byte 0x00, 0x00
_08087634: .4byte 0x03000FD8
_08087638:
	adds r0, r1, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r1, #0x08
	lsls r1, r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
_0808764C:
	pop {r1}
	bx r1
