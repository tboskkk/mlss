	.syntax unified
	.text

	thumb_func_start sub_8086AF4
sub_8086AF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08086BB0
	adds r7, r4, #0x0
	adds r7, #0xA8
	ldr r5, [r7, #0x00]
	cmp r5, #0x00
	beq _08086BA8
	ldr r0, _08086B9C @ =0x03001038
	mov r10, r0
	ldr r1, _08086BA0 @ =0x0819832C
	ldr r0, _08086BA4 @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
	mov r1, r10
	ldr r0, [r1, #0x00]
	mov r1, r8
	adds r3, r0, r1
	ldr r1, [r4, #0x28]
	adds r1, #0xD8
	subs r6, r5, #0x1
	ldr r0, [r4, #0x38]
	adds r2, r0, #0x0
	muls r2, r6
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	cmp r0, #0x00
	bge _08086B40
	adds r0, #0xFF
_08086B40:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	bl _call_via_r3
	mov r9, r0
	mov r1, r10
	ldr r0, [r1, #0x00]
	mov r1, r8
	adds r2, r0, r1
	ldr r0, [r4, #0x28]
	adds r0, #0xDC
	ldr r1, [r4, #0x3C]
	muls r1, r6
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	cmp r0, #0x00
	bge _08086B64
	adds r0, #0xFF
_08086B64:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	bl _call_via_r2
	adds r2, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r9
	movs r3, #0x00
	bl sub_808843C
	ldr r2, [r4, #0x40]
	cmp r2, #0x00
	bge _08086B86
	adds r2, #0xFF
_08086B86:
	asrs r2, r2, #0x08
	adds r2, #0x14
	adds r0, r4, #0x0
	movs r1, #0xE0
	lsls r1, r1, #0x03
	bl sub_808842C
	ldr r0, [r7, #0x00]
	subs r0, #0x01
	str r0, [r7, #0x00]
	b _08086BB0
_08086B9C: .4byte 0x03001038
_08086BA0: .4byte 0x0819832C
_08086BA4: .4byte 0x08198220
_08086BA8:
	movs r0, #0x14
	str r0, [r7, #0x00]
	ldr r0, _08086BC0 @ =0x080872A9
	str r0, [r4, #0x4C]
_08086BB0:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08086BC0: .4byte sub_80872A8
