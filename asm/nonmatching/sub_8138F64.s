	.syntax unified
	.text

	thumb_func_start sub_8138F64
sub_8138F64:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	ldr r1, _08138F94 @ =0x0000010B
	adds r2, r4, r1
	ldrb r2, [r2, #0x00]
	cmp r0, r2
	bcc _08138F8A
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08138F98
	mov r0, sp
	ldrb r0, [r0, #0x00]
_08138F8A:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	b _08138F9A
	.byte 0x00, 0x00
_08138F94: .4byte 0x0000010B
_08138F98:
	movs r0, #0x00
_08138F9A:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
