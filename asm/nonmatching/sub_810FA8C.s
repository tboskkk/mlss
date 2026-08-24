	.syntax unified
	.text

	thumb_func_start sub_810FA8C
sub_810FA8C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0810FB0C
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810FAAE
	adds r0, #0xFF
_0810FAAE:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810FABC
	adds r0, #0xFF
_0810FABC:
	asrs r3, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x20
	negs r1, r1
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, _0810FB14 @ =0x00001830
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r0, _0810FB18 @ =0x0810FBBD
	str r0, [r4, #0x60]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	ldr r0, _0810FB1C @ =0x0810FB21
	str r0, [r4, #0x4C]
_0810FB0C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0810FB14: .4byte 0x00001830
_0810FB18: .4byte dword_810FBBD @ =0x0810FBBD
_0810FB1C: .4byte sub_810FB20
