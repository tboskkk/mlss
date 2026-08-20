	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start ybai_script_update_80F8ACC
ybai_script_update_80F8ACC: @ 080F8ACC
	push {r4, r5, lr}
	add sp, #-0x03C
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080F8B18
	movs r0, #0x00
	b _080F8B28
_080F8AE8:
	ldr r0, _080F8B30 @ =0x03000FC0
	ldr r2, [r0, #0x00]
	ldr r0, [r5, #0x2C]
	movs r1, #0xB8
	lsls r1, r1, #0x05
	adds r3, r0, r1
	adds r1, #0x94
	adds r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r0, #0xA8
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl script_read_next_line
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	add r2, sp, #0x008
	bl btl_script_execute_next_command
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080F8B26
_080F8B18:
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_80F2AD8
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080F8AE8
_080F8B26:
	movs r0, #0x01
_080F8B28:
	add sp, #0x03C
	pop {r4, r5}
	pop {r1}
	bx r1
_080F8B30: .4byte 0x03000FC0
