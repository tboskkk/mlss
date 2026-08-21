	.syntax unified
	.text

	thumb_func_start sub_810DEB8
sub_810DEB8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	mov r8, r0
	movs r0, #0x90
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	beq _0810DEE4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x05
	bl sub_81DD77C
	adds r6, r0, #0x2
	b _0810DEF2
_0810DEE4:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x09
	bl sub_81DD77C
	adds r6, r0, #0x4
_0810DEF2:
	ldr r0, _0810DF18 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0D]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0810DF02
	lsls r6, r6, #0x01
_0810DF02:
	mov r1, r8
	adds r1, #0xF6
	movs r2, #0x00
	ldsh r0, [r1, r2]
	subs r0, r0, r6
	adds r7, r1, #0x0
	cmp r0, #0x00
	bge _0810DF1C
	movs r0, #0x00
	b _0810DF20
	.byte 0x00, 0x00
_0810DF18: .4byte 0x03000FD8
_0810DF1C:
	ldrh r0, [r7, #0x00]
	subs r0, r0, r6
_0810DF20:
	strh r0, [r7, #0x00]
	ldr r0, _0810E014 @ =0x00000111
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0810DF46
	movs r0, #0x00
	ldsh r5, [r7, r0]
	cmp r5, #0x00
	bne _0810DF46
	adds r0, r4, #0x0
	bl sub_8086700
	movs r0, #0x8F
	lsls r0, r0, #0x01
	add r0, r8
	strh r5, [r0, #0x00]
_0810DF46:
	adds r0, r4, #0x0
	adds r0, #0xBA
	movs r3, #0x00
	strh r6, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xC2
	movs r0, #0x04
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0810DF5E
	adds r1, #0xFF
_0810DF5E:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x28]
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x04]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r4, #0x0
	adds r1, #0xBC
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x14]
	cmp r1, #0x00
	bge _0810DF7C
	adds r1, #0xFF
_0810DF7C:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x28]
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x05]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r2, r4, #0x0
	adds r2, #0xBE
	strh r0, [r2, #0x00]
	ldr r1, [r4, #0x18]
	cmp r1, #0x00
	bge _0810DF9A
	adds r1, #0xFF
_0810DF9A:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x28]
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x06]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r4, #0x0
	adds r1, #0xC0
	strh r0, [r1, #0x00]
	mov r6, r8
	adds r6, #0xEC
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _0810E024
	adds r0, r4, #0x0
	adds r0, #0xB8
	ldr r1, _0810E018 @ =0x00002020
	strh r1, [r0, #0x00]
	movs r2, #0x00
	ldsh r0, [r7, r2]
	cmp r0, #0x00
	bne _0810DFFC
	ldr r4, _0810E01C @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r1, r1, r5
	ldrb r2, [r1, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	movs r3, #0x01
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r6, #0x00]
	mvns r1, r1
	adds r2, r2, r5
	ands r1, r3
	lsls r1, r1, #0x02
	ldrb r3, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
_0810DFFC:
	movs r1, #0x00
	ldsh r0, [r6, r1]
	movs r1, #0x01
	negs r1, r1
	ldr r2, _0810E020 @ =0x0000014D
	cmp r0, r1
	bne _0810E00C
	movs r2, #0xE7
_0810E00C:
	adds r0, r2, #0x0
	bl play_sfx_80195B4
	b _0810E02C
_0810E014: .4byte 0x00000111
_0810E018: .4byte 0x00002020
_0810E01C: .4byte 0x03000FD8
_0810E020: .4byte 0x0000014D
_0810E024:
	adds r1, r4, #0x0
	adds r1, #0xB8
	ldr r0, _0810E038 @ =0x00000193
	strh r0, [r1, #0x00]
_0810E02C:
	movs r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0810E038: .4byte 0x00000193
