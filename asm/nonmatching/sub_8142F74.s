	.syntax unified
	.text

	thumb_func_start sub_8142F74
sub_8142F74:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	add r4, sp, #0x010
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08142FB6
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	mov r0, sp
	adds r1, r6, #0x0
	movs r2, #0x22
	movs r3, #0x0C
	bl sub_8139BB0
	ldr r2, _08142FC0 @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08142FB6
	ldr r0, _08142FC4 @ =0x0813FA69
	str r0, [r7, #0x00]
_08142FB6:
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142FC0: .4byte 0x00007FFF
_08142FC4: .4byte sub_813FA68
