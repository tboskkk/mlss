	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80DA66C
sub_80DA66C:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	movs r0, #0xAE
	adds r0, r0, r3
	mov r12, r0
	ldrh r0, [r0, #0x00]
	mov r1, r12
	strh r0, [r1, #0x00]
	adds r2, r3, #0x0
	adds r2, #0xB0
	adds r4, r3, #0x0
	adds r4, #0xB2
	adds r0, r3, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r4, #0x00]
	adds r0, r0, r1
	strh r0, [r4, #0x00]
	mov r5, r12
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r3, #0x38]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	movs r5, #0x00
	ldsh r1, [r2, r5]
	ldr r0, [r3, #0x3C]
	adds r0, r0, r1
	str r0, [r3, #0x14]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r3, #0x40]
	adds r1, r0, r1
	str r1, [r3, #0x18]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bgt _080DA6CA
	adds r0, r3, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080DA6CA
	str r0, [r3, #0x18]
	adds r0, r3, #0x0
	bl sub_807C298
_080DA6CA:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_80DA6D0
sub_80DA6D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	mov r8, r0
	mov r4, r8
	adds r4, #0xAE
	movs r0, #0x00
	ldsh r1, [r4, r0]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DA6F2
	adds r0, #0xFF
_080DA6F2:
	asrs r0, r0, #0x08
	movs r1, #0x00
	mov r9, r1
	strh r0, [r4, #0x00]
	mov r3, r8
	adds r3, #0xB0
	movs r5, #0x00
	ldsh r1, [r3, r5]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DA710
	adds r0, #0xFF
_080DA710:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	mov r2, r8
	adds r2, #0xB2
	mov r0, r8
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	mov r4, r8
	ldr r1, [r4, #0x38]
	adds r0, r1, r0
	str r0, [r4, #0x10]
	movs r5, #0x00
	ldsh r0, [r3, r5]
	ldr r3, [r4, #0x3C]
	adds r0, r3, r0
	str r0, [r4, #0x14]
	movs r4, #0x00
	ldsh r0, [r2, r4]
	mov r5, r8
	ldr r4, [r5, #0x40]
	adds r0, r4, r0
	str r0, [r5, #0x18]
	movs r5, #0x00
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	ble _080DA750
	b _080DA8C2
_080DA750:
	mov r0, r8
	ldr r5, [r0, #0x28]
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _080DA75C
	adds r0, #0xFF
_080DA75C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x14
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _080DA76A
	adds r0, #0xFF
_080DA76A:
	asrs r0, r0, #0x08
	subs r3, r0, #0x1
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _080DA776
	adds r0, #0xFF
_080DA776:
	asrs r0, r0, #0x08
	adds r0, #0x14
	str r0, [sp, #0x000]
	mov r1, r8
	ldr r0, [r1, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	ldr r1, _080DA8D0 @ =0x00004138
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r5, r8
	str r7, [r5, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r5, #0x77
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r7, #0x0
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
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080DA8D4 @ =0x080DA97D
	str r0, [r7, #0x4C]
	ldr r0, _080DA8D8 @ =0x08087541
	str r0, [r7, #0x68]
	mov r1, r8
	ldr r0, [r1, #0x6C]
	str r0, [r7, #0x6C]
	ldr r0, [r1, #0x2C]
	str r0, [r7, #0x2C]
	adds r0, r7, #0x0
	bl sub_807F4FC
	ldr r0, _080DA8DC @ =0x080DAA19
	str r0, [r7, #0x60]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r0, r8
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x34
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r6, r7, #0x0
	adds r6, #0x98
	mov r4, r8
	ldr r0, [r4, #0x2C]
	ldr r5, [r0, #0x28]
	adds r0, r5, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAE
	adds r1, r7, #0x0
	adds r1, #0xB0
	adds r2, r7, #0x0
	adds r2, #0xB2
	adds r3, r5, #0x0
	adds r3, #0xD8
	ldr r4, [r7, #0x38]
	subs r4, #0x0A
	ldr r3, [r3, #0x00]
	subs r3, r3, r4
	adds r4, r5, #0x0
	adds r4, #0xDC
	ldr r4, [r4, #0x00]
	ldr r5, [r7, #0x3C]
	subs r4, r4, r5
	str r4, [sp, #0x000]
	ldr r5, [r7, #0x40]
	subs r5, #0x04
	ldr r4, [r6, #0x00]
	subs r4, r4, r5
	str r4, [sp, #0x004]
	movs r4, #0xB8
	lsls r4, r4, #0x07
	str r4, [sp, #0x008]
	ldr r4, _080DA8E0 @ =0x00000466
	str r4, [sp, #0x00C]
	movs r4, #0x80
	lsls r4, r4, #0x01
	str r4, [sp, #0x010]
	mov r5, r9
	str r5, [sp, #0x014]
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	mov r0, r8
	str r5, [r0, #0x6C]
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r1, r8
	ldr r2, [r1, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DA8E4 @ =0x00000117
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _080DA8E8 @ =0x080DA8ED
	mov r4, r8
	str r0, [r4, #0x4C]
_080DA8C2:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080DA8D0: .4byte 0x00004138
_080DA8D4: .4byte sub_80DA97C
_080DA8D8: .4byte sub_8087540
_080DA8DC: .4byte sub_80DAA18
_080DA8E0: .4byte 0x00000466
_080DA8E4: .4byte 0x00000117
_080DA8E8: .4byte sub_80DA8EC
	thumb_func_start sub_80DA8EC
sub_80DA8EC:
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
	bge _080DA908
	adds r0, #0xFF
_080DA908:
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
	bge _080DA924
	adds r0, #0xFF
_080DA924:
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
	bgt _080DA970
	ldr r0, [r2, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080DA970
	str r0, [r2, #0x18]
	ldr r0, _080DA978 @ =0x080DA9E1
	str r0, [r2, #0x4C]
_080DA970:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DA978: .4byte sub_80DA9E0
	thumb_func_start sub_80DA97C
sub_80DA97C:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	movs r0, #0xAE
	adds r0, r0, r3
	mov r12, r0
	ldrh r0, [r0, #0x00]
	mov r1, r12
	strh r0, [r1, #0x00]
	adds r2, r3, #0x0
	adds r2, #0xB0
	adds r4, r3, #0x0
	adds r4, #0xB2
	adds r0, r3, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r4, #0x00]
	adds r0, r0, r1
	strh r0, [r4, #0x00]
	mov r5, r12
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r3, #0x38]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	movs r5, #0x00
	ldsh r1, [r2, r5]
	ldr r0, [r3, #0x3C]
	adds r0, r0, r1
	str r0, [r3, #0x14]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r3, #0x40]
	adds r1, r0, r1
	str r1, [r3, #0x18]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bgt _080DA9DA
	adds r0, r3, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080DA9DA
	str r0, [r3, #0x18]
	adds r0, r3, #0x0
	bl sub_807C298
_080DA9DA:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_80DA9E0
sub_80DA9E0:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DA9F6
	adds r0, r2, #0x0
	bl sub_8087540
_080DA9F6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80DA9FC
sub_80DA9FC:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DAA12
	adds r0, r2, #0x0
	bl sub_8087540
_080DAA12:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80DAA18
sub_80DAA18:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _080DAA54
	adds r2, r4, #0x0
	adds r2, #0xAE
	movs r1, #0x00
	ldsh r0, [r2, r1]
	negs r0, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	ldr r0, _080DAA5C @ =0x080DAAED
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080DAA54:
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_080DAA5C: .4byte sub_80DAAEC
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA5, 0xAA, 0x0D, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xC9, 0xAA, 0x0D, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0xBF, 0xF0, 0x58, 0xFA
	.byte 0x01, 0x1C, 0x01, 0x20, 0x02, 0xF1, 0x7A, 0xFE, 0x00, 0x28, 0x03, 0xD0, 0x00, 0x48, 0x02, 0xE0
	.byte 0xC9, 0xAA, 0x0D, 0x08, 0x02, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0xA5, 0xAA, 0x0D, 0x08
	thumb_func_start sub_80DAAA4
sub_80DAAA4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x30
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x1B
	bl sub_80873B8
	ldr r0, _080DAAC4 @ =0x080DAB65
	str r0, [r4, #0x50]
	pop {r4}
	pop {r0}
	bx r0
_080DAAC4: .4byte sub_80DAB64
	thumb_func_start sub_80DAAC8
sub_80DAAC8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x30
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x1B
	bl sub_80873B8
	ldr r0, _080DAAE8 @ =0x080DABD1
	str r0, [r4, #0x50]
	pop {r4}
	pop {r0}
	bx r0
_080DAAE8: .4byte sub_80DABD0
	thumb_func_start sub_80DAAEC
sub_80DAAEC:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0xB2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldrh r0, [r2, #0x00]
	subs r0, #0x5E
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _080DAB1A
	adds r0, #0xFF
_080DAB1A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _080DAB26
	adds r0, #0xFF
_080DAB26:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080DAB32
	adds r0, #0xFF
_080DAB32:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r1, [sp, #0x000]
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	blt _080DAB56
	ldr r1, [sp, #0x004]
	movs r0, #0x88
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _080DAB5C
_080DAB56:
	adds r0, r4, #0x0
	bl sub_807C298
_080DAB5C:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80DAB64
sub_80DAB64:
	push {r4, r5, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r0, #0xAE
	adds r1, r5, #0x0
	adds r1, #0xB0
	adds r2, r5, #0x0
	adds r2, #0xB2
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r3, #0xA0
	lsls r3, r3, #0x05
	str r3, [sp, #0x008]
	ldr r3, _080DABC8 @ =0x00000499
	str r3, [sp, #0x00C]
	movs r3, #0xFD
	str r3, [sp, #0x010]
	str r4, [sp, #0x014]
	movs r3, #0x00
	bl sub_808552C
	adds r1, r5, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x69
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DABCC @ =0x080DA6D1
	str r0, [r5, #0x4C]
	add sp, #0x018
	pop {r4, r5}
	pop {r0}
	bx r0
_080DABC8: .4byte 0x00000499
_080DABCC: .4byte sub_80DA6D0
	thumb_func_start sub_80DABD0
sub_80DABD0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DABF8 @ =0x080DA4B9
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080DABF8: .4byte sub_80DA4B8
	thumb_func_start sub_80DABFC
sub_80DABFC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DAC76
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
	movs r2, #0x80
	lsls r2, r2, #0x04
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
	lsls r0, r0, #0x02
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
	ldr r0, _080DAC7C @ =0x080DAC81
	str r0, [r4, #0x4C]
_080DAC76:
	pop {r4, r5}
	pop {r0}
	bx r0
_080DAC7C: .4byte sub_80DAC80
	thumb_func_start sub_80DAC80
sub_80DAC80:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _080DACF6
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DACF6
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r5, #0xA0
	lsls r5, r5, #0x06
	adds r0, r0, r5
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r2, #0x0F
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
	strh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DACFC @ =0x080DAE7D
	str r0, [r4, #0x4C]
_080DACF6:
	pop {r4, r5}
	pop {r0}
	bx r0
_080DACFC: .4byte sub_80DAE7C
	thumb_func_start sub_80DAD00
sub_80DAD00:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DAD78
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
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	movs r0, #0x18
	strh r0, [r5, #0x00]
	ldr r0, _080DAD80 @ =0x080DAD85
	str r0, [r4, #0x4C]
_080DAD78:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DAD80: .4byte sub_80DAD84
	thumb_func_start sub_80DAD84
sub_80DAD84:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080DAE02
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DAE02
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xA0
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
	ldr r0, _080DAE08 @ =0x080DAE0D
	str r0, [r4, #0x4C]
_080DAE02:
	pop {r4, r5}
	pop {r0}
	bx r0
_080DAE08: .4byte sub_80DAE0C
	thumb_func_start sub_80DAE0C
sub_80DAE0C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080DAE72
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
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DAE78 @ =0x080DAF31
	str r0, [r4, #0x4C]
_080DAE72:
	pop {r4, r5}
	pop {r0}
	bx r0
_080DAE78: .4byte sub_80DAF30
	thumb_func_start sub_80DAE7C
sub_80DAE7C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080DAEE2
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
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DAEE8 @ =0x080DAF6D
	str r0, [r4, #0x4C]
_080DAEE2:
	pop {r4, r5}
	pop {r0}
	bx r0
_080DAEE8: .4byte sub_80DAF6C
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x49, 0xAF, 0x0D, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x85, 0xAF, 0x0D, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0xBF, 0xF0, 0x12, 0xF8
	.byte 0x01, 0x1C, 0x01, 0x20, 0x02, 0xF1, 0x34, 0xFC, 0x00, 0x28, 0x03, 0xD0, 0x00, 0x48, 0x02, 0xE0
	.byte 0x85, 0xAF, 0x0D, 0x08, 0x02, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x49, 0xAF, 0x0D, 0x08
	thumb_func_start sub_80DAF30
sub_80DAF30:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DAF42
	adds r0, r1, #0x0
	bl sub_8087540
_080DAF42:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80DAF48
sub_80DAF48:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080DAF62
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8D
	bl play_sfx_80195B4
	ldr r0, _080DAF68 @ =0x080DAFA9
	str r0, [r4, #0x4C]
_080DAF62:
	pop {r4}
	pop {r0}
	bx r0
_080DAF68: .4byte sub_80DAFA8
	thumb_func_start sub_80DAF6C
sub_80DAF6C:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DAF7E
	adds r0, r1, #0x0
	bl sub_8087540
_080DAF7E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80DAF84
sub_80DAF84:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080DAF9E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8D
	bl play_sfx_80195B4
	ldr r0, _080DAFA4 @ =0x080DB015
	str r0, [r4, #0x4C]
_080DAF9E:
	pop {r4}
	pop {r0}
	bx r0
_080DAFA4: .4byte sub_80DB014
	thumb_func_start sub_80DAFA8
sub_80DAFA8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xA0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xA0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DB010 @ =0x080DB081
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DB010: .4byte sub_80DB080
	thumb_func_start sub_80DB014
sub_80DB014:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xA0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r2, #0x0F
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
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DB07C @ =0x080DB0FD
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DB07C: .4byte sub_80DB0FC
	thumb_func_start sub_80DB080
sub_80DB080:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080DB0F2
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8D
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xA0
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
	movs r0, #0xA0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DB0F8 @ =0x080DB12D
	str r0, [r4, #0x4C]
_080DB0F2:
	pop {r4, r5}
	pop {r0}
	bx r0
_080DB0F8: .4byte sub_80DB12C
	thumb_func_start sub_80DB0FC
sub_80DB0FC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DB120
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x18
	strh r1, [r0, #0x00]
	ldr r0, _080DB128 @ =0x080DABFD
	str r0, [r4, #0x4C]
_080DB120:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DB128: .4byte sub_80DABFC
	thumb_func_start sub_80DB12C
sub_80DB12C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DB16C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080DB174 @ =0x080DB1C5
	str r0, [r4, #0x58]
	ldr r0, _080DB178 @ =0x080DB1A5
	str r0, [r4, #0x5C]
	ldr r0, _080DB17C @ =0x080DB185
	str r0, [r4, #0x60]
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x10
	strh r0, [r1, #0x00]
	ldr r0, _080DB180 @ =0x080DAD01
	str r0, [r4, #0x4C]
_080DB16C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DB174: .4byte sub_80DB1C4
_080DB178: .4byte sub_80DB1A4
_080DB17C: .4byte sub_80DB184
_080DB180: .4byte sub_80DAD00
	thumb_func_start sub_80DB184
sub_80DB184:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_8087124
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80DB1A4
sub_80DB1A4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_8086C64
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80DB1C4
sub_80DB1C4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_810DD7C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80DB1E4
sub_80DB1E4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r3, r7, #0x0
	adds r3, #0x84
	ldr r0, [r7, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x06
	adds r0, r0, r1
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
	ldr r0, _080DB278 @ =0x080DB27D
	str r0, [r7, #0x4C]
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DB278: .4byte sub_80DB27C
	thumb_func_start sub_80DB27C
sub_80DB27C:
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
	bge _080DB298
	adds r0, #0xFF
_080DB298:
	asrs r0, r0, #0x08
	mov r3, r12
	strh r0, [r3, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xB0
	movs r5, #0x00
	ldsh r1, [r3, r5]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DB2B4
	adds r0, #0xFF
_080DB2B4:
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
	mov r0, r12
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x00
	ldsh r1, [r3, r0]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldr r0, [r4, #0x40]
	adds r1, r0, r1
	str r1, [r4, #0x18]
	movs r5, #0x00
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bgt _080DB324
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080DB324
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	adds r1, r4, #0x0
	adds r1, #0xA8
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, _080DB32C @ =0x080DB331
	str r0, [r4, #0x4C]
_080DB324:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DB32C: .4byte sub_80DB330
	thumb_func_start sub_80DB330
sub_80DB330:
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
	bge _080DB3F6
	subs r1, #0x04
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	blt _080DB35C
	ldr r0, _080DB358 @ =0x080DB7B5
	b _080DB3F4
	.byte 0x00, 0x00
_080DB358: .4byte sub_80DB7B4
_080DB35C:
	adds r0, r7, #0x0
	bl sub_807F4FC
	adds r3, r7, #0x0
	adds r3, #0x84
	ldr r0, [r7, #0x2C]
	ldr r2, [r0, #0x28]
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
	lsrs r4, r3, #0x1F
	adds r3, r3, r4
	asrs r3, r3, #0x01
	ldr r4, [r5, #0x00]
	ldr r5, [r7, #0x3C]
	subs r4, r4, r5
	lsrs r5, r4, #0x1F
	adds r4, r4, r5
	asrs r4, r4, #0x01
	str r4, [sp, #0x000]
	ldr r4, [r7, #0x40]
	subs r6, r6, r4
	lsrs r4, r6, #0x1F
	adds r6, r6, r4
	asrs r6, r6, #0x01
	str r6, [sp, #0x004]
	movs r4, #0x80
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
	ldr r0, _080DB400 @ =0x080DB405
_080DB3F4:
	str r0, [r7, #0x4C]
_080DB3F6:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DB400: .4byte sub_80DB404
	thumb_func_start sub_80DB404
sub_80DB404:
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
	bge _080DB420
	adds r0, #0xFF
_080DB420:
	asrs r0, r0, #0x08
	mov r3, r12
	strh r0, [r3, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xB0
	movs r5, #0x00
	ldsh r1, [r3, r5]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DB43C
	adds r0, #0xFF
_080DB43C:
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
	mov r0, r12
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x00
	ldsh r1, [r3, r0]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldr r0, [r4, #0x40]
	adds r1, r0, r1
	str r1, [r4, #0x18]
	movs r5, #0x00
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bgt _080DB49C
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080DB49C
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _080DB4A4 @ =0x080DB4A9
	str r0, [r4, #0x4C]
_080DB49C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DB4A4: .4byte sub_80DB4A8
	thumb_func_start sub_80DB4A8
sub_80DB4A8:
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
	bge _080DB53E
	adds r3, r7, #0x0
	adds r3, #0x84
	ldr r0, [r7, #0x2C]
	ldr r2, [r0, #0x28]
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
	subs r1, #0x20
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
	ldr r0, _080DB548 @ =0x080DB54D
	str r0, [r7, #0x4C]
_080DB53E:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DB548: .4byte sub_80DB54C
	thumb_func_start sub_80DB54C
sub_80DB54C:
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
	bge _080DB568
	adds r0, #0xFF
_080DB568:
	asrs r0, r0, #0x08
	mov r3, r12
	strh r0, [r3, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xB0
	movs r5, #0x00
	ldsh r1, [r3, r5]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DB584
	adds r0, #0xFF
_080DB584:
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
	mov r0, r12
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x00
	ldsh r1, [r3, r0]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldr r0, [r4, #0x40]
	adds r1, r0, r1
	str r1, [r4, #0x18]
	movs r5, #0x00
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bgt _080DB5E4
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080DB5E4
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x10
	strh r1, [r0, #0x00]
	ldr r0, _080DB5EC @ =0x080DB5F1
	str r0, [r4, #0x4C]
_080DB5E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DB5EC: .4byte sub_80DB5F0
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
