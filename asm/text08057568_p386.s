	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80601D4
sub_80601D4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080601E8
	adds r1, #0xFF
_080601E8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080601F2
	adds r2, #0xFF
_080601F2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080601FC
	adds r3, #0xFF
_080601FC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08060218 @ =0x00001118
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08060218: .4byte 0x00001118
	thumb_func_start sub_806021C
sub_806021C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x10]
	ldr r1, _08060254 @ =0xFFFFFE9A
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0806024C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _08060258 @ =0x080603D9
	str r0, [r4, #0x4C]
_0806024C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060254: .4byte 0xFFFFFE9A
_08060258: .4byte sub_80603D8
	thumb_func_start sub_806025C
sub_806025C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806027E
	movs r0, #0x5C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08060284 @ =0x08060405
	str r0, [r4, #0x4C]
_0806027E:
	pop {r4}
	pop {r0}
	bx r0
_08060284: .4byte sub_8060404
	thumb_func_start sub_8060288
sub_8060288:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080602AA
	movs r0, #0x5C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080602B0 @ =0x08060439
	str r0, [r4, #0x4C]
_080602AA:
	pop {r4}
	pop {r0}
	bx r0
_080602B0: .4byte sub_8060438
	thumb_func_start sub_80602B4
sub_80602B4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806031A
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08060320 @ =0x08060465
	str r0, [r4, #0x4C]
_0806031A:
	pop {r4}
	pop {r0}
	bx r0
_08060320: .4byte sub_8060464
	thumb_func_start sub_8060324
sub_8060324:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08060350
	movs r0, #0x5C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08060358 @ =0x08060361
	str r0, [r4, #0x60]
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806035C @ =0x0806048D
	str r0, [r4, #0x4C]
_08060350:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060358: .4byte sub_8060360
_0806035C: .4byte sub_806048C
	thumb_func_start sub_8060360
sub_8060360:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	adds r1, r0, #0x0
	cmp r1, #0x00
	bne _08060394
	adds r0, r4, #0x0
	adds r0, #0x80
	str r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08060390 @ =0x080604E1
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _08060396
_08060390: .4byte sub_80604E0
_08060394:
	adds r0, r1, #0x0
_08060396:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x02, 0x1C, 0x9C, 0x32, 0x02, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0xB9, 0x04, 0x06, 0x08, 0x02, 0x1C, 0x9C, 0x32, 0x01, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xB9, 0x04, 0x06, 0x08, 0x02, 0x1C, 0x9C, 0x32, 0x00, 0x21, 0x11, 0x60
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xB9, 0x04, 0x06, 0x08
	thumb_func_start sub_80603D8
sub_80603D8:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _08060400 @ =0xFFFFFE9A
	adds r0, r1, r3
	str r0, [r2, #0x10]
	cmp r0, #0x00
	bge _080603EC
	adds r0, r1, #0x0
	subs r0, #0x67
_080603EC:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _080603FC
	adds r0, r2, #0x0
	bl sub_807C298
_080603FC:
	pop {r0}
	bx r0
_08060400: .4byte 0xFFFFFE9A
	thumb_func_start sub_8060404
sub_8060404:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0806042C
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _08060434 @ =0x08060501
	str r0, [r4, #0x4C]
_0806042C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060434: .4byte sub_8060500
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
