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
