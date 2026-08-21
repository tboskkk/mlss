	.syntax unified
	.text

	thumb_func_start sub_801DB58
sub_801DB58:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r6, _0801DBF0 @ =0x04000208
	movs r0, #0x00
	strh r0, [r6, #0x00]
	ldr r0, [r5, #0x04]
	ldrh r1, [r5, #0x0C]
	movs r2, #0xC0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0xA0
	lsls r2, r2, #0x05
	mov r8, r2
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	movs r0, #0x01
	mov r9, r0
	strh r0, [r6, #0x00]
	strh r4, [r6, #0x00]
	ldr r0, [r5, #0x04]
	add r0, r8
	ldrh r1, [r5, #0x0C]
	ldr r2, _0801DBF4 @ =0x06001400
	adds r1, r1, r2
	str r4, [sp, #0x000]
	mov r2, r8
	movs r3, #0x20
	bl sub_8018218
	mov r0, r9
	strh r0, [r6, #0x00]
	strh r4, [r6, #0x00]
	ldr r0, [r5, #0x04]
	movs r1, #0xA0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	ldrh r1, [r5, #0x0C]
	ldr r2, _0801DBF8 @ =0x06002800
	adds r1, r1, r2
	str r4, [sp, #0x000]
	mov r2, r8
	movs r3, #0x20
	bl sub_8018218
	mov r0, r9
	strh r0, [r6, #0x00]
	strh r4, [r6, #0x00]
	ldr r0, [r5, #0x04]
	movs r1, #0xF0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	ldrh r1, [r5, #0x0C]
	ldr r2, _0801DBFC @ =0x06003C00
	adds r1, r1, r2
	str r4, [sp, #0x000]
	mov r2, r8
	movs r3, #0x20
	bl sub_8018218
	mov r0, r9
	strh r0, [r6, #0x00]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801DBF0: .4byte 0x04000208
_0801DBF4: .4byte 0x06001400
_0801DBF8: .4byte 0x06002800
_0801DBFC: .4byte 0x06003C00
