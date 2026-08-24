	.syntax unified
	.text

	thumb_func_start sub_8098E48
sub_8098E48:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x19
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x9C
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bge _08098E74
	adds r0, #0xFF
_08098E74:
	asrs r6, r0, #0x08
	adds r4, r7, #0x0
	adds r4, #0x0C
	adds r5, r4, #0x0
	adds r1, r7, #0x0
	adds r1, #0x84
	str r1, [sp, #0x004]
	movs r2, #0x88
	adds r2, r2, r7
	mov r9, r2
	cmp r4, #0x00
	beq _08098F40
	ldr r1, _08098F20 @ =0x0819832C
	ldr r0, [sp, #0x004]
	str r0, [sp, #0x000]
	movs r2, #0x00
	mov r8, r2
	ldr r0, _08098F24 @ =0x08198220
	subs r1, r1, r0
	mov r10, r1
_08098E9C:
	ldr r0, _08098F28 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r10
	mov r0, r8
	movs r1, #0x09
	bl _call_via_r2
	adds r0, #0x50
	ldr r2, _08098F2C @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r3, r0, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08098EC0
	adds r0, #0x3F
_08098EC0:
	asrs r0, r0, #0x06
	adds r1, r6, #0x0
	muls r1, r0
	ldr r2, [sp, #0x000]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r0, _08098F30 @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08098EDC
	adds r0, #0x3F
_08098EDC:
	asrs r0, r0, #0x06
	muls r0, r6
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
	ble _08098EFE
	ldrb r0, [r4, #0x1B]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1B]
_08098EFE:
	ldr r1, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	bgt _08098F34
	movs r0, #0x00
	str r0, [r5, #0x00]
	cmp r4, #0x00
	beq _08098F40
_08098F10:
	adds r0, r4, #0x0
	bl sub_807FA94
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _08098F10
	b _08098F40
	.byte 0x00, 0x00
_08098F20: .4byte 0x0819832C
_08098F24: .4byte 0x08198220
_08098F28: .4byte 0x03001038
_08098F2C: .4byte word_8198584 @ =0x08198584
_08098F30: .4byte word_8198504 @ =0x08198504
_08098F34:
	movs r0, #0x60
	add r8, r0
	adds r5, r4, #0x0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _08098E9C
_08098F40:
	ldr r4, [r7, #0x2C]
	ldr r1, [r4, #0x38]
	ldr r2, [sp, #0x004]
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08098F50
	adds r0, #0xFF
_08098F50:
	asrs r5, r0, #0x08
	ldr r1, [r4, #0x3C]
	mov r2, r9
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08098F60
	adds r0, #0xFF
_08098F60:
	asrs r2, r0, #0x08
	ldr r3, _08099004 @ =0x03001038
	adds r0, r5, #0x0
	muls r0, r5
	lsls r1, r2, #0x02
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	adds r5, r0, #0x0
	subs r0, #0x08
	cmp r0, r6
	bge _08098FA6
	adds r0, #0x10
	cmp r6, r0
	bge _08098FA6
	ldr r1, [r4, #0x40]
	cmp r1, #0x00
	blt _08098FA6
	ldr r0, _08099008 @ =0x000007FF
	cmp r1, r0
	bgt _08098FA6
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _08098FA6
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08098FA6:
	ldr r0, [r4, #0x28]
	bl sub_8087650
	adds r2, r0, #0x0
	cmp r2, #0x00
	beq _08098FE8
	adds r4, r2, #0x0
	adds r4, #0x08
	adds r0, r5, #0x0
	subs r0, #0x08
	cmp r0, r6
	bge _08098FE8
	adds r0, #0x10
	cmp r6, r0
	bge _08098FE8
	ldr r1, [r4, #0x40]
	cmp r1, #0x00
	blt _08098FE8
	ldr r0, _08099008 @ =0x000007FF
	cmp r1, r0
	bgt _08098FE8
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x86
	ands r0, r1
	cmp r0, #0x02
	bne _08098FE8
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08098FE8:
	cmp r6, #0xC7
	ble _08098FF2
	adds r0, r7, #0x0
	bl sub_807C298
_08098FF2:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08099004: .4byte 0x03001038
_08099008: .4byte 0x000007FF
