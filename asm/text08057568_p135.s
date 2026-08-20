	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_807413C
sub_807413C:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x71
	ble _0807415C
	movs r0, #0x72
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, #0xBA
	strh r0, [r1, #0x00]
	ldr r0, _08074160 @ =0x08074509
	str r0, [r2, #0x4C]
_0807415C:
	pop {r0}
	bx r0
_08074160: .4byte sub_8074508
	thumb_func_start sub_8074164
sub_8074164:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	ldr r4, [r0, #0x30]
	bl sub_8072FDC
	adds r0, r4, #0x0
	bl sub_80730C8
	movs r1, #0x00
	movs r4, #0x00
	ldr r3, _080741E0 @ =0x03000E80
	ldr r2, _080741E4 @ =0x03000E98
_0807417E:
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _0807418A
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0807418A:
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08074196
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08074196:
	ldrh r0, [r3, #0x02]
	cmp r0, #0x00
	beq _080741A2
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080741A2:
	ldrh r0, [r2, #0x02]
	cmp r0, #0x00
	beq _080741AE
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080741AE:
	ldrh r0, [r3, #0x04]
	cmp r0, #0x00
	beq _080741BA
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080741BA:
	ldrh r0, [r2, #0x04]
	cmp r0, #0x00
	beq _080741C6
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080741C6:
	adds r3, #0x06
	adds r2, #0x06
	adds r4, #0x03
	cmp r4, #0x0B
	ble _0807417E
	cmp r1, #0x00
	bne _080741D8
	ldr r0, _080741E8 @ =0x080745A9
	str r0, [r5, #0x4C]
_080741D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080741E0: .4byte 0x03000E80
_080741E4: .4byte 0x03000E98
_080741E8: .4byte sub_80745A8
	thumb_func_start sub_80741EC
sub_80741EC:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08074254
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x0C]
	ldr r5, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08074208
	adds r2, #0xFF
_08074208:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08074212
	adds r3, #0xFF
_08074212:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08074228
	movs r0, #0x13
	b _0807422A
_08074228:
	movs r0, #0x12
_0807422A:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _0807425C @ =0x0807462D
	str r0, [r4, #0x4C]
_08074254:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807425C: .4byte sub_807462C
	thumb_func_start sub_8074260
sub_8074260:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _080742CC
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0xC0
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xA0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	ldr r0, _080742C8 @ =0x08072F45
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _080742CE
	.byte 0x00, 0x00
_080742C8: .4byte sub_8072F44
_080742CC:
	adds r0, r5, #0x0
_080742CE:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80742D4
sub_80742D4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080742F0
	movs r0, #0x87
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _080742F8 @ =0x08072BE9
	str r0, [r4, #0x4C]
_080742F0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080742F8: .4byte sub_8072BE8
	thumb_func_start sub_80742FC
sub_80742FC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08074318
	ldr r0, _08074320 @ =0x08072945
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	movs r0, #0x00
_08074318:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08074320: .4byte sub_8072944
	thumb_func_start sub_8074324
sub_8074324:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08074344
	adds r0, #0xFF
_08074344:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08074352
	adds r0, #0xFF
_08074352:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08074360
	adds r0, #0xFF
_08074360:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074388 @ =0x0000226E
	bl sub_80DF024
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_08074388: .4byte 0x0000226E
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
