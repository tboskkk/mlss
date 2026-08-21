	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_807438C
sub_807438C:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _080743A8
	movs r0, #0x00
	str r0, [r2, #0x4C]
	adds r0, r2, #0x0
	bl sub_807C298
_080743A8:
	pop {r0}
	bx r0
	thumb_func_start sub_80743AC
sub_80743AC:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080743BE
	adds r0, r1, #0x0
	bl sub_807C298
_080743BE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80743C4
sub_80743C4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _08074420
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
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
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08074428 @ =0x08074689
	str r0, [r4, #0x4C]
_08074420:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074428: .4byte sub_8074688
	thumb_func_start sub_807442C
sub_807442C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807444C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0807444C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x51, 0x45, 0x07, 0x08, 0x30, 0xB5
	.byte 0x05, 0x1C, 0x2C, 0x1C, 0x9C, 0x34, 0x20, 0x68, 0x00, 0x28, 0x04, 0xD1, 0x25, 0xF1, 0x5F, 0xFD
	.byte 0x03, 0x21, 0x01, 0x40, 0x21, 0x60, 0x02, 0x48, 0xE8, 0x64, 0x01, 0x20, 0x30, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0xE5, 0x45, 0x07, 0x08, 0x00, 0xB5, 0x02, 0x1C, 0x11, 0x1C, 0x9C, 0x31, 0x08, 0x68
	.byte 0x00, 0x28, 0x01, 0xD1, 0x05, 0x20, 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC
	.byte 0x08, 0x47, 0x49, 0x46, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA9, 0x46
	.byte 0x07, 0x08
	thumb_func_start sub_80744B4
sub_80744B4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080744CC
	adds r1, #0xFF
_080744CC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080744D6
	adds r2, #0xFF
_080744D6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080744E0
	adds r3, #0xFF
_080744E0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074500 @ =0x000022E2
	bl sub_80DF024
	movs r0, #0x8B
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	ldr r0, _08074504 @ =0x080746C5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074500: .4byte 0x000022E2
_08074504: .4byte sub_80746C4
	thumb_func_start sub_8074508
sub_8074508:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	bne _08074520
	movs r0, #0xD5
	bl stop_sfx_80195A8
	ldr r0, _0807451C @ =0x080744B5
	b _08074544
_0807451C: .4byte sub_80744B4
_08074520:
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08074546
	movs r0, #0x01
	bl sub_810CA8C
	adds r1, r5, #0x0
	adds r1, #0xA0
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0xB4
	strh r0, [r4, #0x00]
	ldr r0, _0807454C @ =0x080746ED
_08074544:
	str r0, [r5, #0x4C]
_08074546:
	pop {r4, r5}
	pop {r0}
	bx r0
_0807454C: .4byte sub_80746EC
	thumb_func_start sub_8074550
sub_8074550:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807456E
	adds r0, #0xFF
_0807456E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807457C
	adds r0, #0xFF
_0807457C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807458A
	adds r0, #0xFF
_0807458A:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080745A0 @ =0x000022DC
	bl sub_80DF024
	ldr r0, _080745A4 @ =0x08073C19
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080745A0: .4byte 0x000022DC
_080745A4: .4byte sub_8073C18
	thumb_func_start sub_80745A8
sub_80745A8:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	ldr r6, [r0, #0x30]
	ldr r5, [r6, #0x30]
	ldr r4, [r5, #0x30]
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
	adds r0, r5, #0x0
	bl sub_807C298
	adds r0, r6, #0x0
	bl sub_807C298
	movs r0, #0x5E
	bl stop_sfx_80195A8
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x4C]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_80745E4
sub_80745E4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080745FC
	adds r1, #0xFF
_080745FC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074606
	adds r2, #0xFF
_08074606:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074610
	adds r3, #0xFF
_08074610:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x8B
	lsls r0, r0, #0x06
	bl sub_80DF024
	ldr r0, _08074628 @ =0x080731B5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08074628: .4byte sub_80731B4
