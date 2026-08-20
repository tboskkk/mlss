	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80620F8
sub_80620F8:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08062116
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	b _0806211C
_08062116:
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r0, #0x01
_0806211C:
	str r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xA0
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _08062130 @ =0x08062189
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r1}
	bx r1
_08062130: .4byte sub_8062188
	thumb_func_start sub_8062134
sub_8062134:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08062142
	bl sub_807C298
_08062142:
	ldr r0, _0806214C @ =0x0808750D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806214C: .4byte sub_808750C
	thumb_func_start sub_8062150
sub_8062150:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08062164
	ldr r0, _08062160 @ =0x0808750D
	b _0806217A
	.byte 0x00, 0x00
_08062160: .4byte sub_808750C
_08062164:
	bl sub_8082B00
	cmp r0, #0x00
	bne _0806217C
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062184 @ =0x08061B8D
_0806217A:
	str r0, [r4, #0x4C]
_0806217C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062184: .4byte sub_8061B8C
	thumb_func_start sub_8062188
sub_8062188:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08062196
	bl sub_807C298
_08062196:
	bl sub_8082B00
	cmp r0, #0x00
	bne _080621D0
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _080621B2
	cmp r1, #0x01
	beq _080621C0
	b _080621CC
_080621B2:
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080621CC
_080621C0:
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080621CC:
	ldr r0, _080621D8 @ =0x080618A5
	str r0, [r4, #0x4C]
_080621D0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080621D8: .4byte sub_80618A4
	thumb_func_start sub_80621DC
sub_80621DC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062282
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806228C @ =0x0806236D
	str r0, [r4, #0x58]
	ldr r0, _08062290 @ =0x08062311
	str r0, [r4, #0x60]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
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
	movs r5, #0x00
	ldr r0, _08062294 @ =0x00000199
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08062250
	adds r1, #0xFF
_08062250:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806225A
	adds r2, #0xFF
_0806225A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08062264
	adds r3, #0xFF
_08062264:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08062298 @ =0x00000ED2
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _0806229C @ =0x080622A1
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_08062282:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806228C: .4byte sub_806236C
_08062290: .4byte sub_8062310
_08062294: .4byte 0x00000199
_08062298: .4byte 0x00000ED2
_0806229C: .4byte sub_80622A0
	thumb_func_start sub_80622A0
sub_80622A0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0F
	ble _080622E2
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080622C0
	adds r1, #0xFF
_080622C0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080622CA
	adds r2, #0xFF
_080622CA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080622D4
	adds r3, #0xFF
_080622D4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08062308 @ =0x00000ED2
	bl sub_80DF024
	movs r0, #0x00
	strh r0, [r5, #0x00]
_080622E2:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080622FE
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806230C @ =0x08062395
	str r0, [r4, #0x4C]
_080622FE:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062308: .4byte 0x00000ED2
_0806230C: .4byte sub_8062394
	thumb_func_start sub_8062310
sub_8062310:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08062360
	movs r0, #0x81
	bl stop_sfx_80195A8
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _0806232E
	adds r2, #0xFF
_0806232E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08062338
	adds r3, #0xFF
_08062338:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0806234E
	movs r0, #0x13
	b _08062350
_0806234E:
	movs r0, #0x12
_08062350:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	ldr r0, _08062368 @ =0x0808750D
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08062360:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08062368: .4byte sub_808750C
	thumb_func_start sub_806236C
sub_806236C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _08062390 @ =0x0808750D
	str r0, [r5, #0x4C]
	movs r0, #0x00
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08062390: .4byte sub_808750C
	thumb_func_start sub_8062394
sub_8062394:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080623B8
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080623C0 @ =0x0808750D
	str r0, [r4, #0x4C]
_080623B8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080623C0: .4byte sub_808750C
	.byte 0x00, 0xB5, 0x02, 0x1C, 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x23, 0xC1, 0x5E, 0x01, 0x20
	.byte 0x40, 0x42, 0x81, 0x42, 0x03, 0xD1, 0x11, 0x1C, 0x9C, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x11, 0x1C
	.byte 0x9C, 0x31, 0x01, 0x20, 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47
	.byte 0xF9, 0x23, 0x06, 0x08
	thumb_func_start sub_80623F8
sub_80623F8:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08062414
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806241C @ =0x08062421
	str r0, [r4, #0x4C]
_08062414:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806241C: .4byte sub_8062420
	thumb_func_start sub_8062420
sub_8062420:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062472
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806243A
	adds r1, #0xFF
_0806243A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08062444
	adds r2, #0xFF
_08062444:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806244E
	adds r3, #0xFF
_0806244E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806247C @ =0x00000E92
	bl sub_80DF024
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062480 @ =0x08062489
	str r0, [r4, #0x4C]
	ldr r0, _08062484 @ =0x00000127
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08062472:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806247C: .4byte 0x00000E92
_08062480: .4byte sub_8062488
_08062484: .4byte 0x00000127
	thumb_func_start sub_8062488
sub_8062488:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080624F2
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
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
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080624F8 @ =0x080624FD
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_080624F2:
	pop {r4}
	pop {r0}
	bx r0
_080624F8: .4byte sub_80624FC
	thumb_func_start sub_80624FC
sub_80624FC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806253E
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062526
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08062532
_08062526:
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08062532:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x04
	strh r1, [r0, #0x00]
	ldr r0, _08062544 @ =0x08062549
	str r0, [r4, #0x4C]
_0806253E:
	pop {r4}
	pop {r0}
	bx r0
_08062544: .4byte sub_8062548
	thumb_func_start sub_8062548
sub_8062548:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062590
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _08062590
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062580
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806258C
_08062580:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806258C:
	ldr r0, _08062598 @ =0x080621DD
	str r0, [r4, #0x4C]
_08062590:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062598: .4byte sub_80621DC
	thumb_func_start sub_806259C
sub_806259C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080625B8
	b _08062770
_080625B8:
	mov r0, r8
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r0, r8
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _080625D0
	adds r0, #0xFF
_080625D0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x08
	mov r4, r8
	ldr r3, [r4, #0x14]
	cmp r3, #0x00
	bge _080625E0
	adds r3, #0xFF
_080625E0:
	asrs r3, r3, #0x08
	mov r4, r8
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080625EC
	adds r0, #0xFF
_080625EC:
	asrs r0, r0, #0x08
	adds r0, #0x18
	str r0, [sp, #0x000]
	mov r4, r8
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08062780 @ =0x000040D9
	bl sub_807BF34
	adds r7, r0, #0x0
	str r7, [r4, #0x30]
	adds r1, r7, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r7, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r2, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x2C]
	str r0, [r7, #0x2C]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r0, r8
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x0C
	bl sub_807FA50
	str r0, [r7, #0x04]
	ldr r1, [r7, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	ldr r1, _08062784 @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldrb r5, [r6, #0x07]
	lsls r4, r5, #0x1B
	lsrs r3, r4, #0x1B
	subs r3, #0x01
	movs r1, #0x1F
	ands r3, r1
	movs r2, #0x20
	negs r2, r2
	adds r1, r2, #0x0
	ands r1, r5
	orrs r1, r3
	strb r1, [r6, #0x07]
	lsrs r4, r4, #0x1B
	ldrb r1, [r0, #0x0C]
	ands r2, r1
	orrs r2, r4
	strb r2, [r0, #0x0C]
	mov r6, r8
	adds r6, #0x84
	movs r0, #0x88
	add r0, r8
	mov r9, r0
	movs r1, #0x8C
	add r1, r8
	mov r10, r1
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r7, #0x0C]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	movs r5, #0x07
_080626F0:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	subs r5, #0x04
	cmp r5, #0x00
	bge _080626F0
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _08062788 @ =0x08062A69
	str r0, [r7, #0x4C]
	mov r2, r8
	ldr r0, [r2, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	mov r4, r9
	str r0, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	mov r1, r10
	str r0, [r1, #0x00]
	ldr r0, _0806278C @ =0x0000010B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08062790 @ =0x08062C95
	mov r2, r8
	str r0, [r2, #0x4C]
_08062770:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08062780: .4byte 0x000040D9
_08062784: .4byte 0x03000FD8
_08062788: .4byte sub_8062A68
_0806278C: .4byte 0x0000010B
_08062790: .4byte sub_8062C94
	thumb_func_start sub_8062794
sub_8062794:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	adds r7, r0, #0x0
	ldr r2, [r7, #0x28]
	movs r0, #0x08
	adds r0, r0, r2
	mov r9, r0
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080627B6
	adds r0, #0xFF
_080627B6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r1, [r0, #0x00]
	str r0, [sp, #0x034]
	cmp r1, #0x00
	bge _080627C8
	adds r1, #0xFF
_080627C8:
	asrs r0, r1, #0x08
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	mov r10, r0
	cmp r1, #0x00
	bge _080627DA
	adds r1, #0xFF
_080627DA:
	asrs r0, r1, #0x08
	str r0, [sp, #0x008]
	ldr r1, [r7, #0x30]
	cmp r1, #0x00
	beq _08062800
	ldr r0, [r1, #0x38]
	cmp r0, #0x00
	bge _080627EC
	adds r0, #0xFF
_080627EC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _080627F8
	adds r0, #0xFF
_080627F8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, [r1, #0x40]
	b _08062826
_08062800:
	adds r0, r2, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806280C
	adds r0, #0xFF
_0806280C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	adds r0, r2, #0x0
	adds r0, #0x90
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806281C
	adds r0, #0xFF
_0806281C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	adds r0, r2, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
_08062826:
	cmp r0, #0x00
	bge _0806282C
	adds r0, #0xFF
_0806282C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	add r0, sp, #0x00C
	add r1, sp, #0x010
	add r2, sp, #0x014
	movs r3, #0x00
	bl sub_807FC08
	ldr r4, [sp, #0x000]
	ldr r0, [sp, #0x00C]
	subs r4, r4, r0
	ldr r5, [sp, #0x004]
	ldr r0, [sp, #0x010]
	subs r5, r5, r0
	adds r0, r4, #0x0
	muls r0, r4
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r2, _08062964 @ =0x03001038
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	ldr r1, _08062968 @ =0x0819832C
	ldr r0, _0806296C @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
	ldr r3, _08062964 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	lsls r4, r4, #0x08
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r0, _08062964 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r8
	lsls r5, r5, #0x08
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	mov r1, r9
	adds r1, #0xAE
	strh r4, [r1, #0x00]
	adds r1, #0x02
	strh r0, [r1, #0x00]
	ldr r3, _08062970 @ =0x0300034C
	ldr r2, _08062974 @ =0x00000888
	adds r1, r3, r2
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0A
	ldr r1, [r7, #0x04]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x16
	adds r3, #0x80
	adds r1, r1, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x06]
	strh r4, [r2, #0x06]
	ldrh r1, [r2, #0x0E]
	strh r0, [r2, #0x0E]
	negs r0, r0
	ldrh r1, [r2, #0x16]
	strh r0, [r2, #0x16]
	ldrh r0, [r2, #0x1E]
	strh r4, [r2, #0x1E]
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x01C]
	ldr r3, [sp, #0x034]
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x020]
	mov r4, r10
	ldr r4, [r4, #0x00]
	str r4, [sp, #0x024]
	ldr r2, [r7, #0x30]
	cmp r2, #0x00
	beq _08062978
	ldr r0, [r2, #0x38]
	ldr r1, [r2, #0x3C]
	ldr r2, [r2, #0x40]
	ldr r3, [sp, #0x01C]
	subs r0, r0, r3
	str r0, [sp, #0x028]
	ldr r4, [sp, #0x020]
	subs r4, r1, r4
	mov r10, r4
	ldr r0, [sp, #0x024]
	subs r0, r2, r0
	mov r9, r0
	adds r4, r7, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	bne _08062906
	b _08062A50
_08062906:
	mov r7, r8
	mov r8, r9
	mov r6, r10
	ldr r5, [sp, #0x028]
_0806290E:
	ldr r1, _08062964 @ =0x03001038
	ldr r2, [r1, #0x00]
	adds r2, r2, r7
	adds r0, r5, #0x0
	movs r1, #0x1A
	bl _call_via_r2
	ldr r2, [sp, #0x01C]
	adds r0, r2, r0
	str r0, [r4, #0x04]
	ldr r3, _08062964 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	adds r0, r6, #0x0
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x020]
	adds r0, r1, r0
	str r0, [r4, #0x08]
	ldr r3, _08062964 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	mov r0, r8
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x024]
	adds r0, r1, r0
	str r0, [r4, #0x0C]
	ldr r4, [r4, #0x00]
	mov r2, r9
	lsls r0, r2, #0x01
	add r8, r0
	mov r3, r10
	lsls r0, r3, #0x01
	adds r6, r6, r0
	ldr r1, [sp, #0x028]
	lsls r0, r1, #0x01
	adds r5, r5, r0
	cmp r4, #0x00
	bne _0806290E
	b _08062A50
_08062964: .4byte 0x03001038
_08062968: .4byte 0x0819832C
_0806296C: .4byte 0x08198220
_08062970: .4byte 0x0300034C
_08062974: .4byte 0x00000888
_08062978:
	mov r0, r9
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [r0, #0x00]
	adds r0, #0x04
	ldr r3, [r0, #0x00]
	ldr r4, [sp, #0x01C]
	subs r0, r1, r4
	cmp r0, #0x00
	bge _08062990
	adds r0, #0x07
_08062990:
	asrs r0, r0, #0x03
	str r0, [sp, #0x02C]
	ldr r1, [sp, #0x020]
	subs r0, r2, r1
	cmp r0, #0x00
	bge _0806299E
	adds r0, #0x07
_0806299E:
	asrs r0, r0, #0x03
	str r0, [sp, #0x030]
	ldr r2, [sp, #0x024]
	subs r0, r3, r2
	cmp r0, #0x00
	bge _080629AC
	adds r0, #0x07
_080629AC:
	asrs r6, r0, #0x03
	ldr r3, [sp, #0x02C]
	adds r0, r3, #0x0
	muls r0, r3
	ldr r4, [sp, #0x030]
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r2, _08062A64 @ =0x03001038
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r5, r0, #0x0
	lsls r3, r5, #0x03
	str r3, [sp, #0x018]
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r4, #0x00
	ldsh r0, [r0, r4]
	ldr r2, [sp, #0x02C]
	adds r1, r2, #0x0
	muls r1, r0
	str r1, [sp, #0x02C]
	ldr r4, [sp, #0x030]
	adds r3, r4, #0x0
	muls r3, r0
	str r3, [sp, #0x030]
	muls r6, r0
	movs r0, #0x0D
	muls r5, r0
	adds r4, r7, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	beq _08062A50
	mov r9, r8
	mov r10, r6
	mov r8, r3
	adds r7, r1, #0x0
_080629FE:
	ldr r0, _08062A64 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r9
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x01C]
	adds r0, r1, r0
	str r0, [r4, #0x04]
	ldr r3, _08062A64 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r9
	mov r0, r8
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x020]
	adds r0, r1, r0
	str r0, [r4, #0x08]
	ldr r3, _08062A64 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r9
	mov r0, r10
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x024]
	adds r0, r1, r0
	str r0, [r4, #0x0C]
	ldr r4, [r4, #0x00]
	lsls r0, r6, #0x01
	add r10, r0
	ldr r2, [sp, #0x030]
	lsls r0, r2, #0x01
	add r8, r0
	ldr r3, [sp, #0x02C]
	lsls r0, r3, #0x01
	adds r7, r7, r0
	cmp r4, #0x00
	bne _080629FE
_08062A50:
	ldr r0, [sp, #0x018]
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08062A64: .4byte 0x03001038
	thumb_func_start sub_8062A68
sub_8062A68:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r4, r7, #0x0
	adds r4, #0xAE
	movs r1, #0xA0
	lsls r1, r1, #0x02
	adds r0, r1, #0x0
	ldrh r2, [r4, #0x00]
	adds r0, r0, r2
	strh r0, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_8062794
	movs r2, #0x00
	ldsh r1, [r4, r2]
	lsls r1, r1, #0x01
	cmp r1, r0
	blt _08062B70
	ldr r6, [r7, #0x28]
	movs r0, #0x08
	adds r0, r0, r6
	mov r8, r0
	adds r0, r6, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08062AA6
	adds r0, #0xFF
_08062AA6:
	asrs r2, r0, #0x08
	adds r0, r6, #0x0
	adds r0, #0x90
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08062AB4
	adds r0, #0xFF
_08062AB4:
	asrs r3, r0, #0x08
	adds r0, r6, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08062AC2
	adds r0, #0xFF
_08062AC2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r6, #0x0
	ldr r1, _08062B7C @ =0x000040D9
	bl sub_807BF34
	adds r5, r0, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x03
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x2C]
	str r0, [r5, #0x2C]
	ldr r0, [r1, #0x6C]
	str r0, [r5, #0x6C]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_807F4C4
	adds r3, r6, #0x0
	adds r3, #0x7F
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r2, #0x77
	adds r2, r2, r5
	mov r12, r2
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	mov r1, r12
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r2, r12
	strb r1, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r2, #0x00]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	adds r0, #0x1A
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08062B80 @ =0x08062C49
	str r0, [r5, #0x4C]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x06
	strh r0, [r1, #0x00]
	str r5, [r7, #0x30]
	adds r1, r7, #0x0
	adds r1, #0xAC
	movs r0, #0x10
	strh r0, [r1, #0x00]
	ldr r0, _08062B84 @ =0x08062B89
	str r0, [r7, #0x4C]
_08062B70:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08062B7C: .4byte 0x000040D9
_08062B80: .4byte sub_8062C48
_08062B84: .4byte sub_8062B88
	thumb_func_start sub_8062B88
sub_8062B88:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	bl sub_8062794
	adds r6, r7, #0x0
	adds r6, #0xAC
	ldrh r0, [r6, #0x00]
	subs r0, #0x01
	strh r0, [r6, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x12
	bgt _08062C2A
	ldr r5, _08062C34 @ =0x03001038
	ldr r4, _08062C38 @ =0x0819832C
	ldr r0, _08062C3C @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x28]
	adds r0, #0xB6
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r3, #0x00
	ldsh r1, [r6, r3]
	bl _call_via_r2
	mov r8, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x28]
	adds r0, #0xB8
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r3, #0x00
	ldsh r1, [r6, r3]
	bl _call_via_r2
	ldr r3, _08062C40 @ =0x0300034C
	ldr r2, _08062C44 @ =0x00000888
	adds r1, r3, r2
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0A
	ldr r1, [r7, #0x04]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x16
	adds r3, #0x80
	adds r1, r1, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x06]
	mov r3, r8
	strh r3, [r2, #0x06]
	ldrh r1, [r2, #0x0E]
	strh r0, [r2, #0x0E]
	negs r0, r0
	ldrh r1, [r2, #0x16]
	strh r0, [r2, #0x16]
	ldrh r0, [r2, #0x1E]
	strh r3, [r2, #0x1E]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x01
	bne _08062C2A
	ldr r0, [r7, #0x28]
	adds r0, #0xB4
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_807C298
_08062C2A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08062C34: .4byte 0x03001038
_08062C38: .4byte 0x0819832C
_08062C3C: .4byte 0x08198220
_08062C40: .4byte 0x0300034C
_08062C44: .4byte 0x00000888
	thumb_func_start sub_8062C48
sub_8062C48:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _08062C6C
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	bne _08062C6C
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08062C6C:
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	subs r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bgt _08062C8E
	ldr r0, [r4, #0x28]
	ldr r1, [r0, #0x38]
	cmp r1, #0x00
	bne _08062C88
	adds r0, #0xB4
	strh r1, [r0, #0x00]
_08062C88:
	adds r0, r4, #0x0
	bl sub_807C298
_08062C8E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8062C94
sub_8062C94:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08062CD8
	ldr r0, _08062CCC @ =0x0000010B
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08062CD4
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x0C
	strh r1, [r0, #0x00]
	ldr r0, _08062CD0 @ =0x08062D85
	b _08062CD6
	.byte 0x00, 0x00
_08062CCC: .4byte 0x0000010B
_08062CD0: .4byte sub_8062D84
_08062CD4:
	ldr r0, _08062CE0 @ =0x08062D69
_08062CD6:
	str r0, [r4, #0x4C]
_08062CD8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062CE0: .4byte sub_8062D68
	.byte 0x00, 0xB5, 0x02, 0x1C, 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x23, 0xC1, 0x5E, 0x01, 0x20
	.byte 0x40, 0x42, 0x81, 0x42, 0x03, 0xD1, 0x11, 0x1C, 0x9C, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x11, 0x1C
	.byte 0x9C, 0x31, 0x01, 0x20, 0x08, 0x60, 0x10, 0x1C, 0xA0, 0x30, 0x01, 0x21, 0x01, 0x60, 0x02, 0x48
	.byte 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x0D, 0x2E, 0x06, 0x08, 0x10, 0xB5, 0x04, 0x1C
	.byte 0xE0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x22, 0x81, 0x5E, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42
	.byte 0x03, 0xD1, 0x21, 0x1C, 0x9C, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x21, 0x1C, 0x9C, 0x31, 0x01, 0x20
	.byte 0x08, 0x60, 0x37, 0xF1, 0xF3, 0xF8, 0x22, 0x1C, 0xA0, 0x32, 0x01, 0x21, 0x01, 0x40, 0x02, 0x31
	.byte 0x11, 0x60, 0x03, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0x71, 0x2E, 0x06, 0x08
	thumb_func_start sub_8062D68
sub_8062D68:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062D80 @ =0x0808750D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08062D80: .4byte sub_808750C
	thumb_func_start sub_8062D84
sub_8062D84:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08062DD0
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08062DAE
	adds r1, #0xFF
_08062DAE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08062DB8
	adds r2, #0xFF
_08062DB8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08062DC2
	adds r3, #0xFF
_08062DC2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08062DD8 @ =0x0000105D
	bl sub_80DF024
	ldr r0, _08062DDC @ =0x08062DE1
	str r0, [r4, #0x4C]
_08062DD0:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08062DD8: .4byte 0x0000105D
_08062DDC: .4byte sub_8062DE0
	thumb_func_start sub_8062DE0
sub_8062DE0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062E00
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062E08 @ =0x0806259D
	str r0, [r4, #0x4C]
_08062E00:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062E08: .4byte sub_806259C
	thumb_func_start sub_8062E0C
sub_8062E0C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062E60
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08062E32
	adds r1, #0xFF
_08062E32:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08062E3C
	adds r2, #0xFF
_08062E3C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08062E46
	adds r3, #0xFF
_08062E46:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08062E68 @ =0x0000105D
	bl sub_80DF024
	movs r0, #0x85
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08062E6C @ =0x08062DE1
	str r0, [r4, #0x4C]
_08062E60:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08062E68: .4byte 0x0000105D
_08062E6C: .4byte sub_8062DE0
	thumb_func_start sub_8062E70
sub_8062E70:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08062E8C
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062E94 @ =0x08062E99
	str r0, [r4, #0x4C]
_08062E8C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062E94: .4byte sub_8062E98
	thumb_func_start sub_8062E98
sub_8062E98:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062EF4
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
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
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062EFC @ =0x08062F01
	str r0, [r4, #0x4C]
_08062EF4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062EFC: .4byte sub_8062F00
	thumb_func_start sub_8062F00
sub_8062F00:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062F34
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062F24
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08062F30
_08062F24:
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08062F30:
	ldr r0, _08062F3C @ =0x08062F41
	str r0, [r4, #0x4C]
_08062F34:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062F3C: .4byte sub_8062F40
	thumb_func_start sub_8062F40
sub_8062F40:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062F80
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062F68
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08062F74
_08062F68:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08062F74:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	ldr r0, _08062F88 @ =0x08062F8D
	str r0, [r4, #0x4C]
_08062F80:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062F88: .4byte sub_8062F8C
	thumb_func_start sub_8062F8C
sub_8062F8C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08062FC8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062FB8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08062FC4
_08062FB8:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08062FC4:
	ldr r0, _08062FD0 @ =0x08062E0D
	str r0, [r4, #0x4C]
_08062FC8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062FD0: .4byte sub_8062E0C
	thumb_func_start sub_8062FD4
sub_8062FD4:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08062FE8
	b _080630F2
_08062FE8:
	adds r0, r6, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08062FFC
	adds r1, #0xFF
_08062FFC:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08063006
	adds r2, #0xFF
_08063006:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08063010
	adds r3, #0xFF
_08063010:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080630FC @ =0x000012AB
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08063024
	adds r0, #0xFF
_08063024:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0C
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08063032
	adds r0, #0xFF
_08063032:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806303E
	adds r0, #0xFF
_0806303E:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08063100 @ =0x000040F4
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08063104 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08063108 @ =0x080632E5
	str r0, [r5, #0x58]
	ldr r0, _0806310C @ =0x080632C1
	str r0, [r5, #0x5C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x38
	strh r2, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA8
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08063110 @ =0x08063119
	str r0, [r5, #0x4C]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08063114 @ =0x08063309
	str r0, [r6, #0x4C]
_080630F2:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080630FC: .4byte 0x000012AB
_08063100: .4byte 0x000040F4
_08063104: .4byte sub_8087540
_08063108: .4byte sub_80632E4
_0806310C: .4byte sub_80632C0
_08063110: .4byte sub_8063118
_08063114: .4byte sub_8063308
