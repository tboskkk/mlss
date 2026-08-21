	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_815FA50
sub_815FA50:
	push {lr}
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0815FA5C
	bl sprite_show_8020CBC
_0815FA5C:
	pop {r0}
	bx r0
	.byte 0x70, 0x47, 0x00, 0x00, 0x01, 0x49, 0x01, 0x63, 0x70, 0x47, 0x00, 0x00, 0x70, 0xCF, 0xCD, 0x08
	thumb_func_start sub_815FA70
sub_815FA70:
	push {lr}
	add sp, #-0x004
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _0815FA9C
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	cmp r1, r3
	beq _0815FA9C
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r2, #0x0
	adds r1, r3, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
_0815FA9C:
	add sp, #0x004
	pop {r0}
	bx r0
	.byte 0x00, 0x00
