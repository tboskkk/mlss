	.syntax unified
	.text

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
