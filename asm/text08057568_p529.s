	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80DB5F0
sub_80DB5F0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DB688
	adds r0, r7, #0x0
	bl sub_807F47C
	adds r3, r7, #0x0
	adds r3, #0x84
	ldr r2, [r7, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x88
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x8C
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r6, [r0, #0x00]
	str r6, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x98
	str r6, [r0, #0x00]
	adds r0, #0x16
	adds r1, #0x24
	adds r2, r7, #0x0
	adds r2, #0xB2
	ldr r3, [r3, #0x00]
	ldr r4, [r7, #0x38]
	subs r3, r3, r4
	ldr r4, [r5, #0x00]
	ldr r5, [r7, #0x3C]
	subs r4, r4, r5
	str r4, [sp, #0x000]
	ldr r4, [r7, #0x40]
	subs r6, r6, r4
	str r6, [sp, #0x004]
	movs r4, #0x80
	lsls r4, r4, #0x03
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0xFD
	str r4, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8D
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DB690 @ =0x080DB695
	str r0, [r7, #0x4C]
_080DB688:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080DB690: .4byte sub_80DB694
	thumb_func_start sub_80DB694
sub_80DB694:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	movs r0, #0xAE
	adds r0, r0, r2
	mov r12, r0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DB6B0
	adds r0, #0xFF
_080DB6B0:
	asrs r0, r0, #0x08
	mov r4, r12
	strh r0, [r4, #0x00]
	adds r4, r2, #0x0
	adds r4, #0xB0
	movs r5, #0x00
	ldsh r1, [r4, r5]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DB6CC
	adds r0, #0xFF
_080DB6CC:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	adds r3, r2, #0x0
	adds r3, #0xB2
	adds r0, r2, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	mov r0, r12
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r2, #0x3C]
	adds r0, r0, r1
	str r0, [r2, #0x14]
	movs r4, #0x00
	ldsh r1, [r3, r4]
	ldr r0, [r2, #0x40]
	adds r1, r0, r1
	str r1, [r2, #0x18]
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bgt _080DB718
	adds r0, r2, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080DB718
	adds r0, r2, #0x0
	bl sub_8087540
_080DB718:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80DB720
sub_80DB720:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	movs r0, #0xAE
	adds r0, r0, r2
	mov r12, r0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DB73C
	adds r0, #0xFF
_080DB73C:
	asrs r0, r0, #0x08
	mov r4, r12
	strh r0, [r4, #0x00]
	adds r4, r2, #0x0
	adds r4, #0xB0
	movs r5, #0x00
	ldsh r1, [r4, r5]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DB758
	adds r0, #0xFF
_080DB758:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	adds r3, r2, #0x0
	adds r3, #0xB2
	adds r0, r2, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	mov r0, r12
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r2, #0x3C]
	adds r0, r0, r1
	str r0, [r2, #0x14]
	movs r4, #0x00
	ldsh r1, [r3, r4]
	ldr r0, [r2, #0x40]
	adds r1, r0, r1
	str r1, [r2, #0x18]
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bgt _080DB7AA
	adds r0, r2, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080DB7AA
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _080DB7B0 @ =0x080DB331
	str r0, [r2, #0x4C]
_080DB7AA:
	pop {r4, r5}
	pop {r0}
	bx r0
_080DB7B0: .4byte sub_80DB330
	thumb_func_start sub_80DB7B4
sub_80DB7B4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r3, r7, #0x0
	adds r3, #0x84
	ldr r0, [r7, #0x38]
	str r0, [r3, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x88
	ldr r0, [r7, #0x3C]
	str r0, [r5, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r6, [r7, #0x40]
	str r6, [r0, #0x00]
	adds r0, #0x0C
	str r6, [r0, #0x00]
	adds r0, #0x16
	adds r1, r7, #0x0
	adds r1, #0xB0
	adds r2, r7, #0x0
	adds r2, #0xB2
	ldr r3, [r3, #0x00]
	ldr r4, [r7, #0x38]
	subs r3, r3, r4
	ldr r4, [r5, #0x00]
	ldr r5, [r7, #0x3C]
	subs r4, r4, r5
	str r4, [sp, #0x000]
	ldr r4, [r7, #0x40]
	subs r6, r6, r4
	str r6, [sp, #0x004]
	movs r4, #0xC0
	lsls r4, r4, #0x04
	str r4, [sp, #0x008]
	movs r4, #0x80
	lsls r4, r4, #0x02
	str r4, [sp, #0x00C]
	movs r4, #0xFD
	str r4, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8D
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DB834 @ =0x080DB721
	str r0, [r7, #0x4C]
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080DB834: .4byte sub_80DB720
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x45, 0xB8, 0x0D, 0x08
	thumb_func_start sub_80DB844
sub_80DB844:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080DB854
	ldr r0, _080DB85C @ =0x080DB1E5
	str r0, [r4, #0x4C]
_080DB854:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DB85C: .4byte sub_80DB1E4
	thumb_func_start sub_80DB860
sub_80DB860:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DB8CE
	subs r1, #0x28
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xB0
	lsls r3, r3, #0x06
	adds r0, r0, r3
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
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DB8D4 @ =0x080DBCA5
	str r0, [r4, #0x4C]
_080DB8CE:
	pop {r4}
	pop {r0}
	bx r0
_080DB8D4: .4byte sub_80DBCA4
	thumb_func_start sub_80DB8D8
sub_80DB8D8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DB950
	adds r0, r4, #0x0
	bl sub_807F4FC
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
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0x7C
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x08
	strh r0, [r5, #0x00]
	ldr r0, _080DB958 @ =0x080DB95D
	str r0, [r4, #0x4C]
_080DB950:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DB958: .4byte sub_80DB95C
	thumb_func_start sub_80DB95C
sub_80DB95C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080DB9D2
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080DB9D2
	adds r0, r4, #0x0
	bl sub_807F47C
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
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DB9D8 @ =0x080DBC85
	str r0, [r4, #0x4C]
_080DB9D2:
	pop {r4, r5}
	pop {r0}
	bx r0
_080DB9D8: .4byte sub_80DBC84
	thumb_func_start sub_80DB9DC
sub_80DB9DC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0xAE
	adds r0, r0, r4
	mov r12, r0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DB9F8
	adds r0, #0xFF
_080DB9F8:
	asrs r0, r0, #0x08
	mov r5, r12
	strh r0, [r5, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xB0
	movs r0, #0x00
	ldsh r1, [r3, r0]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DBA14
	adds r0, #0xFF
_080DBA14:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	mov r5, r12
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r5, #0x00
	ldsh r1, [r3, r5]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0x98
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _080DBA8E
	str r1, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r3, [r4, #0x08]
	ldrb r2, [r3, #0x11]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	eors r1, r0
	lsls r1, r1, #0x06
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r0, #0x8D
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x20
	strh r0, [r1, #0x00]
	ldr r0, _080DBA94 @ =0x080DBA99
	str r0, [r4, #0x4C]
_080DBA8E:
	pop {r4, r5}
	pop {r0}
	bx r0
_080DBA94: .4byte sub_80DBA98
	thumb_func_start sub_80DBA98
sub_80DBA98:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DBB12
	adds r3, r4, #0x0
	adds r3, #0x84
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	mov r12, r0
	mov r2, r12
	adds r2, #0xD8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	mov r0, r12
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r12
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	movs r0, #0x88
	lsls r0, r0, #0x09
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0x7C
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r0, #0x14
	strh r0, [r5, #0x00]
	ldr r0, _080DBB18 @ =0x080DBB1D
	str r0, [r4, #0x4C]
_080DBB12:
	pop {r4, r5}
	pop {r0}
	bx r0
_080DBB18: .4byte sub_80DBB1C
	thumb_func_start sub_80DBB1C
sub_80DBB1C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r0, #0x80
	ldr r6, [r0, #0x00]
	cmp r6, #0x00
	bne _080DBBBC
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DBBBC
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _080DBBC4 @ =0x080DBC3D
	str r0, [r5, #0x5C]
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r4, r2, #0x0
	adds r4, #0xD8
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r4, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x38]
	str r0, [r5, #0x10]
	adds r3, r2, #0x0
	adds r3, #0xDC
	ldr r0, [r3, #0x00]
	str r0, [r5, #0x3C]
	str r0, [r5, #0x14]
	adds r2, #0xE0
	ldr r0, [r2, #0x00]
	str r0, [r5, #0x40]
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x03
	adds r0, r0, r4
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r3, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0x7C
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DBBC8 @ =0x080DBBCD
	str r0, [r5, #0x4C]
_080DBBBC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DBBC4: .4byte sub_80DBC3C
_080DBBC8: .4byte sub_80DBBCC
	thumb_func_start sub_80DBBCC
sub_80DBBCC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080DBC32
	adds r0, r4, #0x0
	bl sub_807F47C
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
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DBC38 @ =0x080DBD19
	str r0, [r4, #0x4C]
_080DBC32:
	pop {r4, r5}
	pop {r0}
	bx r0
_080DBC38: .4byte sub_80DBD18
	thumb_func_start sub_80DBC3C
sub_80DBC3C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x4C]
	str r0, [r4, #0x54]
	adds r0, r4, #0x0
	bl sub_8086C64
	adds r1, r0, #0x0
	cmp r1, #0x00
	bne _080DBC54
	ldr r0, _080DBC5C @ =0x080DBC61
	str r0, [r4, #0x4C]
_080DBC54:
	adds r0, r1, #0x0
	pop {r4}
	pop {r1}
	bx r1
_080DBC5C: .4byte sub_80DBC60
	thumb_func_start sub_80DBC60
sub_80DBC60:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DBC7E
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x54]
	str r0, [r4, #0x4C]
_080DBC7E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80DBC84
sub_80DBC84:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DBC9E
	movs r0, #0x8D
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_8087540
_080DBC9E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80DBCA4
sub_80DBCA4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DBCCA
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	adds r0, #0x0C
	strh r1, [r0, #0x00]
	ldr r0, _080DBCD0 @ =0x080DB8D9
	str r0, [r4, #0x4C]
_080DBCCA:
	pop {r4}
	pop {r0}
	bx r0
_080DBCD0: .4byte sub_80DB8D8
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x51, 0xBD, 0x0D, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x6D, 0xBD, 0x0D, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0xBE, 0xF0, 0x1E, 0xF9
	.byte 0x01, 0x1C, 0x01, 0x20, 0x01, 0xF1, 0x40, 0xFD, 0x00, 0x28, 0x03, 0xD0, 0x00, 0x48, 0x02, 0xE0
	.byte 0x6D, 0xBD, 0x0D, 0x08, 0x02, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x51, 0xBD, 0x0D, 0x08
	thumb_func_start sub_80DBD18
sub_80DBD18:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DBD48
	movs r0, #0x8D
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	ldr r3, [r4, #0x08]
	ldrb r2, [r3, #0x11]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	eors r1, r0
	lsls r1, r1, #0x06
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	adds r0, r4, #0x0
	bl sub_8087540
_080DBD48:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80DBD50
sub_80DBD50:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080DBD60
	ldr r0, _080DBD68 @ =0x080DBD89
	str r0, [r4, #0x4C]
_080DBD60:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DBD68: .4byte sub_80DBD88
	thumb_func_start sub_80DBD6C
sub_80DBD6C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080DBD7C
	ldr r0, _080DBD84 @ =0x080DBDE9
	str r0, [r4, #0x4C]
_080DBD7C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DBD84: .4byte sub_80DBDE8
	thumb_func_start sub_80DBD88
sub_80DBD88:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0x98
	ldr r0, [r6, #0x28]
	adds r0, #0xE0
	ldr r4, [r0, #0x00]
	str r4, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xAE
	adds r1, #0x18
	adds r2, r6, #0x0
	adds r2, #0xB2
	movs r5, #0x00
	str r5, [sp, #0x000]
	ldr r3, [r6, #0x40]
	subs r4, r4, r3
	str r4, [sp, #0x004]
	movs r3, #0xA0
	lsls r3, r3, #0x05
	str r3, [sp, #0x008]
	ldr r3, _080DBDE0 @ =0x000004CC
	str r3, [sp, #0x00C]
	movs r3, #0xFD
	str r3, [sp, #0x010]
	str r5, [sp, #0x014]
	movs r3, #0x00
	bl sub_808552C
	adds r1, r6, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x30
	bl play_sfx_80195B4
	ldr r0, _080DBDE4 @ =0x080DB9DD
	str r0, [r6, #0x4C]
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080DBDE0: .4byte 0x000004CC
_080DBDE4: .4byte sub_80DB9DC
	thumb_func_start sub_80DBDE8
sub_80DBDE8:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8D
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x30
	strh r0, [r1, #0x00]
	ldr r0, _080DBE14 @ =0x080DB861
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080DBE14: .4byte sub_80DB860
	thumb_func_start sub_80DBE18
sub_80DBE18:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	movs r0, #0x00
	bl sub_80F7608
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r3, [r4, #0x08]
	ldrb r2, [r3, #0x11]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	eors r1, r0
	lsls r1, r1, #0x06
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x82
	bl play_sfx_80195B4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x01
	bl sub_81DD77C
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _080DBE6C
	ldr r0, _080DBE68 @ =0x080DBF0D
	b _080DBEFC
	.byte 0x00, 0x00
_080DBE68: .4byte sub_80DBF0C
_080DBE6C:
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DBE7A
	adds r0, #0xFF
_080DBE7A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DBE8A
	adds r0, #0xFF
_080DBE8A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DBE9A
	adds r0, #0xFF
_080DBE9A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r0, [sp, #0x000]
	movs r1, #0x88
	lsls r1, r1, #0x01
	subs r1, r1, r0
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r2, #0x0B
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _080DBF08 @ =0x080DC0B5
_080DBEFC:
	str r0, [r4, #0x4C]
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DBF08: .4byte sub_80DC0B4
	thumb_func_start sub_80DBF0C
sub_80DBF0C:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DBF20
	adds r0, #0xFF
_080DBF20:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DBF30
	adds r0, #0xFF
_080DBF30:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DBF40
	adds r0, #0xFF
_080DBF40:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r0, [sp, #0x000]
	movs r4, #0xF0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r3, [r5, #0x28]
	adds r1, r3, #0x0
	adds r1, #0xD8
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x88
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r2, #0x0B
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
	ldr r0, _080DBFB8 @ =0x080DC07D
	str r0, [r5, #0x4C]
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_080DBFB8: .4byte sub_80DC07C
	thumb_func_start sub_80DBFBC
sub_80DBFBC:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DC070
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DBFE0
	adds r0, #0xFF
_080DBFE0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DBFF0
	adds r0, #0xFF
_080DBFF0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DC000
	adds r0, #0xFF
_080DC000:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r0, [sp, #0x000]
	movs r1, #0x88
	lsls r1, r1, #0x01
	subs r1, r1, r0
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r2, #0x0B
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
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DC078 @ =0x080DC0B5
	str r0, [r4, #0x4C]
_080DC070:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
_080DC078: .4byte sub_80DC0B4
	thumb_func_start sub_80DC07C
sub_80DC07C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DC0AA
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x84
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x20
	strh r0, [r1, #0x00]
	ldr r0, _080DC0B0 @ =0x080DBFBD
	str r0, [r4, #0x4C]
_080DC0AA:
	pop {r4}
	pop {r0}
	bx r0
_080DC0B0: .4byte sub_80DBFBC
	thumb_func_start sub_80DC0B4
sub_80DC0B4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DC0CC
	ldr r0, [r4, #0x28]
	bl sub_808738C
	adds r0, r4, #0x0
	bl sub_8087540
_080DC0CC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x19, 0xBE, 0x0D, 0x08
	thumb_func_start sub_80DC0E0
sub_80DC0E0:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DC196
	subs r1, #0x28
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x38]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080DC11A
	adds r0, #0x03
_080DC11A:
	asrs r6, r0, #0x02
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x3C]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080DC12C
	adds r1, #0x03
_080DC12C:
	asrs r3, r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080DC13E
	adds r0, #0x03
_080DC13E:
	asrs r2, r0, #0x02
	ldr r4, _080DC19C @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xAE
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r2, #0x00]
	lsls r1, r1, #0x03
	adds r1, r1, r0
	ldr r0, _080DC1A0 @ =0x0819832C
	ldr r2, _080DC1A4 @ =0x08198220
	subs r0, r0, r2
	ldr r2, [r4, #0x00]
	adds r2, r2, r0
	asrs r0, r1, #0x01
	ldr r3, _080DC1A8 @ =0xFFFC0000
	adds r0, r0, r3
	bl _call_via_r2
	adds r1, r5, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	ldr r0, _080DC1AC @ =0x080DC449
	str r0, [r5, #0x54]
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DC1B0 @ =0x080DC1B5
	str r0, [r5, #0x4C]
_080DC196:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080DC19C: .4byte 0x03001038
_080DC1A0: .4byte 0x0819832C
_080DC1A4: .4byte 0x08198220
_080DC1A8: .4byte 0xFFFC0000
_080DC1AC: .4byte 0x080DC449
_080DC1B0: .4byte sub_80DC1B4
	thumb_func_start sub_80DC1B4
sub_80DC1B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	movs r0, #0xAE
	adds r0, r0, r7
	mov r8, r0
	adds r0, r7, #0x0
	adds r0, #0xB0
	ldrh r0, [r0, #0x00]
	mov r1, r8
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	mov r2, r8
	strh r0, [r2, #0x00]
	mov r5, sp
	adds r5, #0x0E
	add r6, sp, #0x010
	ldr r4, [r7, #0x2C]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	adds r2, r7, #0x0
	adds r2, #0x84
	ldr r3, [r0, #0x00]
	ldr r0, [r2, #0x00]
	subs r3, r3, r0
	adds r1, #0xDC
	adds r2, #0x04
	ldr r0, [r1, #0x00]
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	adds r1, r7, #0x0
	adds r1, #0x8C
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	str r0, [sp, #0x008]
	add r0, sp, #0x00C
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_8087968
	add r0, sp, #0x00C
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r7, #0x3C]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x18]
	mov r0, r8
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, _080DC274 @ =0xFFFFFE00
	cmp r1, r0
	bgt _080DC266
	adds r0, r7, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DC278 @ =0x080DC3D1
	str r0, [r7, #0x4C]
_080DC266:
	add sp, #0x014
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DC274: .4byte 0xFFFFFE00
_080DC278: .4byte sub_80DC3D0
	thumb_func_start sub_80DC27C
sub_80DC27C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DC300
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080DC308 @ =0x080DC3B9
	str r0, [r4, #0x58]
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
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x02
	strh r0, [r1, #0x00]
	ldr r0, _080DC30C @ =0x080DC311
	str r0, [r4, #0x4C]
_080DC300:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DC308: .4byte sub_80DC3B8
_080DC30C: .4byte sub_80DC310
	thumb_func_start sub_80DC310
sub_80DC310:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080DC394
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DC394
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x06
	adds r0, r0, r3
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
	movs r0, #0xC0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DC39C @ =0x080DC3A1
	str r0, [r4, #0x4C]
_080DC394:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DC39C: .4byte sub_80DC3A0
