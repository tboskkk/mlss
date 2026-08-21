	.syntax unified
	.text

	thumb_func_start sub_8161D20
sub_8161D20:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x3C]
	ldr r0, _08161D44 @ =0xFFFFEC00
	cmp r1, r0
	bge _08161D48
	ldr r1, [r4, #0x14]
	adds r0, r1, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	beq _08161D88
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	movs r1, #0x02
	b _08161D80
_08161D44: .4byte 0xFFFFEC00
_08161D48:
	ldr r0, _08161D64 @ =0xFFFFF600
	cmp r1, r0
	bge _08161D68
	ldr r1, [r4, #0x14]
	adds r0, r1, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _08161D88
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	movs r1, #0x01
	b _08161D80
_08161D64: .4byte 0xFFFFF600
_08161D68:
	cmp r1, #0x00
	bge _08161D90
	ldr r1, [r4, #0x14]
	adds r0, r1, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08161D88
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	movs r1, #0x00
_08161D80:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
_08161D88:
	ldr r0, [r4, #0x14]
	bl sprite_show_8020CBC
	b _08161D96
_08161D90:
	ldr r0, [r4, #0x14]
	bl sprite_hide_8021F20
_08161D96:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
