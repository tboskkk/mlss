	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8060438
sub_8060438:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08060458
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08060460 @ =0x08060545
	str r0, [r4, #0x4C]
_08060458:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060460: .4byte sub_8060544
	thumb_func_start sub_8060464
sub_8060464:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08060480
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08060488 @ =0x080605A5
	str r0, [r4, #0x4C]
_08060480:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060488: .4byte sub_80605A4
	thumb_func_start sub_806048C
sub_806048C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080604AC
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080604B4 @ =0x080605F9
	str r0, [r4, #0x4C]
_080604AC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080604B4: .4byte sub_80605F8
	thumb_func_start sub_80604B8
sub_80604B8:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080604D4
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080604DC @ =0x0805FF81
	str r0, [r4, #0x4C]
_080604D4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080604DC: .4byte sub_805FF80
