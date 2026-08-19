	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80DA224
sub_80DA224:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DA25A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DA260 @ =0x080DA2C5
	str r0, [r4, #0x4C]
_080DA25A:
	pop {r4}
	pop {r0}
	bx r0
_080DA260: .4byte sub_80DA2C4
	thumb_func_start sub_80DA264
sub_80DA264:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DA2B2
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080DA2B8 @ =0x080D9E35
	str r0, [r4, #0x5C]
	ldr r0, _080DA2BC @ =0x080DA301
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x38
	bl play_sfx_80195B4
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DA2C0 @ =0x080DA325
	str r0, [r4, #0x4C]
_080DA2B2:
	pop {r4}
	pop {r0}
	bx r0
_080DA2B8: .4byte sub_80D9E34
_080DA2BC: .4byte sub_80DA300
_080DA2C0: .4byte sub_80DA324
	thumb_func_start sub_80DA2C4
sub_80DA2C4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DA2F4
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DA2FC @ =0x080DA341
	str r0, [r4, #0x4C]
_080DA2F4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DA2FC: .4byte sub_80DA340
	thumb_func_start sub_80DA300
sub_80DA300:
	push {r4, r5, lr}
	ldr r0, [r0, #0x28]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087124
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _080DA31A
	adds r0, r5, #0x0
	bl sub_80D9F34
_080DA31A:
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
