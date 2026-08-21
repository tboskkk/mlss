	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806593C
sub_806593C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	ldr r1, [r6, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r1, r0
	bgt _080659D2
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080659AE
	adds r1, #0xFF
_080659AE:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080659B8
	adds r2, #0xFF
_080659B8:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080659C2
	adds r3, #0xFF
_080659C2:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080659DC @ =0x0000113D
	bl sub_80DF024
	adds r0, r6, #0x0
	bl sub_807C298
_080659D2:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080659DC: .4byte 0x0000113D
	thumb_func_start sub_80659E0
sub_80659E0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065A52
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
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
	ldr r0, _08065A58 @ =0x08065A5D
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_08065A52:
	pop {r4}
	pop {r0}
	bx r0
_08065A58: .4byte sub_8065A5C
	thumb_func_start sub_8065A5C
sub_8065A5C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065A92
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	strh r1, [r0, #0x00]
	ldr r0, _08065A98 @ =0x08065BD9
	str r0, [r4, #0x4C]
	movs r0, #0x81
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
_08065A92:
	pop {r4}
	pop {r0}
	bx r0
_08065A98: .4byte sub_8065BD8
	thumb_func_start sub_8065A9C
sub_8065A9C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08065AD8
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08065AB2
	adds r1, #0xFF
_08065AB2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08065ABC
	adds r2, #0xFF
_08065ABC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065AC6
	adds r3, #0xFF
_08065AC6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08065AE0 @ =0x0000113D
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
_08065AD8:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_08065AE0: .4byte 0x0000113D
	thumb_func_start sub_8065AE4
sub_8065AE4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	cmp r0, #0x00
	bne _08065B14
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08065AFA
	bl sub_807C298
_08065AFA:
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _08065B1C @ =0x0806589D
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08065B14:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08065B1C: .4byte sub_806589C
	thumb_func_start sub_8065B20
sub_8065B20:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065B3E
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r0, _08065B44 @ =0x08065C5D
	str r0, [r4, #0x4C]
_08065B3E:
	pop {r4}
	pop {r0}
	bx r0
_08065B44: .4byte sub_8065C5C
	thumb_func_start sub_8065B48
sub_8065B48:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065B6A
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065B70 @ =0x08065511
	str r0, [r4, #0x4C]
	movs r0, #0x81
	bl stop_sfx_80195A8
_08065B6A:
	pop {r4}
	pop {r0}
	bx r0
_08065B70: .4byte sub_8065510
