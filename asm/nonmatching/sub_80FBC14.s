	.syntax unified
	.text

	thumb_func_start sub_80FBC14
sub_80FBC14:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0x0
	mov r12, r1
	mov r8, r2
	ldr r0, [sp, #0x020]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r10, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	ldr r2, _080FBC60 @ =0x083A05EC
	ldr r0, _080FBC64 @ =0x00000216
	add r0, r12
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	mov r0, r12
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x01
	beq _080FBC78
	cmp r0, #0x01
	bgt _080FBC68
	cmp r0, #0x00
	beq _080FBC6E
	b _080FBC8C
_080FBC60: .4byte 0x083A05EC
_080FBC64: .4byte 0x00000216
_080FBC68:
	cmp r0, #0x02
	beq _080FBC82
	b _080FBC8C
_080FBC6E:
	ldrh r0, [r4, #0x00]
	ldrh r3, [r4, #0x02]
	ldrh r5, [r4, #0x04]
	ldrh r6, [r4, #0x06]
	b _080FBC94
_080FBC78:
	ldrh r0, [r4, #0x06]
	ldrh r3, [r4, #0x04]
	ldrh r5, [r4, #0x00]
	ldrh r6, [r4, #0x02]
	b _080FBC94
_080FBC82:
	ldrh r0, [r4, #0x02]
	ldrh r3, [r4, #0x00]
	ldrh r5, [r4, #0x06]
	ldrh r6, [r4, #0x04]
	b _080FBC94
_080FBC8C:
	ldrh r0, [r4, #0x04]
	ldrh r3, [r4, #0x06]
	ldrh r5, [r4, #0x02]
	ldrh r6, [r4, #0x00]
_080FBC94:
	mov r1, r12
	ldr r4, [r1, #0x0C]
	adds r1, r4, #0x0
	cmp r4, #0x00
	bge _080FBCA0
	adds r1, #0xFF
_080FBCA0:
	asrs r7, r1, #0x08
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r7, r0
	mov r2, r8
	ldr r1, [r2, #0x0C]
	adds r2, r1, #0x0
	cmp r1, #0x00
	bge _080FBCB4
	adds r2, #0xFF
_080FBCB4:
	asrs r2, r2, #0x08
	cmp r0, r2
	bgt _080FBD34
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r7, r0
	cmp r0, r2
	blt _080FBD34
	mov r3, r12
	ldr r4, [r3, #0x10]
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _080FBCD0
	adds r0, #0xFF
_080FBCD0:
	asrs r7, r0, #0x08
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r7, r0
	mov r2, r8
	ldr r1, [r2, #0x10]
	adds r2, r1, #0x0
	cmp r1, #0x00
	bge _080FBCE4
	adds r2, #0xFF
_080FBCE4:
	asrs r2, r2, #0x08
	cmp r0, r2
	bgt _080FBD34
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r7, r0
	cmp r0, r2
	blt _080FBD34
	mov r3, r12
	ldr r1, [r3, #0x14]
	ldr r0, [r3, #0x18]
	adds r2, r1, r0
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080FBD04
	adds r0, #0xFF
_080FBD04:
	asrs r6, r0, #0x08
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r5, r6, r0
	mov r3, r8
	ldr r1, [r3, #0x14]
	ldr r0, [r3, #0x18]
	adds r1, r1, r0
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080FBD1E
	adds r0, #0xFF
_080FBD1E:
	asrs r4, r0, #0x08
	cmp r5, r4
	bgt _080FBD34
	mov r2, r10
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r6, r0
	cmp r0, r4
	blt _080FBD34
	movs r0, #0x01
	b _080FBD36
_080FBD34:
	movs r0, #0x00
_080FBD36:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
