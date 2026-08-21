	.syntax unified
	.text

	thumb_func_start sub_80997E4
sub_80997E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	adds r6, r7, #0x0
	adds r6, #0xAC
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	strh r0, [r6, #0x00]
	movs r0, #0x06
	add r0, sp
	mov r8, r0
	ldr r1, [r7, #0x2C]
	adds r4, r7, #0x0
	adds r4, #0x84
	ldr r0, [r4, #0x00]
	ldr r2, _08099888 @ =0xFFFFB000
	adds r0, r0, r2
	ldr r2, [r1, #0x38]
	subs r2, r2, r0
	adds r5, r7, #0x0
	adds r5, #0x88
	ldr r3, [r1, #0x3C]
	ldr r0, [r5, #0x00]
	subs r3, r3, r0
	movs r1, #0x00
	ldsh r0, [r6, r1]
	lsls r0, r0, #0x07
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	mov r1, r8
	bl sub_8087A44
	add r1, sp, #0x004
	movs r3, #0x00
	ldsh r2, [r1, r3]
	lsls r2, r2, #0x02
	ldr r1, [r4, #0x00]
	adds r1, r1, r2
	str r1, [r7, #0x10]
	mov r1, r8
	movs r3, #0x00
	ldsh r2, [r1, r3]
	lsls r2, r2, #0x02
	ldr r1, [r5, #0x00]
	adds r1, r1, r2
	str r1, [r7, #0x14]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	lsls r1, r1, #0x07
	cmp r1, r0
	blt _0809987C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	strh r0, [r6, #0x00]
	ldr r1, [r7, #0x2C]
	ldr r0, [r1, #0x38]
	movs r3, #0xA0
	lsls r3, r3, #0x07
	adds r0, r0, r3
	str r0, [r7, #0x10]
	ldr r0, [r1, #0x3C]
	str r0, [r7, #0x14]
	ldr r0, _0809988C @ =0x08099891
	str r0, [r7, #0x4C]
_0809987C:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08099888: .4byte 0xFFFFB000
_0809988C: .4byte sub_8099890
