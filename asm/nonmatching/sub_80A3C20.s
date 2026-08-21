	.syntax unified
	.text

	thumb_func_start sub_80A3C20
sub_80A3C20:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080A3D10 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x74]
	adds r4, r7, #0x0
	adds r4, #0x08
	ldr r6, [r5, #0x2C]
	ldr r0, [r5, #0x28]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080A3C5A
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0xCC
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x08]
	adds r0, #0x20
	movs r1, #0x0C
	strb r1, [r0, #0x00]
_080A3C5A:
	ldr r0, [r5, #0x28]
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _080A3C7A
	adds r1, r5, #0x0
	adds r1, #0x7C
	ldr r0, _080A3D14 @ =0x00000199
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x08]
	adds r0, #0x20
	movs r1, #0x19
	strb r1, [r0, #0x00]
_080A3C7A:
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x3F
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A3C9A
	cmp r1, #0x04
	bne _080A3CE0
_080A3C9A:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080A3CA2
	adds r0, #0xFF
_080A3CA2:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x28
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080A3CBC
	adds r2, #0xFF
_080A3CBC:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	mov r6, r8
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
_080A3CE0:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A3CF2
	cmp r1, #0x04
	bne _080A3D58
_080A3CF2:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A3D1C
	ldr r2, _080A3D18 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A3D28
_080A3D10: .4byte 0x03000FD8
_080A3D14: .4byte 0x00000199
_080A3D18: .4byte 0x00002002
_080A3D1C:
	ldr r2, _080A3D68 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A3D28:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080A3D3E
	movs r2, #0x01
_080A3D3E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A3D58:
	ldr r0, _080A3D6C @ =0x080A3D71
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A3D68: .4byte 0x0000204F
_080A3D6C: .4byte sub_80A3D70
