	.include "asm/macros.inc"

	.syntax unified
	.text

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
