	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8068EF4
sub_8068EF4:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x8D
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	ldr r0, _08068F0C @ =0x0808750D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068F0C: .4byte sub_808750C
	thumb_func_start sub_8068F10
sub_8068F10:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08068F30
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08068F38 @ =0x0808750D
	str r0, [r4, #0x4C]
_08068F30:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068F38: .4byte sub_808750C
	thumb_func_start sub_8068F3C
sub_8068F3C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xA4
	ldr r0, [r5, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _0806900E
	movs r0, #0x00
	str r0, [r5, #0x18]
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r6, r0, #0x0
	cmp r1, #0x00
	bne _08068FA0
	adds r4, r5, #0x0
	adds r4, #0x84
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r3, r2, #0x0
	adds r3, #0xD8
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x88
	adds r2, #0xDC
	ldr r0, [r2, #0x00]
	b _08068FB4
_08068FA0:
	adds r1, r5, #0x0
	adds r1, #0x84
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
_08068FB4:
	str r0, [r1, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x14
	strh r0, [r1, #0x00]
	ldr r0, _08069000 @ =0x080693BD
	str r0, [r5, #0x4C]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bne _08069004
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	b _0806900E
_08069000: .4byte sub_80693BC
_08069004:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_0806900E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8069014
sub_8069014:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080690F2
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r7, r1, #0x0
	cmp r0, #0x00
	bgt _080690F2
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r6, r0, #0x0
	cmp r1, #0x00
	bne _08069074
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	subs r0, #0x24
	strh r1, [r0, #0x00]
	b _0806908C
_08069074:
	adds r1, r5, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x06
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
_0806908C:
	adds r0, r5, #0x0
	adds r0, #0x7A
	movs r4, #0x00
	strh r4, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r5, #0x0
	bl sub_807F4FC
	str r4, [r5, #0x58]
	movs r0, #0x0F
	strh r0, [r7, #0x00]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bne _080690C6
	ldr r0, _080690E0 @ =0x08069355
	str r0, [r5, #0x60]
_080690C6:
	ldr r0, _080690E4 @ =0x080690F9
	str r0, [r5, #0x4C]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bne _080690E8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	b _080690F2
	.byte 0x00, 0x00
_080690E0: .4byte sub_8069354
_080690E4: .4byte sub_80690F8
_080690E8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_080690F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80690F8
sub_80690F8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r2, [r0, r1]
	cmp r2, #0x00
	bne _08069150
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	ldr r1, _08069148 @ =0x00000111
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08069150
	ldr r0, _0806914C @ =0x080692DD
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0xA4
	movs r0, #0xA0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x80
	str r2, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x81
	bl stop_sfx_80195A8
	b _080691EC
_08069148: .4byte 0x00000111
_0806914C: .4byte sub_80692DC
_08069150:
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806918A
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08069168
	adds r1, #0xFF
_08069168:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08069172
	adds r2, #0xFF
_08069172:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806917C
	adds r3, #0xFF
_0806917C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080691D4 @ =0x00001C9F
	bl sub_80DF024
	movs r0, #0x0F
	strh r0, [r5, #0x00]
_0806918A:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080691EC
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080691D8 @ =0x080691F5
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080691DC
	movs r0, #0x81
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	b _080691EC
	.byte 0x00, 0x00
_080691D4: .4byte 0x00001C9F
_080691D8: .4byte sub_80691F4
_080691DC:
	movs r0, #0x81
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xCC
	bl play_sfx_80195B4
_080691EC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_80691F4
sub_80691F4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080692CC
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r6, r0, #0x0
	cmp r1, #0x00
	bne _08069220
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	b _0806925C
_08069220:
	ldr r0, _08069290 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r2, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08069246
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08069246:
	ldr r0, [r5, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _0806925C
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0806925C:
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bne _08069298
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806926C
	adds r1, #0xFF
_0806926C:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08069276
	adds r0, #0xFF
_08069276:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08069282
	adds r3, #0xFF
_08069282:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08069294 @ =0x00001C8A
	bl sub_80DF024
	b _080692C0
	.byte 0x00, 0x00
_08069290: .4byte 0x03000FD8
_08069294: .4byte 0x00001C8A
_08069298:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080692A0
	adds r1, #0xFF
_080692A0:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080692AA
	adds r0, #0xFF
_080692AA:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080692B6
	adds r3, #0xFF
_080692B6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080692D4 @ =0x00001CB1
	bl sub_80DF024
_080692C0:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x14
	strh r1, [r0, #0x00]
	ldr r0, _080692D8 @ =0x08069395
	str r0, [r4, #0x4C]
_080692CC:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080692D4: .4byte 0x00001CB1
_080692D8: .4byte sub_8069394
	thumb_func_start sub_80692DC
sub_80692DC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x10]
	subs r0, #0x80
	str r0, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0xA4
	ldr r0, [r4, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _08069342
	movs r0, #0x00
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08069312
	adds r1, #0xFF
_08069312:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0806931C
	adds r0, #0xFF
_0806931C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08069328
	adds r3, #0xFF
_08069328:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806934C @ =0x00001CA8
	bl sub_80DF024
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08069350 @ =0x08069451
	str r0, [r4, #0x4C]
_08069342:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806934C: .4byte 0x00001CA8
_08069350: .4byte sub_8069450
	thumb_func_start sub_8069354
sub_8069354:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08069388
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _08069374
	movs r0, #0x81
	bl stop_sfx_80195A8
	b _0806937A
_08069374:
	movs r0, #0x81
	bl stop_sfx_80195A8
_0806937A:
	adds r0, r4, #0x0
	adds r0, #0x80
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _08069390 @ =0x080690F9
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08069388:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08069390: .4byte sub_80690F8
	thumb_func_start sub_8069394
sub_8069394:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080693B4
	ldr r0, [r4, #0x28]
	bl sub_807B7A8
	ldr r0, [r4, #0x28]
	bl sub_807FE40
_080693B4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80693BC
sub_80693BC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08069400
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _080693DE
	movs r0, #0x81
	bl stop_sfx_80195A8
	b _080693E4
_080693DE:
	movs r0, #0x81
	bl stop_sfx_80195A8
_080693E4:
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x00
	ldsh r0, [r5, r1]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	ldr r0, _08069408 @ =0x08069015
	str r0, [r4, #0x4C]
_08069400:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08069408: .4byte sub_8069014
	.byte 0x02, 0x1C, 0xAE, 0x32, 0x01, 0x21, 0x11, 0x80, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x7D, 0x94, 0x06, 0x08, 0x00, 0xB5, 0x02, 0x1C, 0x11, 0x1C, 0x9C, 0x31, 0x08, 0x68, 0x00, 0x28
	.byte 0x05, 0xD1, 0x48, 0x20, 0x08, 0x60, 0x04, 0x31, 0x80, 0x20, 0x80, 0x00, 0x08, 0x60, 0x11, 0x1C
	.byte 0xAE, 0x31, 0x00, 0x20, 0x08, 0x80, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47
	.byte 0x7D, 0x94, 0x06, 0x08
	thumb_func_start sub_8069450
sub_8069450:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08069470
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08069478 @ =0x0808750D
	str r0, [r4, #0x4C]
_08069470:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08069478: .4byte sub_808750C
	thumb_func_start sub_806947C
sub_806947C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080694A8
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xA4
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _080694B0 @ =0x08068F3D
	str r0, [r4, #0x4C]
_080694A8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080694B0: .4byte sub_8068F3C
	thumb_func_start sub_80694B4
sub_80694B4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r5, #0x0
	adds r6, #0x8C
	ldr r0, [r5, #0x18]
	ldr r1, [r6, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldr r0, [r6, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r6, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _08069544
	movs r4, #0x00
	str r4, [r5, #0x18]
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
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
	ldr r0, [r5, #0x40]
	str r0, [r6, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0806954C @ =0x0806A1E9
	str r0, [r5, #0x58]
	ldr r0, _08069550 @ =0x0806A1CD
	str r0, [r5, #0x5C]
	ldr r0, _08069554 @ =0x0806A24D
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_08069544:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806954C: .4byte sub_806A1E8
_08069550: .4byte sub_806A1CC
_08069554: .4byte sub_806A24C
	thumb_func_start sub_8069558
sub_8069558:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080695D8
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
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _080695D4
	ldr r0, _080695D0 @ =0x0806A24D
	b _080695D6
	.byte 0x00, 0x00
_080695D0: .4byte sub_806A24C
_080695D4:
	ldr r0, _080695E0 @ =0x0806A205
_080695D6:
	str r0, [r4, #0x4C]
_080695D8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080695E0: .4byte sub_806A204
	thumb_func_start sub_80695E4
sub_80695E4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08069676
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069640
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806961A
	adds r1, #0xFF
_0806961A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08069624
	adds r2, #0xFF
_08069624:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806962E
	adds r3, #0xFF
_0806962E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806963C @ =0x00001D5A
	bl sub_80DF024
	b _08069672
	.byte 0x00, 0x00
_0806963C: .4byte 0x00001D5A
_08069640:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08069654
	adds r1, #0xFF
_08069654:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806965E
	adds r2, #0xFF
_0806965E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08069668
	adds r3, #0xFF
_08069668:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08069680 @ =0x00001D6E
	bl sub_80DF024
_08069672:
	ldr r0, _08069684 @ =0x08069689
	str r0, [r4, #0x4C]
_08069676:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08069680: .4byte 0x00001D6E
_08069684: .4byte sub_8069688
	thumb_func_start sub_8069688
sub_8069688:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08069776
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r7, r0, #0x0
	cmp r1, #0x01
	bne _080696B6
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	b _080696C2
_080696B6:
	ldr r2, _08069780 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
_080696C2:
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _080696CC
	adds r2, #0xFF
_080696CC:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _080696D6
	adds r3, #0xFF
_080696D6:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080696E0
	adds r0, #0xFF
_080696E0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08069784 @ =0x00004072
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x77
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	ands r4, r0
	lsls r4, r4, #0x06
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08069788 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r4, #0x00
	strb r1, [r0, #0x00]
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	str r4, [r5, #0x58]
	ldr r0, _0806978C @ =0x0806A181
	str r0, [r5, #0x60]
	str r4, [r5, #0x4C]
	adds r5, #0x9C
	str r4, [r5, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x84
	movs r0, #0x03
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08069790 @ =0x08069795
	str r0, [r6, #0x4C]
_08069776:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08069780: .4byte 0x0000204D
_08069784: .4byte 0x00004072
_08069788: .4byte sub_8087540
_0806978C: .4byte sub_806A180
_08069790: .4byte sub_8069794
	thumb_func_start sub_8069794
sub_8069794:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080697C4
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _080697C0 @ =0x0806A059
	str r0, [r4, #0x4C]
	adds r0, r2, #0x0
	bl sub_807C298
	b _080698B6
_080697C0: .4byte sub_806A058
_080697C4:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080698B6
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _080697EA
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080697F6
_080697EA:
	ldr r2, _08069804 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080697F6:
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	ble _0806980C
	ldr r0, _08069808 @ =0x080698C5
	b _080698B4
_08069804: .4byte 0x0000204D
_08069808: .4byte sub_80698C4
_0806980C:
	cmp r0, #0x01
	bne _08069818
	ldr r0, _08069814 @ =0x080699E5
	b _080698B4
_08069814: .4byte sub_80699E4
_08069818:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x30
	bl play_sfx_80195B4
	bl sub_8199F30
	movs r1, #0x0F
	ands r1, r0
	adds r7, r1, #0x0
	adds r7, #0x30
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r7, [r0, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xD8
	ldr r3, [r1, #0x00]
	adds r0, #0xDC
	ldr r5, [r0, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0806984A
	adds r0, #0xFF
_0806984A:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xAE
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0806985A
	adds r0, #0xFF
_0806985A:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	lsls r0, r0, #0x08
	subs r6, r3, r0
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	subs r5, r5, r0
	ldr r2, _080698BC @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	lsls r0, r7, #0x08
	movs r1, #0xC8
	lsls r1, r1, #0x01
	bl __divsi3
	cmp r0, #0x01
	bne _08069894
	movs r0, #0x02
_08069894:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x28
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r5, [r0, #0x00]
	adds r1, #0x0C
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _080698C0 @ =0x08069C41
_080698B4:
	str r0, [r4, #0x4C]
_080698B6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080698BC: .4byte 0x03001038
_080698C0: .4byte sub_8069C40
	thumb_func_start sub_80698C4
sub_80698C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	mov r8, r0
	cmp r0, #0x00
	beq _080698FC
	adds r1, r5, #0x0
	adds r1, #0x9C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _080698F8 @ =0x0806A059
	str r0, [r5, #0x4C]
	adds r0, r2, #0x0
	bl sub_807C298
	b _080699D0
	.byte 0x00, 0x00
_080698F8: .4byte sub_806A058
_080698FC:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x30
	bl play_sfx_80195B4
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r1, r1, r0
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	adds r1, #0x01
	bl __divsi3
	adds r4, r0, #0x0
	bl sub_8199F30
	bl sub_8199F30
	movs r1, #0x0F
	ands r1, r0
	adds r7, r1, #0x0
	adds r7, #0x30
	adds r0, r5, #0x0
	adds r0, #0x8C
	str r7, [r0, #0x00]
	ldr r0, [r5, #0x38]
	subs r6, r0, r4
	bl sub_8199F30
	movs r1, #0x3F
	ands r1, r0
	adds r1, #0x50
	lsls r1, r1, #0x08
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08069954
	adds r0, #0xFF
_08069954:
	asrs r0, r0, #0x08
	adds r4, r5, #0x0
	adds r4, #0xAE
	strh r0, [r4, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08069964
	adds r0, #0xFF
_08069964:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08069974
	adds r0, #0xFF
_08069974:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	subs r6, r6, r0
	movs r2, #0x00
	ldsh r0, [r3, r2]
	lsls r0, r0, #0x08
	subs r4, r1, r0
	ldr r2, _080699DC @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	lsls r0, r7, #0x08
	movs r1, #0xC8
	lsls r1, r1, #0x01
	bl __divsi3
	cmp r0, #0x01
	bne _080699AE
	movs r0, #0x02
_080699AE:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x28
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA4
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r4, [r0, #0x00]
	adds r0, #0x04
	mov r1, r8
	strh r1, [r0, #0x00]
	ldr r0, _080699E0 @ =0x08069AE9
	str r0, [r5, #0x4C]
_080699D0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080699DC: .4byte 0x03001038
_080699E0: .4byte sub_8069AE8
	thumb_func_start sub_80699E4
sub_80699E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	mov r9, r0
	cmp r0, #0x00
	beq _08069A1C
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _08069A18 @ =0x0806A059
	str r0, [r4, #0x4C]
	adds r0, r2, #0x0
	bl sub_807C298
	b _08069AD2
_08069A18: .4byte sub_806A058
_08069A1C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x30
	bl play_sfx_80195B4
	bl sub_8199F30
	movs r1, #0x0F
	ands r1, r0
	adds r1, #0x30
	mov r8, r1
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r1, [r0, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	movs r2, #0xE0
	lsls r2, r2, #0x05
	adds r1, r1, r2
	adds r0, #0xDC
	ldr r7, [r0, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08069A54
	adds r0, #0xFF
_08069A54:
	asrs r0, r0, #0x08
	adds r5, r4, #0x0
	adds r5, #0xAE
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08069A64
	adds r0, #0xFF
_08069A64:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08069A74
	adds r0, #0xFF
_08069A74:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r2, #0x00
	ldsh r0, [r5, r2]
	lsls r0, r0, #0x08
	subs r6, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	subs r5, r7, r0
	ldr r2, _08069AE0 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	mov r2, r8
	lsls r0, r2, #0x08
	movs r1, #0xC8
	lsls r1, r1, #0x01
	bl __divsi3
	cmp r0, #0x01
	bne _08069AB0
	movs r0, #0x02
_08069AB0:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x28
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r5, [r0, #0x00]
	adds r0, #0x04
	mov r1, r9
	strh r1, [r0, #0x00]
	ldr r0, _08069AE4 @ =0x08069AE9
	str r0, [r4, #0x4C]
_08069AD2:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08069AE0: .4byte 0x03001038
_08069AE4: .4byte sub_8069AE8
	thumb_func_start sub_8069AE8
sub_8069AE8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x30]
	mov r8, r0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08069B1C
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _08069B18 @ =0x0806A059
	str r0, [r7, #0x4C]
	mov r0, r8
	bl sub_807C298
	b _08069C2E
_08069B18: .4byte sub_806A058
_08069B1C:
	adds r0, r7, #0x0
	adds r0, #0xA4
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r6, r7, #0x0
	adds r6, #0xA0
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r5, r0, #0x0
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	adds r5, r5, r0
	str r5, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r7, #0x18]
	mov r0, r8
	str r5, [r0, #0x10]
	ldr r0, [r7, #0x14]
	mov r1, r8
	str r0, [r1, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r1, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	bne _08069BE8
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069BCC
	movs r2, #0x80
	lsls r2, r2, #0x06
	b _08069BCE
_08069BCC:
	ldr r2, _08069C0C @ =0x0000204D
_08069BCE:
	adds r0, r7, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08069BE8:
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r6, #0x00]
	cmp r1, r0
	ble _08069C2E
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069C10
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r7, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	b _08069C1C
_08069C0C: .4byte 0x0000204D
_08069C10:
	ldr r2, _08069C38 @ =0x0000204D
	adds r0, r7, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
_08069C1C:
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0x00
	str r0, [r7, #0x18]
	ldr r0, _08069C3C @ =0x08069795
	str r0, [r7, #0x4C]
_08069C2E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08069C38: .4byte 0x0000204D
_08069C3C: .4byte sub_8069794
	thumb_func_start sub_8069C40
sub_8069C40:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x30]
	mov r8, r0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08069C74
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _08069C70 @ =0x0806A059
	str r0, [r7, #0x4C]
	mov r0, r8
	bl sub_807C298
	b _08069DB4
_08069C70: .4byte sub_806A058
_08069C74:
	adds r0, r7, #0x0
	adds r0, #0xA4
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r6, r7, #0x0
	adds r6, #0xA0
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r5, r0, #0x0
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	adds r5, r5, r0
	str r5, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r7, #0x18]
	mov r0, r8
	str r5, [r0, #0x10]
	ldr r0, [r7, #0x14]
	mov r1, r8
	str r0, [r1, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r1, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	bne _08069D40
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069D24
	movs r2, #0x80
	lsls r2, r2, #0x06
	b _08069D26
_08069D24:
	ldr r2, _08069D90 @ =0x0000204D
_08069D26:
	adds r0, r7, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08069D40:
	movs r1, #0x00
	ldsh r0, [r4, r1]
	ldr r1, [r6, #0x00]
	lsrs r2, r1, #0x1F
	adds r1, r1, r2
	asrs r1, r1, #0x01
	cmp r0, r1
	ble _08069DB4
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x05
	adds r0, r0, r2
	ldr r1, [r7, #0x18]
	cmp r1, r0
	bge _08069DB4
	ldr r0, [r7, #0x30]
	bl sub_807C298
	movs r0, #0x0A
	strh r0, [r4, #0x00]
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xDC
	ldr r1, [r1, #0x00]
	str r1, [r7, #0x14]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069D94
	movs r2, #0x80
	lsls r2, r2, #0x06
	b _08069D96
_08069D90: .4byte 0x0000204D
_08069D94:
	ldr r2, _08069DC0 @ =0x0000204D
_08069D96:
	adds r0, r7, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08069DC4 @ =0x08069DC9
	str r0, [r7, #0x4C]
_08069DB4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08069DC0: .4byte 0x0000204D
_08069DC4: .4byte sub_8069DC8
	thumb_func_start sub_8069DC8
sub_8069DC8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08069EAE
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069E04
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _08069E10
_08069E04:
	ldr r2, _08069EB8 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_08069E10:
	movs r0, #0x40
	mov r8, r0
	adds r0, r4, #0x0
	adds r0, #0x8C
	mov r1, r8
	str r1, [r0, #0x00]
	ldr r0, [r4, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xD8
	ldr r3, [r1, #0x00]
	adds r0, #0xDC
	ldr r5, [r0, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08069E30
	adds r0, #0xFF
_08069E30:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xAE
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08069E40
	adds r0, #0xFF
_08069E40:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	lsls r0, r0, #0x08
	subs r6, r3, r0
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	subs r5, r5, r0
	ldr r2, _08069EBC @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _08069E72
	ldr r1, _08069EC0 @ =0x000003FF
	adds r0, r0, r1
_08069E72:
	asrs r7, r0, #0x0A
	lsrs r1, r0, #0x1F
	adds r1, r7, r1
	asrs r1, r1, #0x01
	mov r2, r8
	lsls r0, r2, #0x08
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	bl __divsi3
	cmp r0, #0x01
	bne _08069E8E
	movs r0, #0x02
_08069E8E:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r5, [r0, #0x00]
	adds r1, #0x10
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08069EC4 @ =0x08069EC9
	str r0, [r4, #0x4C]
_08069EAE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08069EB8: .4byte 0x0000204D
_08069EBC: .4byte 0x03001038
_08069EC0: .4byte 0x000003FF
_08069EC4: .4byte sub_8069EC8
	thumb_func_start sub_8069EC8
sub_8069EC8:
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
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
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
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	ldr r1, [r6, #0x30]
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r6, #0x18]
	str r0, [r1, #0x18]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	bne _08069F96
	adds r0, r6, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069F7A
	movs r2, #0x80
	lsls r2, r2, #0x06
	b _08069F7C
_08069F7A:
	ldr r2, _08069FF4 @ =0x0000204D
_08069F7C:
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08069F96:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	subs r0, #0x0C
	ldr r0, [r0, #0x00]
	cmp r1, r0
	ble _0806A044
	adds r0, r6, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0806A000
	ldr r2, _08069FF8 @ =0x00004071
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08069FCA
	adds r0, #0xFF
_08069FCA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08069FD8
	adds r0, #0xFF
_08069FD8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08069FE6
	adds r0, #0xFF
_08069FE6:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08069FFC @ =0x00001D82
	bl sub_80DF024
	b _0806A040
	.byte 0x00, 0x00
_08069FF4: .4byte 0x0000204D
_08069FF8: .4byte 0x00004071
_08069FFC: .4byte 0x00001D82
_0806A000:
	ldr r2, _0806A04C @ =0x00004071
	adds r0, r6, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806A01A
	adds r0, #0xFF
_0806A01A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806A028
	adds r0, #0xFF
_0806A028:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806A036
	adds r0, #0xFF
_0806A036:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806A050 @ =0x00001D90
	bl sub_80DF024
_0806A040:
	ldr r0, _0806A054 @ =0x0806A19D
	str r0, [r6, #0x4C]
_0806A044:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806A04C: .4byte 0x00004071
_0806A050: .4byte 0x00001D90
_0806A054: .4byte sub_806A19C
	thumb_func_start sub_806A058
sub_806A058:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x18]
	cmp r1, #0x00
	ble _0806A088
	ldr r0, [r4, #0x10]
	ldr r2, _0806A084 @ =0x00000133
	adds r0, r0, r2
	str r0, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	adds r0, r1, r0
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	b _0806A106
_0806A084: .4byte 0x00000133
_0806A088:
	movs r0, #0x00
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0806A0D0
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806A0AA
	adds r1, #0xFF
_0806A0AA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806A0B4
	adds r2, #0xFF
_0806A0B4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806A0BE
	adds r3, #0xFF
_0806A0BE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806A0CC @ =0x00001D82
	bl sub_80DF024
	b _0806A102
	.byte 0x00, 0x00
_0806A0CC: .4byte 0x00001D82
_0806A0D0:
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806A0E4
	adds r1, #0xFF
_0806A0E4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806A0EE
	adds r2, #0xFF
_0806A0EE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806A0F8
	adds r3, #0xFF
_0806A0F8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806A110 @ =0x00001D90
	bl sub_80DF024
_0806A102:
	ldr r0, _0806A114 @ =0x0806A119
	str r0, [r4, #0x4C]
_0806A106:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A110: .4byte 0x00001D90
_0806A114: .4byte sub_806A118
	thumb_func_start sub_806A118
sub_806A118:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806A170
	ldr r5, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _0806A134
	adds r2, #0xFF
_0806A134:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0806A13E
	adds r3, #0xFF
_0806A13E:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0806A154
	movs r0, #0x13
	b _0806A156
_0806A154:
	movs r0, #0x12
_0806A156:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	ldr r2, _0806A178 @ =0x00004071
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806A17C @ =0x0808750D
	str r0, [r4, #0x4C]
_0806A170:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806A178: .4byte 0x00004071
_0806A17C: .4byte sub_808750C
	thumb_func_start sub_806A180
sub_806A180:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806A196
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0x00
_0806A196:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_806A19C
sub_806A19C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806A1BC
	ldr r2, _0806A1C4 @ =0x00004071
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806A1C8 @ =0x0808750D
	str r0, [r4, #0x4C]
_0806A1BC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A1C4: .4byte 0x00004071
_0806A1C8: .4byte sub_808750C
	thumb_func_start sub_806A1CC
sub_806A1CC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _0806A1DE
	ldr r0, _0806A1E4 @ =0x0808750D
	str r0, [r4, #0x4C]
	movs r0, #0x00
_0806A1DE:
	pop {r4}
	pop {r1}
	bx r1
_0806A1E4: .4byte sub_808750C
	thumb_func_start sub_806A1E8
sub_806A1E8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _0806A200 @ =0x0806A22D
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_0806A200: .4byte sub_806A22C
	thumb_func_start sub_806A204
sub_806A204:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806A220
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806A228 @ =0x0808750D
	str r0, [r4, #0x4C]
_0806A220:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A228: .4byte sub_808750C
