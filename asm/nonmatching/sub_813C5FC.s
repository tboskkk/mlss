	.syntax unified
	.text

	thumb_func_start sub_813C5FC
sub_813C5FC:
	push {r4, r5, r6, lr}
	add sp, #-0x014
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldr r3, [r2, #0x00]
	adds r0, r4, #0x0
	bl _call_via_r3
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0813C68A
	add r5, sp, #0x010
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813C68A
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r2, [r0, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r1, [r0, #0x28]
	mov r3, sp
	movs r4, #0x00
	ldsh r0, [r2, r4]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r3, #0x00]
	adds r2, #0x02
	movs r4, #0x00
	ldsh r0, [r2, r4]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r3, #0x06]
	adds r2, #0x02
	movs r4, #0x00
	ldsh r0, [r2, r4]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r3, #0x02]
	movs r4, #0x02
	ldsh r0, [r2, r4]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r3, #0x04]
	ldr r2, _0813C694 @ =0x00007FFF
	mov r0, sp
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813C68A
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, _0813C698 @ =0x0813C6E5
	str r0, [r1, #0x00]
_0813C68A:
	add sp, #0x014
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813C694: .4byte 0x00007FFF
_0813C698: .4byte sub_813C6E4
