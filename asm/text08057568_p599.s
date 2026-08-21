	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_814DC6C
sub_814DC6C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r1, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _0814DC94
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r4, #0x0
	movs r1, #0x10
	bl sub_813A5C8
	b _0814DCA0
_0814DC94:
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r4, #0x0
	movs r1, #0x10
	bl sub_813A818
_0814DCA0:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814DCC0 @ =0x0814DDF9
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814DCC0: .4byte sub_814DDF8
	thumb_func_start sub_814DCC4
sub_814DCC4:
	push {r4, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	mov r0, sp
	adds r1, r4, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814DCF8 @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	adds r1, r0, #0x0
	lsls r0, r1, #0x18
	cmp r0, #0x00
	beq _0814DCEC
	movs r1, #0x01
_0814DCEC:
	adds r0, r1, #0x0
	add sp, #0x010
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0814DCF8: .4byte 0x00007FFF
