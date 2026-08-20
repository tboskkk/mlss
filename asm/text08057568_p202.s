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
	thumb_func_start sub_8063118
sub_8063118:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0x0
	ldr r4, _08063230 @ =0x03000E18
	ldr r2, _08063234 @ =0x08200014
	movs r0, #0x10
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_801B75C
	str r0, [r4, #0x00]
	ldr r1, _08063238 @ =0x03000E48
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08063142
	adds r0, #0xFF
_08063142:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0806314E
	adds r0, #0xFF
_0806314E:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x02]
	movs r0, #0x01
	mov r10, r0
	adds r4, r5, #0x0
	adds r4, #0xA8
	ldr r1, _08063238 @ =0x03000E48
	adds r1, #0x06
	mov r8, r1
	movs r7, #0x00
	ldr r2, _08063238 @ =0x03000E48
	adds r2, #0x04
	mov r12, r2
_08063168:
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bge _08063176
	adds r1, #0xFF
_08063176:
	ldr r6, _0806323C @ =0x083B86E4
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x04
	adds r0, r7, r0
	adds r0, r0, r6
	asrs r1, r1, #0x08
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	mov r0, r12
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bge _08063198
	adds r2, #0xFF
_08063198:
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x04
	adds r1, r7, r1
	adds r0, r6, #0x2
	mov r9, r0
	add r1, r9
	asrs r0, r2, #0x08
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	adds r2, r7, #0x4
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bge _080631BE
	adds r1, #0xFF
