	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80906E4
sub_80906E4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08090706
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08090706:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_809070C
sub_809070C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08090728
	adds r0, r4, #0x0
	bl sub_809078C
	b _08090736
_08090728:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08090736
	adds r0, r4, #0x0
	bl sub_8090748
_08090736:
	ldr r0, _08090744 @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08090744: .4byte sub_8087540
