	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8163A08
sub_8163A08:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x44]
	cmp r0, #0x00
	beq _08163A1C
	ldr r0, [r1, #0x40]
	cmp r0, #0x01
	beq _08163A1C
	movs r0, #0x00
	b _08163A1E
_08163A1C:
	movs r0, #0x01
_08163A1E:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8163A24
sub_8163A24:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	beq _08163A32
	bl sprite_hide_8021F20
_08163A32:
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	beq _08163A3C
	bl sprite_hide_8021F20
_08163A3C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8163A44
sub_8163A44:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	beq _08163A52
	bl sprite_show_8020CBC
_08163A52:
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	beq _08163A5C
	bl sprite_show_8020CBC
_08163A5C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
