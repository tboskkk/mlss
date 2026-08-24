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
