	.syntax unified
	.text

	thumb_func_start sub_813F954
sub_813F954:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813F9C6
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x08]
	cmp r0, #0x00
	beq _0813F99E
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x12
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0813F9CC @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813F9C6
_0813F99E:
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813F9D0
_0813F9C6:
	movs r0, #0x00
	b _0813F9D2
	.byte 0x00, 0x00
_0813F9CC: .4byte 0x00007FFF
_0813F9D0:
	movs r0, #0x01
_0813F9D2:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
