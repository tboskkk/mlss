	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_814BF28
sub_814BF28:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x18]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x24]
	movs r1, #0xC0
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	beq _0814BF64
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_8149AC8
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814BFBC
	ldr r0, _0814BF60 @ =0x0814998D
	b _0814BFBE
_0814BF60: .4byte sub_814998C
_0814BF64:
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814BF84
	movs r0, #0xEC
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _0814BFC0
_0814BF84:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r1, [r0, #0x28]
	ldr r2, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r2, r2, r0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	movs r1, #0xB4
	lsls r1, r1, #0x06
	adds r0, r0, r1
	cmp r2, r0
	bgt _0814BFC0
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_8149AC8
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814BFBC
	ldr r0, _0814BFB8 @ =0x0814998D
	b _0814BFBE
	.byte 0x00, 0x00
_0814BFB8: .4byte sub_814998C
_0814BFBC:
	ldr r0, _0814BFC8 @ =0x0814BA71
_0814BFBE:
	str r0, [r6, #0x00]
_0814BFC0:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0814BFC8: .4byte sub_814BA70