_080631BE:
	adds r3, r2, #0x0
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x04
	adds r0, r3, r0
	adds r0, r0, r6
	asrs r1, r1, #0x08
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	mov r2, r12
	strh r1, [r2, #0x04]
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bge _080631E0
	adds r2, #0xFF
_080631E0:
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x04
	adds r0, r3, r0
	add r0, r9
	asrs r1, r2, #0x08
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	mov r0, r8
	strh r1, [r0, #0x04]
	movs r1, #0x08
	add r8, r1
	adds r7, #0x08
	add r12, r1
	movs r2, #0x02
	add r10, r2
	mov r0, r10
	cmp r0, #0x04
	ble _08063168
	ldr r1, _08063230 @ =0x03000E18
	ldr r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x01
	ldr r2, _08063240 @ =0x083B8714
	adds r1, r1, r2
	movs r2, #0x00
	ldsh r3, [r1, r2]
	ldr r1, _08063238 @ =0x03000E48
	movs r2, #0x05
	bl sub_801B748
	ldr r0, _08063244 @ =0x08063249
	str r0, [r5, #0x4C]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063230: .4byte 0x03000E18
_08063234: .4byte 0x08200014
_08063238: .4byte 0x03000E48
_0806323C: .4byte 0x083B86E4
_08063240: .4byte 0x083B8714
_08063244: .4byte sub_8063248
	thumb_func_start sub_8063248
sub_8063248:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r7, _080632A0 @ =0x03000E18
	ldr r0, [r7, #0x00]
	ldr r5, _080632A4 @ =0x03000E40
	ldr r6, _080632A8 @ =0x03000E44
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_801B1C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _080632AC
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x10]
	ldr r2, [r6, #0x00]
	str r2, [r4, #0x14]
	cmp r0, #0x00
	bge _08063274
	adds r0, #0xFF
_08063274:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08063280
	adds r0, #0xFF
_08063280:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0806328C
	adds r0, #0xFF
_0806328C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	b _080632B8
	.byte 0x00, 0x00
_080632A0: .4byte 0x03000E18
_080632A4: .4byte 0x03000E40
_080632A8: .4byte 0x03000E44
_080632AC:
	ldr r0, [r7, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	bl sub_807C298
_080632B8:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80632C0
sub_80632C0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _080632DA
	ldr r0, _080632E0 @ =0x08063385
	str r0, [r4, #0x4C]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	movs r0, #0x00
_080632DA:
	pop {r4}
	pop {r1}
	bx r1
_080632E0: .4byte sub_8063384
	thumb_func_start sub_80632E4
sub_80632E4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _08063304 @ =0x080633D1
	str r0, [r4, #0x4C]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_08063304: .4byte sub_80633D0
	thumb_func_start sub_8063308
sub_8063308:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063332
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD8
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063338 @ =0x0808750D
	str r0, [r4, #0x4C]
_08063332:
	pop {r4}
	pop {r0}
	bx r0
_08063338: .4byte sub_808750C
	.byte 0x30, 0xB5, 0x05, 0x1C, 0xE8, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x22, 0x81, 0x5E, 0x01, 0x20
	.byte 0x40, 0x42, 0x81, 0x42, 0x03, 0xD1, 0x29, 0x1C, 0x9C, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x29, 0x1C
	.byte 0x9C, 0x31, 0x01, 0x20, 0x08, 0x60, 0x36, 0xF1, 0xE5, 0xFD, 0x2C, 0x1C, 0xA8, 0x34, 0x03, 0x21
	.byte 0x77, 0xF1, 0x8E, 0xFC, 0x20, 0x60, 0x03, 0x48, 0xE8, 0x64, 0x01, 0x20, 0x30, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0x21, 0x34, 0x06, 0x08
	thumb_func_start sub_8063384
sub_8063384:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08063392
	adds r1, #0xFF
_08063392:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806339C
	adds r2, #0xFF
_0806339C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080633A6
	adds r3, #0xFF
_080633A6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080633C8 @ =0x000012CD
	bl sub_80DF024
	ldr r0, _080633CC @ =0x03000E18
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	bl sub_807C298
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080633C8: .4byte 0x000012CD
_080633CC: .4byte 0x03000E18
	thumb_func_start sub_80633D0
sub_80633D0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080633DE
	adds r1, #0xFF
_080633DE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080633E8
	adds r2, #0xFF
_080633E8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080633F2
	adds r3, #0xFF
_080633F2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08063418 @ =0x000012CD
	bl sub_80DF024
	movs r0, #0x00
	str r0, [r4, #0x4C]
	ldr r0, _0806341C @ =0x03000E18
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	bl sub_807C298
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063418: .4byte 0x000012CD
_0806341C: .4byte 0x03000E18
	thumb_func_start sub_8063420
sub_8063420:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08063464
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08063442
	adds r1, #0xFF
_08063442:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806344C
	adds r2, #0xFF
_0806344C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08063456
	adds r3, #0xFF
_08063456:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806346C @ =0x000012A3
	bl sub_80DF024
	ldr r0, _08063470 @ =0x08063475
	str r0, [r4, #0x4C]
_08063464:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806346C: .4byte 0x000012A3
_08063470: .4byte sub_8063474
	thumb_func_start sub_8063474
sub_8063474:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080634D0
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xC0
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
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _080634D8 @ =0x080634DD
	str r0, [r4, #0x4C]
_080634D0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080634D8: .4byte sub_80634DC
	thumb_func_start sub_80634DC
sub_80634DC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08063518
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08063500
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806350C
_08063500:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806350C:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x01
	strh r1, [r0, #0x00]
	ldr r0, _08063520 @ =0x08063525
	str r0, [r4, #0x4C]
_08063518:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063520: .4byte sub_8063524
	thumb_func_start sub_8063524
sub_8063524:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806355E
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806355E
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	ldr r0, _08063564 @ =0x08062FD5
	str r0, [r4, #0x4C]
_0806355E:
	pop {r4}
	pop {r0}
	bx r0
_08063564: .4byte sub_8062FD4
	thumb_func_start sub_8063568
sub_8063568:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080635F0
	ldr r0, [r4, #0x2C]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r0, r3
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
	adds r0, r4, #0x0
	adds r0, #0x7C
	movs r1, #0x00
	strh r3, [r0, #0x00]
	subs r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080635E2
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x58
	bl play_sfx_80195B4
	b _080635EC
_080635E2:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x58
	bl play_sfx_80195B4
_080635EC:
	ldr r0, _080635F8 @ =0x08063A25
	str r0, [r4, #0x4C]
_080635F0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080635F8: .4byte sub_8063A24
	thumb_func_start sub_80635FC
sub_80635FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08063616
	b _08063856
_08063616:
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08063622
	b _08063814
_08063622:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806362A
	adds r1, #0xFF
_0806362A:
	asrs r1, r1, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08063634
	adds r0, #0xFF
_08063634:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08063640
	adds r3, #0xFF
_08063640:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080637F0 @ =0x00001296
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08063654
	adds r2, #0xFF
_08063654:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _0806365E
	adds r3, #0xFF
_0806365E:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08063668
	adds r0, #0xFF
_08063668:
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
	ldr r1, _080637F4 @ =0x000040F8
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
	adds r7, r6, #0x0
	adds r7, #0x77
	ldrb r0, [r7, #0x00]
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
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080637F8 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _080637FC @ =0x08063921
	str r0, [r5, #0x60]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r5, #0x18]
	str r0, [r5, #0x40]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	ldr r2, _08063800 @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r7, r5, #0x0
	adds r7, #0x88
	ldr r0, [r5, #0x3C]
	str r0, [r7, #0x00]
	movs r0, #0x8C
	adds r0, r0, r5
	mov r9, r0
	ldr r0, [r5, #0x40]
	mov r2, r9
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08063720
	adds r0, #0xFF
_08063720:
	asrs r0, r0, #0x08
	adds r4, r5, #0x0
	adds r4, #0xAE
	strh r0, [r4, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08063730
	adds r0, #0xFF
_08063730:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08063740
	adds r0, #0xFF
_08063740:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r1, r1, r0
	mov r8, r1
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r7, #0x00]
	subs r7, r1, r0
	ldr r2, _08063804 @ =0x03001038
	mov r1, r8
	mov r0, r8
	muls r0, r1
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	ldr r1, _08063808 @ =0x00000133
	bl __divsi3
	adds r4, r0, #0x0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _08063792
	movs r0, #0x02
_08063792:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	str r4, [r0, #0x00]
	adds r0, #0x04
	mov r2, r8
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r1, #0x10
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0806380C @ =0x0806386D
	str r0, [r5, #0x4C]
	movs r0, #0x80
	lsls r0, r0, #0x07
	adds r1, r4, #0x0
	bl __divsi3
	mov r1, r9
	str r0, [r1, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x10]
	ldr r2, _08063800 @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r6, #0x10]
	str r0, [r6, #0x38]
	str r0, [r6, #0x14]
	str r0, [r6, #0x3C]
	ldr r0, _08063810 @ =0x080639C1
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x57
	bl play_sfx_80195B4
	b _08063856
_080637F0: .4byte 0x00001296
_080637F4: .4byte 0x000040F8
_080637F8: .4byte sub_8087540
_080637FC: .4byte sub_8063920
_08063800: .4byte 0xFFFFC000
_08063804: .4byte 0x03001038
_08063808: .4byte 0x00000133
_0806380C: .4byte sub_806386C
_08063810: .4byte sub_80639C0
_08063814:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806381C
	adds r1, #0xFF
_0806381C:
	asrs r1, r1, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08063826
	adds r0, #0xFF
_08063826:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08063832
	adds r3, #0xFF
_08063832:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08063864 @ =0x0000129B
	bl sub_80DF024
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063868 @ =0x0806398D
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x38
	bl play_sfx_80195B4
_08063856:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08063864: .4byte 0x0000129B
_08063868: .4byte sub_806398C
	thumb_func_start sub_806386C
sub_806386C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r2, [r6, #0x08]
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x0C]
	adds r0, r0, r1
	strh r0, [r2, #0x0C]
	adds r0, r6, #0x0
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
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	ble _08063918
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x45
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	bl sub_807F47C
	adds r0, r6, #0x0
	bl sub_807C298
_08063918:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8063920
sub_8063920:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806397E
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08063938
	adds r2, #0xFF
_08063938:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08063942
	adds r3, #0xFF
_08063942:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08063958
	movs r0, #0x13
	b _0806395A
_08063958:
	movs r0, #0x12
_0806395A:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r1, #0x1E
	str r1, [r0, #0x00]
	ldr r0, _08063988 @ =0x08063A75
	str r0, [r4, #0x4C]
	movs r0, #0x00
_0806397E:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08063988: .4byte sub_8063A74
	thumb_func_start sub_806398C
sub_806398C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080639B4
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x03
	strh r1, [r0, #0x00]
	ldr r0, _080639BC @ =0x08063AD5
	str r0, [r4, #0x4C]
_080639B4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080639BC: .4byte sub_8063AD4
	thumb_func_start sub_80639C0
sub_80639C0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08063A12
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	str r1, [r4, #0x10]
	str r1, [r4, #0x38]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	str r0, [r4, #0x3C]
	cmp r1, #0x00
	bge _080639E4
	adds r1, #0xFF
_080639E4:
	asrs r1, r1, #0x08
	cmp r0, #0x00
	bge _080639EC
	adds r0, #0xFF
_080639EC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080639F8
	adds r3, #0xFF
_080639F8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08063A1C @ =0x00001296
	bl sub_80DF024
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063A20 @ =0x08063B2D
	str r0, [r4, #0x4C]
_08063A12:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063A1C: .4byte 0x00001296
_08063A20: .4byte sub_8063B2C
	thumb_func_start sub_8063A24
sub_8063A24:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08063A40
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063A48 @ =0x080635FD
	str r0, [r4, #0x4C]
_08063A40:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063A48: .4byte sub_80635FC
	.byte 0x02, 0x1C, 0x9C, 0x32, 0x01, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x59, 0x3B, 0x06, 0x08, 0x02, 0x1C, 0x9C, 0x32, 0x00, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x59, 0x3B, 0x06, 0x08
	thumb_func_start sub_8063A74
sub_8063A74:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08063ACC
	ldr r0, [r4, #0x28]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, _08063AB8 @ =0x08087541
	str r0, [r1, #0x68]
	ldr r0, [r4, #0x6C]
	str r0, [r1, #0x6C]
	movs r0, #0x00
	str r0, [r4, #0x6C]
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08063AC0
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063ABC @ =0x0806386D
	str r0, [r4, #0x4C]
	b _08063ACC
	.byte 0x00, 0x00
_08063AB8: .4byte sub_8087540
_08063ABC: .4byte sub_806386C
_08063AC0:
	adds r0, r1, #0x0
	bl sub_8086700
	adds r0, r4, #0x0
	bl sub_807C298
_08063ACC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8063AD4
sub_8063AD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063B1A
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08063B1A
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08063B20 @ =0x00001471
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r0, _08063B24 @ =0x08063B81
	str r0, [r4, #0x5C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x83
	bl play_sfx_80195B4
	ldr r0, _08063B28 @ =0x08063BA9
	str r0, [r4, #0x4C]
_08063B1A:
	pop {r4}
	pop {r0}
	bx r0
_08063B20: .4byte 0x00001471
_08063B24: .4byte sub_8063B80
_08063B28: .4byte sub_8063BA8
	thumb_func_start sub_8063B2C
sub_8063B2C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063B4C
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063B54 @ =0x08063BF1
	str r0, [r4, #0x4C]
_08063B4C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063B54: .4byte sub_8063BF0
	thumb_func_start sub_8063B58
sub_8063B58:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08063B74
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063B7C @ =0x08063569
	str r0, [r4, #0x4C]
_08063B74:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063B7C: .4byte sub_8063568
	thumb_func_start sub_8063B80
sub_8063B80:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086C64
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _08063B9A
	ldr r0, _08063BA4 @ =0x08063C25
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x10
	str r0, [r1, #0x00]
_08063B9A:
	adds r0, r2, #0x0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08063BA4: .4byte sub_8063C24
	thumb_func_start sub_8063BA8
sub_8063BA8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063BDC
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08063BE4 @ =0x00001485
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r0, _08063BE8 @ =0x08063B81
	str r0, [r4, #0x5C]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r0, _08063BEC @ =0x08063C8D
	str r0, [r4, #0x4C]
_08063BDC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063BE4: .4byte 0x00001485
_08063BE8: .4byte sub_8063B80
_08063BEC: .4byte sub_8063C8C
	thumb_func_start sub_8063BF0
sub_8063BF0:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _08063C1C @ =0xFFFFFE00
	adds r0, r1, r3
	str r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08063C04
	adds r3, #0xFF
	adds r0, r1, r3
_08063C04:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _08063C18
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r2, #0x10]
	ldr r0, _08063C20 @ =0x0808750D
	str r0, [r2, #0x4C]
_08063C18:
	pop {r0}
	bx r0
_08063C1C: .4byte 0xFFFFFE00
_08063C20: .4byte sub_808750C
	thumb_func_start sub_8063C24
sub_8063C24:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08063C56
	adds r0, r4, #0x0
	movs r1, #0x01
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
	ldr r0, _08063C5C @ =0x08063C61
	str r0, [r4, #0x4C]
_08063C56:
	pop {r4}
	pop {r0}
	bx r0
_08063C5C: .4byte sub_8063C60
	thumb_func_start sub_8063C60
sub_8063C60:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063C80
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063C88 @ =0x080874B5
	str r0, [r4, #0x4C]
_08063C80:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063C88: .4byte sub_80874B4
	thumb_func_start sub_8063C8C
sub_8063C8C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063CBC
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08063CBC
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063CC4 @ =0x08063C61
	str r0, [r4, #0x4C]
_08063CBC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063CC4: .4byte sub_8063C60
	thumb_func_start sub_8063CC8
sub_8063CC8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08063CDC
	b _08063F12
_08063CDC:
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r2, #0x00
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
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08063D00
	adds r1, #0xFF
_08063D00:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08063D0A
	adds r2, #0xFF
_08063D0A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08063D14
	adds r3, #0xFF
_08063D14:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08063DE4 @ =0x00001079
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r7, r0, #0x0
	cmp r1, #0x00
	bne _08063DF8
	ldr r0, _08063DE8 @ =0x00000113
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08063D3E
	adds r0, #0xFF
_08063D3E:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08063D4C
	adds r0, #0xFF
_08063D4C:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08063D58
	adds r0, #0xFF
_08063D58:
	asrs r0, r0, #0x08
	adds r0, #0x0A
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08063DEC @ =0x000040F1
	bl sub_807BF34
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	movs r1, #0x80
	strh r1, [r0, #0x04]
	ldr r0, [r5, #0x08]
	strh r1, [r0, #0x06]
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
	ldr r0, _08063DF0 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08063DF4 @ =0x08064275
	str r0, [r5, #0x5C]
	b _08063EB2
	.byte 0x00, 0x00
_08063DE4: .4byte 0x00001079
_08063DE8: .4byte 0x00000113
_08063DEC: .4byte 0x000040F1
_08063DF0: .4byte sub_8087540
_08063DF4: .4byte sub_8064274
_08063DF8:
	movs r0, #0x8A
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08063E0E
	adds r0, #0xFF
_08063E0E:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08063E1C
	adds r0, #0xFF
_08063E1C:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08063E28
	adds r0, #0xFF
_08063E28:
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
	ldr r1, _08063F1C @ =0x000040F1
	bl sub_807BF34
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x04]
	ldr r0, [r5, #0x08]
	strh r1, [r0, #0x06]
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
	ldr r0, _08063F20 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08063F24 @ =0x08064291
	str r0, [r5, #0x60]
_08063EB2:
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x38
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r0, #0x01
	strh r0, [r1, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x84
	ldr r0, [r6, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	adds r2, #0xDC
	ldr r0, [r2, #0x00]
	ldr r1, [r5, #0x3C]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	ldr r0, _08063F28 @ =0x08063F31
	str r0, [r5, #0x4C]
	ldr r0, _08063F2C @ =0x080642AD
	str r0, [r6, #0x4C]
_08063F12:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063F1C: .4byte 0x000040F1
_08063F20: .4byte sub_8087540
_08063F24: .4byte sub_8064290
_08063F28: .4byte sub_8063F30
_08063F2C: .4byte sub_80642AC
	thumb_func_start sub_8063F30
sub_8063F30:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063F5C
	adds r4, r5, #0x0
	adds r4, #0xAE
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	beq _08063F5C
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	strh r0, [r4, #0x00]
_08063F5C:
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08063F70
	ldr r0, [r5, #0x10]
	ldr r1, _08063F6C @ =0xFFFFFDE7
	b _08063F74
_08063F6C: .4byte 0xFFFFFDE7
_08063F70:
	ldr r0, [r5, #0x10]
	ldr r1, _08063FBC @ =0xFFFFFECD
_08063F74:
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r1, [r5, #0x38]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r4, r5, #0x0
	adds r4, #0xA4
	adds r0, r5, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	bl __divsi3
	ldr r1, [r4, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _08063FA6
	adds r1, #0xFF
_08063FA6:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _08063FB6
	adds r0, r5, #0x0
	bl sub_807C298
_08063FB6:
	pop {r4, r5}
	pop {r0}
	bx r0
_08063FBC: .4byte 0xFFFFFECD
	thumb_func_start sub_8063FC0
sub_8063FC0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08063FD8
	b _08064160
_08063FD8:
	adds r0, r6, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08063FEE
	adds r0, #0xFF
_08063FEE:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x09
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _08063FFC
	adds r3, #0xFF
_08063FFC:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08064006
	adds r0, #0xFF
_08064006:
	asrs r0, r0, #0x08
	adds r0, #0x0F
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806416C @ =0x000040F2
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
	adds r7, r6, #0x0
	adds r7, #0x77
	ldrb r0, [r7, #0x00]
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
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08064170 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08064174 @ =0x08064225
	str r0, [r5, #0x60]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r7, r5, #0x0
	adds r7, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r0, r2
	str r0, [r7, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080640BC
	adds r0, #0xFF
_080640BC:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080640CC
	adds r0, #0xFF
_080640CC:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080640DC
	adds r0, #0xFF
_080640DC:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r7, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x00]
	subs r4, r1, r0
	ldr r2, _08064178 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _08064110
	adds r0, #0xFF
_08064110:
	asrs r2, r0, #0x08
	mov r8, r2
	lsrs r0, r0, #0x1F
	add r0, r8
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	bl __divsi3
	cmp r0, #0x01
	bne _0806412C
	movs r0, #0x02
_0806412C:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	mov r1, r8
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r4, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0806417C @ =0x08064185
	str r0, [r5, #0x4C]
	movs r0, #0x94
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08064180 @ =0x0806424D
	str r0, [r6, #0x4C]
_08064160:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806416C: .4byte 0x000040F2
_08064170: .4byte sub_8087540
_08064174: .4byte sub_8064224
_08064178: .4byte 0x03001038
_0806417C: .4byte sub_8064184
_08064180: .4byte sub_806424C
	thumb_func_start sub_8064184
sub_8064184:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r1, [r6, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r0, r6, #0x0
	adds r0, #0xA4
	adds r5, r6, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
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
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r5, r0]
	ldr r0, [r4, #0x00]
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
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bgt _0806421E
	adds r0, r6, #0x0
	bl sub_807C298
_0806421E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8064224
sub_8064224:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08064242
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08064248 @ =0x0806432D
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08064242:
	pop {r4}
	pop {r1}
	bx r1
_08064248: .4byte sub_806432C
	thumb_func_start sub_806424C
sub_806424C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806426C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0806426C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8064274
sub_8064274:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _08064286
	ldr r0, _0806428C @ =0x080643DD
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08064286:
	pop {r4}
	pop {r1}
	bx r1
_0806428C: .4byte sub_80643DC
	thumb_func_start sub_8064290
sub_8064290:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _080642A2
	ldr r0, _080642A8 @ =0x08064425
	str r0, [r4, #0x4C]
	movs r0, #0x00
_080642A2:
	pop {r4}
	pop {r1}
	bx r1
_080642A8: .4byte sub_8064424
	thumb_func_start sub_80642AC
sub_80642AC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080642CC
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080642D4 @ =0x08064465
	str r0, [r4, #0x4C]
_080642CC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080642D4: .4byte 0x08064465
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x71, 0x43, 0x06, 0x08, 0x02, 0x1C, 0x9C, 0x32
	.byte 0x00, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x89, 0x44, 0x06, 0x08
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x55, 0x43, 0x06, 0x08, 0x02, 0x1C, 0x9C, 0x32
	.byte 0x01, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x89, 0x44, 0x06, 0x08
	.byte 0x02, 0x1C, 0x9C, 0x32, 0x00, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x6D, 0x44, 0x06, 0x08
	thumb_func_start sub_806432C
sub_806432C:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, [r1, #0x18]
	ldr r2, _08064350 @ =0xFFFFFC80
	adds r0, r0, r2
	str r0, [r1, #0x18]
	cmp r0, #0x00
	bgt _0806434C
	adds r0, r1, #0x0
	bl sub_807C298
_0806434C:
	pop {r0}
	bx r0
_08064350: .4byte 0xFFFFFC80
	thumb_func_start sub_8064354
sub_8064354:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806436C @ =0x08063FC1
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806436C: .4byte sub_8063FC0
	thumb_func_start sub_8064370
sub_8064370:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8082B00
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _080643CC
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
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080643A4
	adds r1, #0xFF
_080643A4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080643AE
	adds r2, #0xFF
_080643AE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080643B8
	adds r3, #0xFF
_080643B8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080643D4 @ =0x00001089
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _080643D8 @ =0x080644DD
	str r0, [r4, #0x4C]
_080643CC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080643D4: .4byte 0x00001089
_080643D8: .4byte sub_80644DC
	thumb_func_start sub_80643DC
sub_80643DC:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _0806441C @ =0xFFFFFDE7
	adds r0, r1, r3
	str r0, [r2, #0x10]
	ldr r4, [r2, #0x18]
	ldr r5, _08064420 @ =0xFFFFFF00
	adds r3, r4, r5
	str r3, [r2, #0x18]
	cmp r0, #0x00
	bge _080643F8
	subs r5, #0x1A
	adds r0, r1, r5
_080643F8:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	ble _08064410
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0806440A
	subs r0, r4, #0x1
_0806440A:
	asrs r0, r0, #0x08
	cmp r0, #0x00
	bgt _08064416
_08064410:
	adds r0, r2, #0x0
	bl sub_807C298
_08064416:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806441C: .4byte 0xFFFFFDE7
_08064420: .4byte 0xFFFFFF00
	thumb_func_start sub_8064424
sub_8064424:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08064432
	adds r1, #0xFF
_08064432:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806443C
	adds r2, #0xFF
_0806443C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08064446
	adds r3, #0xFF
_08064446:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08064460 @ =0x00001081
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064460: .4byte 0x00001081
	.byte 0x00, 0x21, 0xC1, 0x64, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_806446C
sub_806446C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08064484 @ =0x08063CC9
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08064484: .4byte sub_8063CC8
	thumb_func_start sub_8064488
sub_8064488:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080644D2
	adds r0, r4, #0x0
	movs r1, #0x02
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
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080644C4
	ldr r0, _080644C0 @ =0x08064541
	b _080644D0
	.byte 0x00, 0x00
_080644C0: .4byte sub_8064540
_080644C4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	ldr r0, _080644D8 @ =0x08064515
_080644D0:
	str r0, [r4, #0x4C]
_080644D2:
	pop {r4}
	pop {r0}
	bx r0
_080644D8: .4byte sub_8064514
	thumb_func_start sub_80644DC
sub_80644DC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0F
	bne _080644FC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xB5
	bl play_sfx_80195B4
_080644FC:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806450C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0806450C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8064514
sub_8064514:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08064534
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806453C @ =0x08063CC9
	str r0, [r4, #0x4C]
_08064534:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806453C: .4byte sub_8063CC8
