	.syntax unified
	.text

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
