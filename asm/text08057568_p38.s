	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_809C980
sub_809C980:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809C9C4
	ldr r0, [r2, #0x38]
	cmp r0, #0x00
	bge _0809C99C
	adds r0, #0xFF
_0809C99C:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x48
	ldr r2, [r2, #0x3C]
	cmp r2, #0x00
	bge _0809C9AA
	adds r2, #0xFF
_0809C9AA:
	asrs r2, r2, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x14
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
_0809C9C4:
	adds r0, r4, #0x0
	adds r0, #0xA8
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _0809C9D8 @ =0x0809C7DD
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0809C9D8: .4byte sub_809C7DC
