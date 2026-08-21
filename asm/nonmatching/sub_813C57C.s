	.syntax unified
	.text

	thumb_func_start sub_813C57C
sub_813C57C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r2, r7, r0
	ldr r3, [r2, #0x00]
	adds r0, r6, #0x0
	bl _call_via_r3
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0813C5EC
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r7, r0
	add r5, sp, #0x010
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813C5EC
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r1, [r0, #0x28]
	mov r2, sp
	ldrh r0, [r4, #0x3C]
	strh r0, [r2, #0x00]
	ldrh r0, [r4, #0x3E]
	strh r0, [r2, #0x02]
	ldrh r0, [r4, #0x3A]
	strh r0, [r2, #0x04]
	ldrh r0, [r4, #0x38]
	strh r0, [r2, #0x06]
	ldr r2, _0813C5F4 @ =0x00007FFF
	mov r0, sp
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813C5EC
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0813C5F8 @ =0x0813C69D
	str r0, [r1, #0x00]
_0813C5EC:
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0813C5F4: .4byte 0x00007FFF
_0813C5F8: .4byte sub_813C69C
