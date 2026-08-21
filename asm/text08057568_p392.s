	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806E5F4
sub_806E5F4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806E61A
	ldr r0, [r4, #0x2C]
	movs r1, #0x00
	str r1, [r0, #0x4C]
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806E620 @ =0x0808750D
	str r0, [r4, #0x4C]
_0806E61A:
	pop {r4}
	pop {r0}
	bx r0
_0806E620: .4byte sub_808750C
	thumb_func_start sub_806E624
sub_806E624:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806E658
	movs r0, #0x99
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_807F4FC
	movs r0, #0x8C
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0806E660 @ =0x0806E8E9
	str r0, [r4, #0x4C]
_0806E658:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E660: .4byte sub_806E8E8
	thumb_func_start sub_806E664
sub_806E664:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806E686
	ldr r0, _0806E68C @ =0x0806E1B9
	str r0, [r4, #0x4C]
	movs r0, #0x6C
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	movs r0, #0x00
_0806E686:
	pop {r4}
	pop {r1}
	bx r1
_0806E68C: .4byte sub_806E1B8
