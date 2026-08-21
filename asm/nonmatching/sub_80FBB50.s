	.syntax unified
	.text

	thumb_func_start sub_80FBB50
sub_80FBB50:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	mov r12, r2
	ldr r0, [sp, #0x01C]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r9, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r2, [r7, #0x0C]
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080FBB76
	adds r0, #0xFF
_080FBB76:
	asrs r5, r0, #0x08
	movs r1, #0x00
	ldsh r0, [r6, r1]
	subs r4, r5, r0
	mov r3, r12
	ldr r1, [r3, #0x0C]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080FBB8A
	adds r0, #0xFF
_080FBB8A:
	asrs r3, r0, #0x08
	cmp r4, r3
	bgt _080FBC06
	movs r2, #0x02
	ldsh r0, [r6, r2]
	adds r0, r5, r0
	cmp r0, r3
	blt _080FBC06
	ldr r2, [r7, #0x10]
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080FBBA4
	adds r0, #0xFF
_080FBBA4:
	asrs r5, r0, #0x08
	movs r3, #0x06
	ldsh r0, [r6, r3]
	subs r4, r5, r0
	mov r0, r12
	ldr r1, [r0, #0x10]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080FBBB8
	adds r0, #0xFF
_080FBBB8:
	asrs r3, r0, #0x08
	cmp r4, r3
	bgt _080FBC06
	movs r2, #0x04
	ldsh r0, [r6, r2]
	adds r0, r5, r0
	cmp r0, r3
	blt _080FBC06
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r2, r1, r0
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080FBBD6
	adds r0, #0xFF
_080FBBD6:
	asrs r5, r0, #0x08
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r4, r5, r0
	mov r0, r12
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r1, r1, r0
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080FBBF0
	adds r0, #0xFF
_080FBBF0:
	asrs r3, r0, #0x08
	cmp r4, r3
	bgt _080FBC06
	mov r2, r9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r5, r0
	cmp r0, r3
	blt _080FBC06
	movs r0, #0x01
	b _080FBC08
_080FBC06:
	movs r0, #0x00
_080FBC08:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
