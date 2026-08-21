	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8072678
sub_8072678:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080726C2
	adds r0, r4, #0x0
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807269A
	adds r1, #0xFF
_0807269A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080726A4
	adds r2, #0xFF
_080726A4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080726AE
	adds r3, #0xFF
_080726AE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080726CC @ =0x00002222
	bl sub_80DF024
	ldr r0, _080726D0 @ =0x080726D5
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r5, [r0, #0x00]
_080726C2:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080726CC: .4byte 0x00002222
_080726D0: .4byte sub_80726D4
	thumb_func_start sub_80726D4
sub_80726D4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x37
	bne _080726F4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9D
	bl play_sfx_80195B4
_080726F4:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08072724
	ldr r0, _0807272C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x58]
	adds r4, #0x08
	adds r0, r5, #0x0
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _08072730 @ =0x000040AE
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08072734 @ =0x08072739
	str r0, [r5, #0x4C]
_08072724:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807272C: .4byte 0x03000FD8
_08072730: .4byte 0x000040AE
_08072734: .4byte sub_8072738
	thumb_func_start sub_8072738
sub_8072738:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08072758
	adds r0, r4, #0x0
	movs r1, #0x15
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08072760 @ =0x080712D9
	str r0, [r4, #0x4C]
_08072758:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072760: .4byte sub_80712D8
	thumb_func_start sub_8072764
sub_8072764:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08072778
	b _080728A6
_08072778:
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0807278C
	adds r1, #0xFF
_0807278C:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08072796
	adds r2, #0xFF
_08072796:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080727A0
	adds r3, #0xFF
_080727A0:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080728B0 @ =0x00002266
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _080727B4
	adds r2, #0xFF
_080727B4:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _080727BE
	adds r3, #0xFF
_080727BE:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080727C8
	adds r0, #0xFF
_080727C8:
	asrs r0, r0, #0x08
	adds r0, #0x20
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080728B4 @ =0x00004144
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x60
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080728B8 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _080728BC @ =0x08074325
	str r0, [r5, #0x58]
	ldr r0, _080728C0 @ =0x080742FD
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _080728C4 @ =0x080743C5
	str r0, [r5, #0x4C]
	ldr r0, _080728C8 @ =0x0000010B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _080728CC @ =0x0807442D
	str r0, [r6, #0x4C]
_080728A6:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080728B0: .4byte 0x00002266
_080728B4: .4byte 0x00004144
_080728B8: .4byte sub_8087540
_080728BC: .4byte sub_8074324
_080728C0: .4byte sub_80742FC
_080728C4: .4byte sub_80743C4
_080728C8: .4byte 0x0000010B
_080728CC: .4byte sub_807442C
	thumb_func_start sub_80728D0
sub_80728D0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807293A
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xA0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08072940 @ =0x080743AD
	str r0, [r4, #0x4C]
_0807293A:
	pop {r4}
	pop {r0}
	bx r0
_08072940: .4byte sub_80743AC
	thumb_func_start sub_8072944
sub_8072944:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r6, r4, #0x0
	adds r6, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r5, r4, #0x0
	adds r5, #0x88
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08072980
	adds r0, #0xFF
_08072980:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08072990
	adds r0, #0xFF
_08072990:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080729A0
	adds r0, #0xFF
_080729A0:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r6, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x00]
	subs r5, r1, r0
	ldr r2, _08072A18 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _080729D6
	ldr r1, _08072A1C @ =0x000003FF
	adds r0, r0, r1
_080729D6:
	asrs r7, r0, #0x0A
	lsrs r0, r0, #0x1F
	adds r0, r7, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _080729F0
	movs r0, #0x02
_080729F0:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r5, [r0, #0x00]
	adds r1, #0x10
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08072A20 @ =0x08072A25
	str r0, [r4, #0x4C]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072A18: .4byte 0x03001038
_08072A1C: .4byte 0x000003FF
_08072A20: .4byte sub_8072A24
	thumb_func_start sub_8072A24
sub_8072A24:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r1, [r6, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	ldrh r7, [r1, #0x0C]
	adds r0, r0, r7
	strh r0, [r1, #0x0C]
	adds r0, r6, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r7, #0x00
	ldsh r1, [r1, r7]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r7, #0x00
	ldsh r1, [r1, r7]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r7, #0xC0
	lsls r7, r7, #0x06
	adds r0, r0, r7
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	ble _08072B5A
	movs r5, #0x01
	negs r5, r5
	movs r0, #0xCC
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08072AD8
	adds r0, #0xFF
_08072AD8:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08072AE6
	adds r0, #0xFF
_08072AE6:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08072AF4
	adds r0, #0xFF
_08072AF4:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08072B2C @ =0x0000226E
	bl sub_80DF024
	ldr r0, [r6, #0x28]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r1, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08072B0E
	adds r2, #0xFF
_08072B0E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08072B18
	adds r3, #0xFF
_08072B18:
	asrs r3, r3, #0x08
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, r5
	beq _08072B30
	movs r0, #0x13
	b _08072B32
	.byte 0x00, 0x00
_08072B2C: .4byte 0x0000226E
_08072B30:
	movs r0, #0x12
_08072B32:
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r6, #0x0
	adds r1, #0x84
	movs r0, #0x1E
	str r0, [r1, #0x00]
	ldr r0, _08072B64 @ =0x0807438D
	str r0, [r6, #0x4C]
	movs r0, #0x96
	lsls r0, r0, #0x09
	str r0, [r6, #0x10]
_08072B5A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072B64: .4byte sub_807438C
	thumb_func_start sub_8072B68
sub_8072B68:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08072BDE
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08072BDE
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD3
	bl play_sfx_80195B4
	ldr r0, _08072BE4 @ =0x080742D5
	str r0, [r4, #0x4C]
_08072BDE:
	pop {r4}
	pop {r0}
	bx r0
_08072BE4: .4byte sub_80742D4
	thumb_func_start sub_8072BE8
sub_8072BE8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x9C
	adds r0, r0, r4
	mov r9, r0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08072C12
	adds r0, #0xFF
_08072C12:
	asrs r0, r0, #0x08
	adds r5, r4, #0x0
	adds r5, #0xAE
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08072C22
	adds r0, #0xFF
_08072C22:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08072C32
	adds r0, #0xFF
_08072C32:
	asrs r0, r0, #0x08
	movs r1, #0xB2
	adds r1, r1, r4
	mov r8, r1
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r1, r2, #0x0
	adds r1, #0xD8
	movs r6, #0x00
	ldsh r0, [r5, r6]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r7, r1, r0
	adds r2, #0xDC
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r2, #0x00]
	subs r6, r1, r0
	ldr r2, _08072CDC @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r5, r0, #0x0
	mov r2, r8
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	adds r1, r5, #0x0
	muls r1, r5
	bl __divsi3
	cmp r0, #0x01
	bne _08072C8C
	movs r0, #0x02
_08072C8C:
	mov r2, r9
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	subs r0, #0x41
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08072CE0 @ =0x08074261
	str r0, [r4, #0x60]
	ldr r0, _08072CE4 @ =0x08072CE9
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x05
	str r0, [r1, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072CDC: .4byte 0x03001038
_08072CE0: .4byte sub_8074260
_08072CE4: .4byte sub_8072CE8
	thumb_func_start sub_8072CE8
sub_8072CE8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0x84
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _08072D26
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08072D04
	adds r1, #0xFF
_08072D04:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08072D0E
	adds r2, #0xFF
_08072D0E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08072D18
	adds r3, #0xFF
_08072D18:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08072DC4 @ =0x00002276
	bl sub_80DF024
	movs r0, #0x05
	str r0, [r4, #0x00]
_08072D26:
	ldr r4, [r5, #0x08]
	adds r6, r5, #0x0
	adds r6, #0xAC
	movs r1, #0x00
	ldsh r0, [r6, r1]
	lsls r0, r0, #0x0E
	negs r0, r0
	adds r7, r5, #0x0
	adds r7, #0xA0
	ldr r1, [r7, #0x00]
	bl __divsi3
	strh r0, [r4, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0xA4
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r7, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r7, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	ldr r1, [r7, #0x00]
	subs r0, r0, r1
	adds r1, r0, #0x0
	muls r1, r0
	adds r2, r5, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	muls r0, r1
	str r0, [r5, #0x18]
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	strh r0, [r6, #0x00]
	movs r0, #0x00
	ldsh r1, [r6, r0]
	ldr r0, [r7, #0x00]
	cmp r1, r0
	ble _08072DBC
	movs r0, #0xC0
	lsls r0, r0, #0x08
	strh r0, [r6, #0x00]
	movs r0, #0x00
	str r0, [r7, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	ldr r0, _08072DC8 @ =0x08072DCD
	str r0, [r5, #0x4C]
_08072DBC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08072DC4: .4byte 0x00002276
_08072DC8: .4byte sub_8072DCC
	thumb_func_start sub_8072DCC
sub_8072DCC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x84
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _08072E0E
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08072DEC
	adds r1, #0xFF
_08072DEC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08072DF6
	adds r2, #0xFF
_08072DF6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08072E00
	adds r3, #0xFF
_08072E00:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08072EE4 @ =0x00002276
	bl sub_80DF024
	movs r0, #0x05
	str r0, [r5, #0x00]
_08072E0E:
	adds r3, r4, #0x0
	adds r3, #0xAC
	ldr r0, _08072EE8 @ =0xFFFFFE80
	adds r1, r0, #0x0
	ldrh r2, [r3, #0x00]
	adds r1, r1, r2
	movs r5, #0x00
	mov r8, r5
	movs r7, #0x01
	negs r7, r7
	strh r1, [r3, #0x00]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x0C]
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r5, [r0, #0x00]
	adds r0, #0x04
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	movs r2, #0x90
	lsls r2, r2, #0x07
	adds r6, r0, r2
	str r1, [r4, #0x14]
	ldr r1, _08072EEC @ =0x08198584
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, #0x00
	bge _08072E4E
	adds r0, #0xFF
_08072E4E:
	asrs r0, r0, #0x08
	movs r2, #0xFF
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08072E62
	adds r0, #0x3F
_08072E62:
	asrs r1, r0, #0x06
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x04
	adds r0, r5, r0
	str r0, [r4, #0x10]
	ldr r1, _08072EF0 @ =0x08198504
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08072E7A
	adds r0, #0xFF
_08072E7A:
	asrs r0, r0, #0x08
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08072E8C
	adds r0, #0x3F
_08072E8C:
	asrs r0, r0, #0x06
	lsls r1, r0, #0x03
	adds r1, r1, r0
	lsls r1, r1, #0x03
	adds r1, r6, r1
	str r1, [r4, #0x18]
	ldrh r2, [r3, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r2, r0
	bls _08072EAA
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x01
	str r0, [r1, #0x00]
_08072EAA:
	ldr r0, _08072EF4 @ =0x00003FFF
	cmp r2, r0
	bhi _08072F34
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08072F34
	ldr r0, [r4, #0x2C]
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _08072EF8
	movs r0, #0xD3
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	mov r2, r8
	strh r2, [r0, #0x0C]
	b _08072F30
_08072EE4: .4byte 0x00002276
_08072EE8: .4byte 0xFFFFFE80
_08072EEC: .4byte 0x08198584
_08072EF0: .4byte 0x08198504
_08072EF4: .4byte 0x00003FFF
_08072EF8:
	mov r5, r8
	str r5, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08072F16
	movs r0, #0x87
	lsls r0, r0, #0x01
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	b _08072F34
_08072F16:
	movs r0, #0xD3
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	mov r1, r8
	strh r1, [r0, #0x0C]
_08072F30:
	ldr r0, _08072F40 @ =0x0808750D
	str r0, [r4, #0x4C]
_08072F34:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08072F40: .4byte sub_808750C
	thumb_func_start sub_8072F44
sub_8072F44:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x08]
	strh r0, [r1, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08072FD2
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x08
	strh r0, [r1, #0x0C]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xA0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8B
	bl play_sfx_80195B4
	ldr r0, _08072FD8 @ =0x080741ED
	str r0, [r4, #0x4C]
_08072FD2:
	pop {r4, r5}
	pop {r0}
	bx r0
_08072FD8: .4byte sub_80741EC
	thumb_func_start sub_8072FDC
sub_8072FDC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r5, r6, #0x0
	adds r5, #0x0C
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	adds r4, r6, #0x0
	adds r4, #0x84
	ldr r1, [r4, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r3, r6, #0x0
	adds r3, #0x88
	ldr r1, [r3, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r0, #0x08
	lsls r0, r0, #0x08
	adds r2, r6, #0x0
	adds r2, #0x8C
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x008]
	movs r7, #0x80
	lsls r7, r7, #0x01
	movs r0, #0x00
	mov r8, r0
	cmp r5, #0x00
	beq _080730B8
	str r4, [sp, #0x00C]
	mov r10, r3
	mov r9, r2
_0807303C:
	ldr r0, _080730A0 @ =0x03000E80
	mov r2, r8
	lsls r1, r2, #0x01
	adds r4, r1, r0
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080730A4
	ldr r1, [sp, #0x000]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	ldr r2, [sp, #0x00C]
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x04]
	ldrh r0, [r4, #0x00]
	ldr r1, [sp, #0x004]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	mov r2, r10
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x08]
	ldrh r0, [r4, #0x00]
	ldr r1, [sp, #0x008]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x0C]
	ldrh r0, [r4, #0x00]
	adds r0, #0x0C
	movs r1, #0x00
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xFF
	bls _080730AE
	strh r1, [r4, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x01
	strh r0, [r1, #0x00]
	b _080730AE
_080730A0: .4byte 0x03000E80
_080730A4:
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r5, #0x04]
	str r0, [r5, #0x08]
	str r0, [r5, #0x0C]
_080730AE:
	ldr r5, [r5, #0x00]
	movs r0, #0x01
	add r8, r0
	cmp r5, #0x00
	bne _0807303C
_080730B8:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80730C8
sub_80730C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r5, r6, #0x0
	adds r5, #0x0C
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	adds r4, r6, #0x0
	adds r4, #0x84
	ldr r1, [r4, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r3, r6, #0x0
	adds r3, #0x88
	ldr r1, [r3, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r0, #0x08
	lsls r0, r0, #0x08
	adds r2, r6, #0x0
	adds r2, #0x8C
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x008]
	movs r7, #0x80
	lsls r7, r7, #0x01
	movs r0, #0x00
	mov r8, r0
	cmp r5, #0x00
	beq _080731A4
	str r4, [sp, #0x00C]
	mov r10, r3
	mov r9, r2
_08073128:
	ldr r0, _0807318C @ =0x03000E98
	mov r2, r8
	lsls r1, r2, #0x01
	adds r4, r1, r0
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08073190
	ldr r1, [sp, #0x000]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	ldr r2, [sp, #0x00C]
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x04]
	ldrh r0, [r4, #0x00]
	ldr r1, [sp, #0x004]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	mov r2, r10
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x08]
	ldrh r0, [r4, #0x00]
	ldr r1, [sp, #0x008]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x0C]
	ldrh r0, [r4, #0x00]
	adds r0, #0x0C
	movs r1, #0x00
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xFF
	bls _0807319A
	strh r1, [r4, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x01
	strh r0, [r1, #0x00]
	b _0807319A
_0807318C: .4byte 0x03000E98
_08073190:
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r5, #0x04]
	str r0, [r5, #0x08]
	str r0, [r5, #0x0C]
_0807319A:
	ldr r5, [r5, #0x00]
	movs r0, #0x01
	add r8, r0
	cmp r5, #0x00
	bne _08073128
_080731A4:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80731B4
sub_80731B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	mov r9, r0
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080731D0
	b _08073788
_080731D0:
	mov r0, r9
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08073588 @ =0x08073799
	mov r1, r9
	str r0, [r1, #0x4C]
	ldr r3, [r1, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080731F0
	adds r0, #0xFF
_080731F0:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080731FE
	adds r0, #0xFF
_080731FE:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807320C
	adds r0, #0xFF
_0807320C:
	asrs r3, r0, #0x08
	mov r4, r9
	str r4, [sp, #0x000]
	ldr r0, _0807358C @ =0x000022D4
	bl sub_80DF024
	ldr r1, [r4, #0x28]
	ldr r5, _08073590 @ =0x0000414D
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08073224
	adds r0, #0xFF
_08073224:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x08
	mov r6, r9
	ldr r3, [r6, #0x14]
	cmp r3, #0x00
	bge _08073234
	adds r3, #0xFF
_08073234:
	asrs r3, r3, #0x08
	mov r4, r9
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08073240
	adds r0, #0xFF
_08073240:
	asrs r0, r0, #0x08
	adds r0, #0x24
	str r0, [sp, #0x000]
	mov r6, r9
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r7, #0x01
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r6, #0x30]
	mov r2, r9
	adds r2, #0x74
	ldrb r1, [r2, #0x00]
	adds r0, #0x74
	movs r6, #0x00
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r3, #0x01
	mov r8, r3
	mov r3, r8
	orrs r0, r3
	strb r0, [r1, #0x00]
	str r6, [r4, #0x4C]
	mov r0, r9
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x10]
	str r2, [sp, #0x01C]
	cmp r0, #0x00
	bge _0807328E
	adds r0, #0xFF
_0807328E:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1C
	mov r0, r9
	ldr r3, [r0, #0x14]
	cmp r3, #0x00
	bge _0807329E
	adds r3, #0xFF
_0807329E:
	asrs r3, r3, #0x08
	mov r10, r3
	mov r3, r9
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bge _080732AC
	adds r0, #0xFF
_080732AC:
	asrs r0, r0, #0x08
	adds r0, #0x28
	str r0, [sp, #0x000]
	mov r3, r9
	ldr r0, [r3, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	mov r3, r10
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r4, #0x30]
	ldr r4, [sp, #0x01C]
	ldrb r1, [r4, #0x00]
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x00]
	str r6, [r5, #0x4C]
	mov r3, r9
	ldr r1, [r3, #0x28]
	ldr r0, [r3, #0x10]
	cmp r0, #0x00
	bge _080732F0
	adds r0, #0xFF
_080732F0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x08
	mov r4, r9
	ldr r3, [r4, #0x14]
	cmp r3, #0x00
	bge _08073300
	adds r3, #0xFF
_08073300:
	asrs r3, r3, #0x08
	mov r4, r9
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0807330C
	adds r0, #0xFF
_0807330C:
	asrs r0, r0, #0x08
	adds r0, #0x24
	str r0, [sp, #0x000]
	mov r4, r9
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08073594 @ =0x0000414B
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r6, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r6, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	ldr r6, [sp, #0x01C]
	ldrb r1, [r6, #0x00]
	subs r0, #0x3E
	strb r1, [r0, #0x00]
	subs r2, #0x02
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x2C]
	str r0, [r4, #0x2C]
	adds r5, r4, #0x0
	adds r5, #0x0C
	bl sub_807FA50
	str r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	str r1, [r0, #0x04]
	str r5, [r0, #0x08]
	movs r2, #0xAC
	add r2, r9
	mov r8, r2
	mov r3, r9
	adds r3, #0x9C
	str r3, [sp, #0x024]
	mov r6, r9
	adds r6, #0x84
	str r6, [sp, #0x020]
	ldr r6, _08073598 @ =0x03000E80
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x0C]
	adds r5, r0, #0x0
	movs r3, #0x00
	strh r3, [r6, #0x00]
	adds r6, #0x02
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x00]
	adds r6, #0x02
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x00]
	adds r6, #0x02
	movs r7, #0x07
_080733E2:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	movs r3, #0x00
	strh r3, [r6, #0x00]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x02]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x04]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x06]
	adds r6, #0x08
	subs r7, #0x04
	cmp r7, #0x00
	bge _080733E2
	movs r5, #0x00
	str r5, [r0, #0x00]
	str r5, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	mov r0, r9
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _08073450
	adds r0, #0xFF
_08073450:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1C
	mov r3, r9
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _08073460
	adds r0, #0xFF
_08073460:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x08
	mov r6, r9
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _08073470
	adds r0, #0xFF
_08073470:
	asrs r0, r0, #0x08
	adds r0, #0x24
	str r0, [sp, #0x000]
	mov r6, r9
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08073594 @ =0x0000414B
	bl sub_807BF34
	adds r7, r0, #0x0
	str r7, [r4, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x9C
	str r5, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r7, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAE
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	ldr r0, [sp, #0x01C]
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	subs r2, #0x02
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x2C]
	str r0, [r7, #0x2C]
	adds r5, r7, #0x0
	adds r5, #0x0C
	bl sub_807FA50
	str r0, [r7, #0x04]
	ldr r1, [r7, #0x08]
	str r1, [r0, #0x04]
	str r5, [r0, #0x08]
	adds r1, r4, #0x0
	adds r1, #0x9C
	str r1, [sp, #0x00C]
	adds r2, r4, #0x0
	adds r2, #0xA0
	str r2, [sp, #0x010]
	adds r3, r4, #0x0
	adds r3, #0xA4
	str r3, [sp, #0x014]
	adds r4, #0xA8
	str r4, [sp, #0x018]
	ldr r4, _0807359C @ =0x03000E98
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r7, #0x0C]
	adds r5, r0, #0x0
	movs r3, #0x00
	strh r3, [r4, #0x00]
	adds r4, #0x02
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r4, #0x00]
	adds r4, #0x02
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r4, #0x00]
	adds r4, #0x02
	movs r6, #0x07
_0807354C:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	movs r3, #0x00
	strh r3, [r4, #0x00]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r4, #0x02]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	b _080735A0
	.byte 0x00, 0x00
_08073588: .4byte sub_8073798
_0807358C: .4byte 0x000022D4
_08073590: .4byte 0x0000414D
_08073594: .4byte 0x0000414B
_08073598: .4byte 0x03000E80
_0807359C: .4byte 0x03000E98
_080735A0:
	strh r3, [r4, #0x04]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r4, #0x06]
	adds r4, #0x08
	subs r6, #0x04
	cmp r6, #0x00
	bge _0807354C
	str r3, [r0, #0x00]
	str r3, [r7, #0x4C]
	adds r0, r7, #0x0
	adds r0, #0xAC
	strh r3, [r0, #0x00]
	mov r4, r8
	strh r3, [r4, #0x00]
	mov r6, r9
	ldr r0, [r6, #0x28]
	movs r6, #0x80
	lsls r6, r6, #0x01
	str r6, [sp, #0x000]
	mov r2, r9
	ldr r1, [r2, #0x08]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1F
	str r1, [sp, #0x004]
	movs r3, #0x01
	str r3, [sp, #0x008]
	ldr r1, _080736A4 @ =0x0000414C
	adds r2, r6, #0x0
	adds r3, r6, #0x0
	bl sub_807BF34
	mov r10, r0
	str r0, [r7, #0x30]
	mov r2, r10
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r5, #0x1F
	adds r0, r5, #0x0
	ands r0, r1
	movs r4, #0x20
	orrs r0, r4
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x01C]
	ldrb r1, [r0, #0x00]
	mov r0, r10
	adds r0, #0x74
	strb r1, [r0, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x2C]
	mov r2, r10
	str r0, [r2, #0x2C]
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	subs r4, #0x61
	adds r0, r4, #0x0
	ands r0, r1
	movs r3, #0x21
	negs r3, r3
	ands r0, r3
	strb r0, [r2, #0x00]
	ldr r0, _080736A8 @ =0x08087541
	mov r8, r0
	mov r1, r10
	str r0, [r1, #0x68]
	mov r2, r9
	ldr r0, [r2, #0x6C]
	str r0, [r1, #0x6C]
	ldr r0, [r2, #0x28]
	str r6, [sp, #0x000]
	ldr r1, [r2, #0x08]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1F
	str r1, [sp, #0x004]
	movs r3, #0x01
	str r3, [sp, #0x008]
	ldr r1, _080736A4 @ =0x0000414C
	adds r2, r6, #0x0
	adds r3, r6, #0x0
	bl sub_807BF34
	adds r3, r0, #0x0
	mov r6, r10
	str r3, [r6, #0x30]
	adds r1, r3, #0x0
	adds r1, #0x78
	ldrb r0, [r1, #0x00]
	ands r5, r0
	movs r0, #0x20
	orrs r5, r0
	strb r5, [r1, #0x00]
	ldr r2, [sp, #0x01C]
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	mov r6, r9
	ldr r0, [r6, #0x2C]
	str r0, [r3, #0x2C]
	adds r1, r3, #0x0
	adds r1, #0x77
	ldrb r0, [r1, #0x00]
	ands r4, r0
	movs r0, #0x21
	negs r0, r0
	ands r4, r0
	strb r4, [r1, #0x00]
	mov r1, r8
	str r1, [r3, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r3, #0x6C]
	ldr r2, [sp, #0x024]
	ldr r0, [r2, #0x00]
	cmp r0, #0x01
	beq _080736E8
	cmp r0, #0x01
	bgt _080736AC
	cmp r0, #0x00
	beq _080736B2
	b _0807374A
	.byte 0x00, 0x00
_080736A4: .4byte 0x0000414C
_080736A8: .4byte sub_8087540
_080736AC:
	cmp r0, #0x02
	beq _0807371A
	b _0807374A
_080736B2:
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0x80
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	movs r0, #0xB6
	lsls r0, r0, #0x08
	ldr r3, [sp, #0x00C]
	str r0, [r3, #0x00]
	adds r1, #0x04
	movs r0, #0x7C
	str r0, [r1, #0x00]
	ldr r4, [sp, #0x010]
	str r0, [r4, #0x00]
	adds r1, #0x04
	movs r0, #0x84
	str r0, [r1, #0x00]
	movs r0, #0xA0
	ldr r6, [sp, #0x014]
	str r0, [r6, #0x00]
	adds r1, #0x04
	movs r0, #0xCC
	str r0, [r1, #0x00]
	movs r0, #0x1E
	ldr r1, [sp, #0x018]
	str r0, [r1, #0x00]
	b _08073778
_080736E8:
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0xA0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	movs r0, #0x8E
	lsls r0, r0, #0x08
	ldr r2, [sp, #0x00C]
	str r0, [r2, #0x00]
	adds r1, #0x04
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r3, [sp, #0x010]
	str r0, [r3, #0x00]
	adds r1, #0x04
	movs r0, #0x61
	str r0, [r1, #0x00]
	ldr r4, [sp, #0x014]
	str r0, [r4, #0x00]
	adds r1, #0x04
	movs r0, #0x81
	str r0, [r1, #0x00]
	ldr r6, [sp, #0x018]
	str r0, [r6, #0x00]
	b _08073778
_0807371A:
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0xDC
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r1, [sp, #0x00C]
	str r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xA0
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x00]
	adds r1, #0x04
	movs r0, #0x61
	str r0, [r1, #0x00]
	ldr r3, [sp, #0x014]
	str r0, [r3, #0x00]
	adds r1, #0x04
	movs r0, #0x81
	str r0, [r1, #0x00]
	ldr r4, [sp, #0x018]
	str r0, [r4, #0x00]
	b _08073778
_0807374A:
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0xDC
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r6, [sp, #0x00C]
	str r0, [r6, #0x00]
	adds r1, #0x04
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xA4
	movs r0, #0x61
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x014]
	str r0, [r2, #0x00]
	adds r1, #0x04
	movs r0, #0x81
	str r0, [r1, #0x00]
	ldr r3, [sp, #0x018]
	str r0, [r3, #0x00]
_08073778:
	movs r0, #0x1E
	ldr r4, [sp, #0x020]
	str r0, [r4, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5E
	bl play_sfx_80195B4
_08073788:
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8073798
sub_8073798:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	mov r8, r0
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x30]
	ldr r5, [r0, #0x30]
	ldr r7, [r5, #0x30]
	ldr r0, [r7, #0x30]
	mov r9, r0
	ldr r1, [r0, #0x30]
	mov r10, r1
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r4, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x9C
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _080737C8
	adds r0, #0xFF
_080737C8:
	asrs r0, r0, #0x08
	movs r2, #0xFF
	mov r12, r2
	ands r0, r2
	lsls r0, r0, #0x01
	ldr r1, _080738F4 @ =0x08198584
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _080737E0
	adds r0, #0x3F
_080737E0:
	asrs r2, r0, #0x06
	adds r1, r5, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	muls r0, r2
	str r1, [sp, #0x004]
	cmp r0, #0x00
	bge _080737F2
	adds r0, #0xFF
_080737F2:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r4, [r0, #0x00]
	ldr r2, [r3, #0x00]
	str r1, [sp, #0x018]
	str r0, [sp, #0x010]
	cmp r2, #0x00
	bge _0807380E
	adds r2, #0xFF
_0807380E:
	asrs r0, r2, #0x08
	mov r1, r12
	ands r0, r1
	lsls r0, r0, #0x01
	ldr r2, _080738F8 @ =0x08198504
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08073824
	adds r0, #0x3F
_08073824:
	asrs r1, r0, #0x06
	ldr r2, [sp, #0x004]
	ldr r0, [r2, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _08073832
	adds r0, #0xFF
_08073832:
	asrs r0, r0, #0x08
	subs r0, r4, r0
	adds r2, r5, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xA4
	ldr r4, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r3, [r0, #0x00]
	str r2, [sp, #0x01C]
	str r1, [sp, #0x00C]
	adds r6, r0, #0x0
	cmp r3, #0x00
	bge _08073854
	adds r3, #0xFF
_08073854:
	asrs r0, r3, #0x08
	mov r1, r12
	ands r0, r1
	lsls r0, r0, #0x01
	ldr r2, _080738F4 @ =0x08198584
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807386A
	adds r0, #0x3F
_0807386A:
	asrs r2, r0, #0x06
	adds r1, r7, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	muls r0, r2
	str r1, [sp, #0x008]
	cmp r0, #0x00
	bge _0807387C
	adds r0, #0xFF
_0807387C:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	adds r1, r7, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xA8
	ldr r3, [r0, #0x00]
	ldr r2, [r6, #0x00]
	adds r4, r1, #0x0
	str r0, [sp, #0x014]
	cmp r2, #0x00
	bge _08073898
	adds r2, #0xFF
_08073898:
	asrs r0, r2, #0x08
	mov r2, r12
	ands r0, r2
	lsls r0, r0, #0x01
	ldr r1, _080738F8 @ =0x08198504
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _080738AE
	adds r0, #0x3F
_080738AE:
	asrs r1, r0, #0x06
	ldr r2, [sp, #0x008]
	ldr r0, [r2, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080738BC
	adds r0, #0xFF
_080738BC:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	adds r1, r7, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	mov r2, r8
	adds r2, #0x9C
	str r2, [sp, #0x000]
	cmp r0, #0x00
	beq _0807393E
	mov r0, r8
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bgt _0807391E
	ldr r0, [r2, #0x00]
	cmp r0, #0x01
	beq _0807390E
	cmp r0, #0x01
	bgt _080738FC
	cmp r0, #0x00
	beq _08073906
	b _0807391E
	.byte 0x00, 0x00
_080738F4: .4byte 0x08198584
_080738F8: .4byte 0x08198504
_080738FC:
	cmp r0, #0x02
	beq _08073916
	cmp r0, #0x03
	beq _08073916
	b _0807391E
_08073906:
	ldr r0, [r6, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
	b _0807391A
_0807390E:
	ldr r0, [r6, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x01
	b _0807391A
_08073916:
	ldr r0, [r6, #0x00]
	ldr r2, _08073968 @ =0xFFFFFF00
_0807391A:
	adds r0, r0, r2
	str r0, [r6, #0x00]
_0807391E:
	movs r2, #0x00
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	mov r2, r10
	str r0, [r2, #0x10]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	mov r1, r10
	str r0, [r1, #0x14]
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x18]
_0807393E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08073A18
	mov r0, r8
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	bgt _080739A2
	ldr r2, [sp, #0x000]
	ldr r0, [r2, #0x00]
	cmp r0, #0x01
	beq _08073984
	cmp r0, #0x01
	bgt _0807396C
	cmp r0, #0x00
	beq _08073976
	b _080739A2
_08073968: .4byte 0xFFFFFF00
_0807396C:
	cmp r0, #0x02
	beq _08073994
	cmp r0, #0x03
	beq _08073994
	b _080739A2
_08073976:
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	ldr r2, _08073980 @ =0xFFFFFF00
	b _0807399E
_08073980: .4byte 0xFFFFFF00
_08073984:
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	ldr r2, _08073990 @ =0xFFFFFE80
	b _0807399E
	.byte 0x00, 0x00
_08073990: .4byte 0xFFFFFE80
_08073994:
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
_0807399E:
	adds r0, r0, r2
	str r0, [r1, #0x00]
_080739A2:
	ldr r1, [sp, #0x018]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	mov r1, r9
	str r0, [r1, #0x10]
	ldr r2, [sp, #0x01C]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	mov r2, r9
	str r0, [r2, #0x14]
	adds r0, r5, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	str r0, [r2, #0x18]
	adds r1, r4, #0x0
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08073A18
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x08
	bne _080739EE
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080739EE:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _08073A18
	mov r0, r9
	bl sub_807F4FC
	mov r0, r10
	bl sub_807F4FC
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08073A18:
	mov r0, r8
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r1, #0x01
	strh r1, [r0, #0x00]
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	bne _08073AC8
	movs r2, #0x00
	ldr r0, _08073AEC @ =0x03000E80
	ldrh r1, [r0, #0x00]
	adds r4, r0, #0x0
	ldr r3, _08073AF0 @ =0x03000E98
	cmp r1, #0x00
	beq _08073A70
	adds r1, r4, #0x0
_08073A3A:
	adds r2, #0x01
	ldrh r0, [r1, #0x02]
	cmp r0, #0x00
	beq _08073A70
	adds r2, #0x01
	ldrh r0, [r1, #0x04]
	cmp r0, #0x00
	beq _08073A70
	adds r2, #0x01
	ldrh r0, [r1, #0x06]
	cmp r0, #0x00
	beq _08073A70
	adds r2, #0x01
	ldrh r0, [r1, #0x08]
	cmp r0, #0x00
	beq _08073A70
	adds r2, #0x01
	ldrh r0, [r1, #0x0A]
	cmp r0, #0x00
	beq _08073A70
	adds r1, #0x0C
	adds r2, #0x01
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08073A70
	cmp r2, #0x0B
	ble _08073A3A
_08073A70:
	cmp r2, #0x0B
	bgt _08073A7C
	lsls r0, r2, #0x01
	adds r0, r0, r4
	movs r1, #0x01
	strh r1, [r0, #0x00]
_08073A7C:
	movs r2, #0x00
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _08073ABC
	adds r1, r3, #0x0
_08073A86:
	adds r2, #0x01
	ldrh r0, [r1, #0x02]
	cmp r0, #0x00
	beq _08073ABC
	adds r2, #0x01
	ldrh r0, [r1, #0x04]
	cmp r0, #0x00
	beq _08073ABC
	adds r2, #0x01
	ldrh r0, [r1, #0x06]
	cmp r0, #0x00
	beq _08073ABC
	adds r2, #0x01
	ldrh r0, [r1, #0x08]
	cmp r0, #0x00
	beq _08073ABC
	adds r2, #0x01
	ldrh r0, [r1, #0x0A]
	cmp r0, #0x00
	beq _08073ABC
	adds r1, #0x0C
	adds r2, #0x01
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08073ABC
	cmp r2, #0x0B
	ble _08073A86
_08073ABC:
	cmp r2, #0x0B
	bgt _08073AC8
	lsls r0, r2, #0x01
	adds r0, r0, r3
	movs r1, #0x01
	strh r1, [r0, #0x00]
_08073AC8:
	adds r0, r5, #0x0
	bl sub_8072FDC
	adds r0, r7, #0x0
	bl sub_80730C8
	mov r0, r8
	ldr r2, [r0, #0x30]
	ldr r4, [r2, #0x30]
	ldr r1, [sp, #0x000]
	ldr r0, [r1, #0x00]
	cmp r0, #0x01
	beq _08073B0C
	cmp r0, #0x01
	bgt _08073AF4
	cmp r0, #0x00
	beq _08073AFE
	b _08073B88
_08073AEC: .4byte 0x03000E80
_08073AF0: .4byte 0x03000E98
_08073AF4:
	cmp r0, #0x02
	beq _08073B3C
	cmp r0, #0x03
	beq _08073B6C
	b _08073B88
_08073AFE:
	ldr r1, [r6, #0x00]
	movs r0, #0xD8
	lsls r0, r0, #0x07
	cmp r1, r0
	bgt _08073B0A
	b _08073C06
_08073B0A:
	b _08073B44
_08073B0C:
	ldr r1, [r6, #0x00]
	movs r0, #0x8E
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _08073C06
	adds r0, r2, #0x0
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08073B38 @ =0x08074165
	mov r1, r8
	str r0, [r1, #0x4C]
	b _08073C06
	.byte 0x00, 0x00
_08073B38: .4byte sub_8074164
_08073B3C:
	ldr r1, [r6, #0x00]
	ldr r0, _08073B64 @ =0x00004FFF
	cmp r1, r0
	bgt _08073C06
_08073B44:
	adds r0, r2, #0x0
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08073B68 @ =0x08074165
	mov r2, r8
	str r0, [r2, #0x4C]
	b _08073C06
_08073B64: .4byte 0x00004FFF
_08073B68: .4byte sub_8074164
_08073B6C:
	ldr r1, [r6, #0x00]
	ldr r0, _08073B84 @ =0x00004FFF
	cmp r1, r0
	bgt _08073C06
	movs r0, #0x04
	ldr r1, [sp, #0x000]
	str r0, [r1, #0x00]
	mov r1, r8
	adds r1, #0xAE
	movs r0, #0x3C
	strh r0, [r1, #0x00]
	b _08073C06
_08073B84: .4byte 0x00004FFF
_08073B88:
	mov r1, r8
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bgt _08073BEA
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xB4
	lsls r0, r0, #0x07
	str r0, [r6, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	movs r0, #0x84
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	movs r0, #0x3C
	ldr r2, [sp, #0x008]
	str r0, [r2, #0x00]
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x00]
	movs r1, #0x61
	ldr r2, [sp, #0x00C]
	str r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA4
	str r1, [r0, #0x00]
	movs r0, #0x81
	ldr r1, [sp, #0x014]
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x00]
	movs r0, #0x01
	ldr r1, [sp, #0x000]
	str r0, [r1, #0x00]
	b _08073C06
_08073BEA:
	cmp r0, #0x08
	bne _08073C06
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08073C06:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8073C18
sub_8073C18:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08073C34
	b _08073E1E
_08073C34:
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8B
	lsls r0, r0, #0x01
	movs r4, #0x01
	negs r4, r4
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0xD5
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08073C64
	adds r0, #0xFF
_08073C64:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08073C72
	adds r0, #0xFF
_08073C72:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08073C80
	adds r0, #0xFF
_08073C80:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08073E30 @ =0x000022E8
	bl sub_80DF024
	movs r0, #0x9C
	adds r0, r0, r6
	mov r8, r0
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08073C9A
	adds r2, #0xFF
_08073C9A:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08073CA4
	adds r0, #0xFF
_08073CA4:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x0A
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08073CB2
	adds r0, #0xFF
_08073CB2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08073E34 @ =0x0000414E
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x74
	ldrb r1, [r4, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r3, r5, #0x0
	adds r3, #0x77
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08073E38 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	str r2, [r0, #0x00]
	adds r0, #0x08
	str r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08073E3C @ =0x08073EAD
	str r0, [r5, #0x4C]
	ldr r0, _08073E40 @ =0x080740D5
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x3C]
	ldr r2, _08073E44 @ =0xFFFFF600
	adds r0, r0, r2
	str r0, [r1, #0x00]
	movs r7, #0x01
	mov r3, r8
	ldr r0, [r3, #0x00]
	mov r9, r4
	movs r1, #0xA0
	adds r1, r1, r6
	mov r10, r1
	adds r2, r6, #0x0
	adds r2, #0xA8
	str r2, [sp, #0x00C]
	cmp r7, r0
	bge _08073E0C
_08073D50:
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08073D5A
	adds r2, #0xFF
_08073D5A:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08073D64
	adds r0, #0xFF
_08073D64:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x0A
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08073D72
	adds r0, #0xFF
_08073D72:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08073E34 @ =0x0000414E
	bl sub_807BF34
	str r0, [r5, #0x30]
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r3, #0x41
	negs r3, r3
	adds r0, r3, #0x0
	ands r1, r0
	adds r3, #0x20
	adds r0, r3, #0x0
	ands r1, r0
	strb r1, [r2, #0x00]
	ldr r0, _08073E38 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	str r7, [r0, #0x00]
	adds r4, r5, #0x0
	adds r4, #0xA4
	lsls r0, r7, #0x08
	mov r2, r8
	ldr r1, [r2, #0x00]
	bl __divsi3
	lsls r0, r0, #0x08
	str r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08073E3C @ =0x08073EAD
	str r0, [r5, #0x4C]
	ldr r0, _08073E40 @ =0x080740D5
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x3C]
	ldr r3, _08073E44 @ =0xFFFFF600
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r7, #0x01
	mov r1, r8
	ldr r0, [r1, #0x00]
	cmp r7, r0
	blt _08073D50
_08073E0C:
	movs r0, #0x00
	str r0, [r5, #0x30]
	mov r2, r10
	str r0, [r2, #0x00]
	movs r0, #0x30
	ldr r3, [sp, #0x00C]
	str r0, [r3, #0x00]
	ldr r0, _08073E48 @ =0x0807413D
	str r0, [r6, #0x4C]
_08073E1E:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08073E30: .4byte 0x000022E8
_08073E34: .4byte 0x0000414E
_08073E38: .4byte sub_8087540
_08073E3C: .4byte sub_8073EAC
_08073E40: .4byte sub_80740D4
_08073E44: .4byte 0xFFFFF600
_08073E48: .4byte sub_807413C
