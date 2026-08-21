	.syntax unified
	.text

	thumb_func_start sub_8142C18
sub_8142C18:
	push {r4, r5, lr}
	add sp, #-0x010
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _08142C7C
	movs r0, #0xBB
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	mov r0, sp
	adds r1, r4, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _08142C6C @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08142C78
	ldr r0, _08142C70 @ =0x0813B361
	str r0, [r5, #0x00]
	ldr r0, _08142C74 @ =0x0813E619
	str r0, [r5, #0x04]
	b _08142C7C
_08142C6C: .4byte 0x00007FFF
_08142C70: .4byte sub_813B360
_08142C74: .4byte sub_813E618
_08142C78:
	ldr r0, _08142C84 @ =0x0813F85D
	str r0, [r5, #0x00]
_08142C7C:
	add sp, #0x010
	pop {r4, r5}
	pop {r0}
	bx r0
_08142C84: .4byte sub_813F85C
