	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_805F49C
sub_805F49C:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r1, r1, #0x08
	str r1, [r4, #0x10]
	adds r0, #0x02
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r2, r0, #0x08
	str r2, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r3, r0, #0x08
	str r3, [r4, #0x18]
	cmp r1, #0x00
	bge _0805F4C8
	adds r1, #0xFF
_0805F4C8:
	asrs r0, r1, #0x08
	str r0, [sp, #0x000]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0805F4D4
	adds r0, #0xFF
_0805F4D4:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0805F4E0
	adds r0, #0xFF
_0805F4E0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805F500
	adds r0, r4, #0x0
	bl sub_807C298
_0805F500:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
