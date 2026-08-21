	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806AF80
sub_806AF80:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806AFC0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806AF9E
	adds r1, #0xFF
_0806AF9E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806AFA8
	adds r2, #0xFF
_0806AFA8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806AFB2
	adds r3, #0xFF
_0806AFB2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806AFE4 @ =0x00000DB2
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806AFC0:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806AFDC
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x14
	strh r1, [r0, #0x00]
	ldr r0, _0806AFE8 @ =0x0806AFED
	str r0, [r4, #0x4C]
_0806AFDC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806AFE4: .4byte 0x00000DB2
_0806AFE8: .4byte sub_806AFEC
	thumb_func_start sub_806AFEC
sub_806AFEC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806B072
	adds r0, r4, #0x0
	movs r1, #0x04
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
	movs r3, #0x80
	lsls r3, r3, #0x05
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
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r0, #0x0A
	strh r0, [r5, #0x00]
	ldr r0, _0806B078 @ =0x0806B085
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806B07C @ =0x0806B199
	str r0, [r4, #0x58]
	ldr r0, _0806B080 @ =0x0806B15D
	str r0, [r4, #0x60]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x83
	bl play_sfx_80195B4
_0806B072:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806B078: .4byte sub_806B084
_0806B07C: .4byte sub_806B198
_0806B080: .4byte sub_806B15C
	thumb_func_start sub_806B084
sub_806B084:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806B0C4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806B0A2
	adds r1, #0xFF
_0806B0A2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806B0AC
	adds r2, #0xFF
_0806B0AC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806B0B6
	adds r3, #0xFF
_0806B0B6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806B0E4 @ =0x00000DB2
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806B0C4:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806B0DA
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x14
	strh r1, [r0, #0x00]
	ldr r0, _0806B0E8 @ =0x0806B0ED
	str r0, [r4, #0x4C]
_0806B0DA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B0E4: .4byte 0x00000DB2
_0806B0E8: .4byte sub_806B0EC
	thumb_func_start sub_806B0EC
sub_806B0EC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806B152
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
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
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r0, #0x0A
	strh r0, [r5, #0x00]
	ldr r0, _0806B158 @ =0x0806B209
	str r0, [r4, #0x4C]
_0806B152:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806B158: .4byte sub_806B208
	thumb_func_start sub_806B15C
sub_806B15C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_8087124
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _0806B190
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x14
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x80
	str r4, [r0, #0x00]
	ldr r0, _0806B18C @ =0x0806B0ED
	str r0, [r5, #0x4C]
	movs r0, #0x00
	b _0806B192
_0806B18C: .4byte sub_806B0EC
_0806B190:
	adds r0, r4, #0x0
_0806B192:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_806B198
sub_806B198:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
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
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, _0806B204 @ =0x0806B209
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_0806B204: .4byte sub_806B208
	thumb_func_start sub_806B208
sub_806B208:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806B248
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806B226
	adds r1, #0xFF
_0806B226:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806B230
	adds r2, #0xFF
_0806B230:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806B23A
	adds r3, #0xFF
_0806B23A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806B268 @ =0x00000DBB
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806B248:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0806B260
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_0806B260:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806B268: .4byte 0x00000DBB
	thumb_func_start sub_806B26C
sub_806B26C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _0806B280
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
_0806B280:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_806B288
sub_806B288:
	push {lr}
	ldr r1, [r0, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x00
	pop {r1}
	bx r1
	thumb_func_start sub_806B298
sub_806B298:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0806B30C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
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
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806B314 @ =0x0806B529
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
_0806B30C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B314: .4byte sub_806B528
	thumb_func_start sub_806B318
sub_806B318:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806B338
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0806B338:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_806B340
sub_806B340:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806B382
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806B356
	adds r1, #0xFF
_0806B356:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806B360
	adds r2, #0xFF
_0806B360:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806B36A
	adds r3, #0xFF
_0806B36A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806B38C @ =0x00000D82
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x58
	bl stop_sfx_80195A8
	movs r0, #0x00
_0806B382:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806B38C: .4byte 0x00000D82
	thumb_func_start sub_806B390
sub_806B390:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _0806B3A8 @ =0x0806B3D1
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_0806B3A8: .4byte sub_806B3D0
	thumb_func_start sub_806B3AC
sub_806B3AC:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x9C
	ldr r1, [r2, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r2, #0x10]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0806B3CA
	adds r0, r2, #0x0
	bl sub_807C298
_0806B3CA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_806B3D0
sub_806B3D0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x9C
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0806B3E4
	adds r1, #0xFF
_0806B3E4:
	asrs r1, r1, #0x08
	movs r0, #0x40
	negs r0, r0
	cmp r1, r0
	bgt _0806B3FA
	movs r0, #0x58
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807C298
_0806B3FA:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_806B400
sub_806B400:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _0806B41A
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806B420 @ =0x0806B56D
	str r0, [r4, #0x4C]
_0806B41A:
	pop {r4}
	pop {r0}
	bx r0
_0806B420: .4byte sub_806B56C
	thumb_func_start sub_806B424
sub_806B424:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806B464
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806B442
	adds r1, #0xFF
_0806B442:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806B44C
	adds r2, #0xFF
_0806B44C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806B456
	adds r3, #0xFF
_0806B456:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806B488 @ =0x00000DB2
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806B464:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806B47E
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806B48C @ =0x0806AA19
	str r0, [r4, #0x4C]
_0806B47E:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B488: .4byte 0x00000DB2
_0806B48C: .4byte sub_806AA18
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x0D, 0xB5, 0x06, 0x08, 0x00, 0xB5, 0x02, 0x1C
	.byte 0x9C, 0x30, 0x00, 0x68, 0x00, 0x28, 0x03, 0xD1, 0x11, 0x1C, 0xA4, 0x31, 0x03, 0x20, 0x02, 0xE0
	.byte 0x11, 0x1C, 0xA4, 0x31, 0x09, 0x20, 0x08, 0x60, 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x23
	.byte 0xC1, 0x5E, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42, 0x03, 0xD1, 0x11, 0x1C, 0xA8, 0x31, 0x00, 0x20
	.byte 0x02, 0xE0, 0x11, 0x1C, 0xA8, 0x31, 0x01, 0x20, 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20
	.byte 0x02, 0xBC, 0x08, 0x47, 0x41, 0xB5, 0x06, 0x08, 0x00, 0xB5, 0x02, 0x1C, 0x11, 0x1C, 0x9C, 0x31
	.byte 0x08, 0x68, 0x00, 0x28, 0x02, 0xD1, 0xC0, 0x20, 0x40, 0x00, 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64
	.byte 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x85, 0xB5, 0x06, 0x08
	thumb_func_start sub_806B50C
sub_806B50C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806B524 @ =0x0806AEFD
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806B524: .4byte sub_806AEFC
	thumb_func_start sub_806B528
sub_806B528:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806B53A
	adds r0, r1, #0x0
	bl sub_807C298
_0806B53A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_806B540
sub_806B540:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	ldr r0, _0806B568 @ =0x0806B5A9
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B568: .4byte sub_806B5A8
