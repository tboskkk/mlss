	.syntax unified
	.text

	thumb_func_start sub_8098A84
sub_8098A84:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r8, r0
	mov r1, r8
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x0C
	strh r0, [r1, #0x00]
	mov r2, r8
	adds r2, #0x9C
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bge _08098AB0
	adds r0, #0xFF
_08098AB0:
	asrs r7, r0, #0x08
	mov r4, r8
	adds r4, #0x0C
	adds r5, r4, #0x0
	movs r1, #0x84
	add r1, r8
	mov r10, r1
	movs r2, #0x88
	add r2, r8
	mov r9, r2
	cmp r4, #0x00
	beq _08098B7A
	ldr r1, _08098B5C @ =0x0819832C
	mov r0, r10
	str r0, [sp, #0x004]
	movs r6, #0x00
	ldr r0, _08098B60 @ =0x08198220
	subs r1, r1, r0
	str r1, [sp, #0x000]
_08098AD6:
	ldr r0, _08098B64 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x000]
	adds r2, r2, r1
	adds r0, r6, #0x0
	movs r1, #0x05
	bl _call_via_r2
	adds r0, #0x50
	ldr r2, _08098B68 @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r3, r0, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08098AFC
	adds r0, #0x3F
_08098AFC:
	asrs r0, r0, #0x06
	adds r1, r7, #0x0
	muls r1, r0
	ldr r2, [sp, #0x004]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r0, _08098B6C @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08098B18
	adds r0, #0x3F
_08098B18:
	asrs r0, r0, #0x06
	muls r0, r7
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r4, #0x08]
	movs r0, #0x8C
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _08098B3A
	ldrb r0, [r4, #0x1B]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1B]
_08098B3A:
	ldr r1, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	bgt _08098B70
	movs r0, #0x00
	str r0, [r5, #0x00]
	cmp r4, #0x00
	beq _08098B7A
_08098B4C:
	adds r0, r4, #0x0
	bl sub_807FA94
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _08098B4C
	b _08098B7A
	.byte 0x00, 0x00
_08098B5C: .4byte 0x0819832C
_08098B60: .4byte 0x08198220
_08098B64: .4byte 0x03001038
_08098B68: .4byte word_8198584 @ =0x08198584
_08098B6C: .4byte word_8198504 @ =0x08198504
_08098B70:
	adds r6, #0x60
	adds r5, r4, #0x0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _08098AD6
_08098B7A:
	mov r0, r8
	ldr r5, [r0, #0x2C]
	ldr r1, [r5, #0x38]
	mov r2, r10
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08098B8C
	adds r0, #0xFF
_08098B8C:
	asrs r4, r0, #0x08
	ldr r1, [r5, #0x3C]
	mov r2, r9
	ldr r0, [r2, #0x00]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08098B9C
	adds r1, #0xFF
_08098B9C:
	asrs r3, r1, #0x08
	ldr r2, _08098C70 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	lsls r1, r3, #0x02
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	subs r0, #0x08
	cmp r0, r7
	bge _08098BE2
	adds r0, #0x10
	cmp r7, r0
	bge _08098BE2
	ldr r1, [r5, #0x40]
	cmp r1, #0x00
	blt _08098BE2
	ldr r0, _08098C74 @ =0x000007FF
	cmp r1, r0
	bgt _08098BE2
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _08098BE2
	mov r0, r8
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08098BE2:
	ldr r0, [r5, #0x28]
	bl sub_8087650
	adds r6, r0, #0x0
	cmp r6, #0x00
	beq _08098C56
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r1, [r5, #0x38]
	mov r2, r10
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08098C00
	adds r0, #0xFF
_08098C00:
	asrs r4, r0, #0x08
	ldr r1, [r5, #0x3C]
	mov r2, r9
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08098C10
	adds r0, #0xFF
_08098C10:
	asrs r3, r0, #0x08
	ldr r2, _08098C70 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	lsls r1, r3, #0x02
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	subs r0, #0x08
	cmp r0, r7
	bge _08098C56
	adds r0, #0x10
	cmp r7, r0
	bge _08098C56
	ldr r1, [r5, #0x40]
	cmp r1, #0x00
	blt _08098C56
	ldr r0, _08098C74 @ =0x000007FF
	cmp r1, r0
	bgt _08098C56
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x86
	ands r0, r1
	cmp r0, #0x02
	bne _08098C56
	mov r0, r8
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08098C56:
	cmp r7, #0xC7
	ble _08098C60
	mov r0, r8
	bl sub_807C298
_08098C60:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08098C70: .4byte 0x03001038
_08098C74: .4byte 0x000007FF
