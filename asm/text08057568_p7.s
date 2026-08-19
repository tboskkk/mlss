	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start nullsub_6
nullsub_6: @ 081DCDF0
	bx lr
	.byte 0x00, 0x00
	thumb_func_start sub_81DCDF4
sub_81DCDF4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r0, r1, #0x0
	ldr r4, _081DCE1C @ =0x03001BD4
	movs r1, #0x00
	str r1, [r4, #0x00]
	bl sub_81DD23C
	adds r1, r0, #0x0
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _081DCE16
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _081DCE16
	str r0, [r5, #0x00]
_081DCE16:
	adds r0, r1, #0x0
	pop {r4, r5, pc}
	.byte 0x00, 0x00
_081DCE1C: .4byte 0x03001BD4
	thumb_func_start strcmp
strcmp:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	orrs r0, r3
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _081DCE66
	ldr r1, [r2, #0x00]
	ldr r0, [r3, #0x00]
	cmp r1, r0
	bne _081DCE66
	ldr r5, _081DCE4C @ =0xFEFEFEFF
	ldr r4, _081DCE50 @ =0x80808080
_081DCE3C:
	ldr r1, [r2, #0x00]
	adds r0, r1, r5
	bics r0, r1
	ands r0, r4
	cmp r0, #0x00
	beq _081DCE54
	movs r0, #0x00
	b _081DCE78
_081DCE4C: .4byte 0xFEFEFEFF
_081DCE50: .4byte 0x80808080
_081DCE54:
	adds r2, #0x04
	adds r3, #0x04
	ldr r1, [r2, #0x00]
	ldr r0, [r3, #0x00]
	cmp r1, r0
	beq _081DCE3C
	b _081DCE66
_081DCE62:
	adds r2, #0x01
	adds r3, #0x01
_081DCE66:
	ldrb r0, [r2, #0x00]
	cmp r0, #0x00
	beq _081DCE72
	ldrb r1, [r3, #0x00]
	cmp r0, r1
	beq _081DCE62
_081DCE72:
	ldrb r2, [r2, #0x00]
	ldrb r3, [r3, #0x00]
	subs r0, r2, r3
_081DCE78:
	pop {r4, r5, pc}
	.byte 0x00, 0x00
	thumb_func_start sub_81DCE7C
sub_81DCE7C:
	adds r3, r0, #0x0
	movs r1, #0x00
	ldr r2, _081DCE84 @ =0x03001A78
	b _081DCE90
_081DCE84: .4byte 0x03001A78
_081DCE88:
	adds r2, #0x08
	adds r1, #0x01
	cmp r1, #0x13
	bgt _081DCE96
_081DCE90:
	ldr r0, [r2, #0x00]
	cmp r0, r3
	bne _081DCE88
_081DCE96:
	adds r0, r1, #0x0
	bx lr
	.byte 0x00, 0x00
	thumb_func_start sub_81DCE9C
sub_81DCE9C:
	adds r2, r0, #0x0
	ldr r0, _081DCEB0 @ =0x08CDBD64
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x04]
	movs r3, #0x0E
	ldsh r0, [r0, r3]
	cmp r2, r0
	bne _081DCEB8
	ldr r0, _081DCEB4 @ =0x03001A6C
	b _081DCEDE
_081DCEB0: .4byte 0x08CDBD64
_081DCEB4: .4byte 0x03001A6C
_081DCEB8:
	ldr r0, [r1, #0x08]
	movs r3, #0x0E
	ldsh r0, [r0, r3]
	cmp r2, r0
	bne _081DCECC
	ldr r0, _081DCEC8 @ =0x03001A70
	b _081DCEDE
	.byte 0x00, 0x00
_081DCEC8: .4byte 0x03001A70
_081DCECC:
	ldr r0, [r1, #0x0C]
	movs r1, #0x0E
	ldsh r0, [r0, r1]
	cmp r2, r0
	beq _081DCEDC
	adds r0, r2, #0x0
	subs r0, #0x20
	b _081DCEE0
_081DCEDC:
	ldr r0, _081DCEE4 @ =0x03001A74
_081DCEDE:
	ldr r0, [r0, #0x00]
_081DCEE0:
	bx lr
	.byte 0x00, 0x00
_081DCEE4: .4byte 0x03001A74
	.byte 0x30, 0xB5, 0x83, 0xB0, 0x15, 0x4C, 0x00, 0x94, 0x03, 0x23, 0x02, 0x93, 0x00, 0x20, 0x01, 0x90
	.byte 0x01, 0x25, 0x28, 0x1C, 0x69, 0x46, 0xAB, 0xDF, 0x02, 0x1C, 0x11, 0x4D, 0x2A, 0x60, 0x00, 0x94
	.byte 0x02, 0x93, 0x04, 0x20, 0x01, 0x90, 0x0F, 0x4B, 0x01, 0x24, 0x20, 0x1C, 0x69, 0x46, 0xAB, 0xDF
	.byte 0x02, 0x1C, 0x0D, 0x48, 0x02, 0x60, 0x1A, 0x60, 0x0C, 0x4A, 0x11, 0x1C, 0x02, 0x3C, 0x10, 0x1C
	.byte 0x98, 0x30, 0x04, 0x60, 0x08, 0x38, 0x88, 0x42, 0xFB, 0xDA, 0x00, 0x20, 0x29, 0x68, 0x11, 0x60
	.byte 0x50, 0x60, 0x19, 0x68, 0x91, 0x60, 0xD0, 0x60, 0x03, 0xB0, 0x30, 0xBD, 0xE0, 0xDB, 0x21, 0x08
	.byte 0x6C, 0x1A, 0x00, 0x03, 0x70, 0x1A, 0x00, 0x03, 0x74, 0x1A, 0x00, 0x03, 0x78, 0x1A, 0x00, 0x03
	thumb_func_start sub_81DCF58
sub_81DCF58:
	push {r4, lr}
	movs r3, #0x13
	movs r4, #0x00
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	swi #171
	adds r2, r0, #0x0
	adds r0, r2, #0x0
	pop {r4, pc}
	.byte 0x00, 0x00
	thumb_func_start sub_81DCF6C
sub_81DCF6C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_81DD2E0
	adds r4, r0, #0x0
	bl sub_81DCF58
	str r0, [r4, #0x00]
	adds r0, r5, #0x0
	pop {r4, r5, pc}
	thumb_func_start sub_81DCF80
sub_81DCF80:
	push {lr}
	adds r1, r0, #0x0
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _081DCF90
	adds r0, r1, #0x0
	b _081DCF96
_081DCF90:
	adds r0, r1, #0x0
	bl sub_81DCF6C
_081DCF96:
	pop {pc}
	thumb_func_start sub_81DCF98
sub_81DCF98:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_81DCE9C
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r3, #0x06
	adds r0, r3, #0x0
	mov r1, sp
	swi #171
	adds r2, r0, #0x0
	adds r0, r2, #0x0
	add sp, #0x00C
	pop {r4, r5, pc}
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x17, 0x1C, 0xFF, 0xF7, 0x6A, 0xFF, 0xFF, 0xF7
	.byte 0x58, 0xFF, 0x06, 0x1C, 0x20, 0x1C, 0x29, 0x1C, 0x3A, 0x1C, 0xFF, 0xF7, 0xE0, 0xFF, 0x00, 0x28
	.byte 0x04, 0xDA, 0x01, 0x20, 0x40, 0x42, 0xFF, 0xF7, 0xC4, 0xFF, 0x0A, 0xE0, 0x3A, 0x1A, 0x14, 0x2E
	.byte 0x06, 0xD0, 0x04, 0x48, 0xF1, 0x00, 0x04, 0x30, 0x09, 0x18, 0x08, 0x68, 0x80, 0x18, 0x08, 0x60
	.byte 0x10, 0x1C, 0xF0, 0xBD, 0x00, 0x00, 0x78, 0x1A, 0x00, 0x03
	thumb_func_start sub_81DD004
sub_81DD004:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	mov r8, r0
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	bl sub_81DCE9C
	adds r7, r0, #0x0
	bl sub_81DCE7C
	adds r6, r0, #0x0
	cmp r4, #0x01
	bne _081DD03A
	cmp r6, #0x14
	bne _081DD02C
	movs r0, #0x01
	negs r0, r0
	b _081DD07C
_081DD02C:
	ldr r0, _081DD084 @ =0x03001A78
	lsls r1, r6, #0x03
	adds r0, #0x04
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r5, r5, r0
	movs r4, #0x00
_081DD03A:
	cmp r4, #0x02
	bne _081DD04C
	str r7, [sp, #0x000]
	movs r3, #0x0C
	adds r0, r3, #0x0
	mov r1, sp
	swi #171
	adds r2, r0, #0x0
	adds r5, r5, r2
_081DD04C:
	mov r0, r8
	bl sub_81DCE9C
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r3, #0x0A
	adds r0, r3, #0x0
	mov r1, sp
	swi #171
	adds r2, r0, #0x0
	cmp r6, #0x14
	beq _081DD072
	cmp r2, #0x00
	bne _081DD072
	ldr r0, _081DD084 @ =0x03001A78
	lsls r1, r6, #0x03
	adds r0, #0x04
	adds r1, r1, r0
	str r5, [r1, #0x00]
_081DD072:
	movs r0, #0x01
	negs r0, r0
	cmp r2, #0x00
	bne _081DD07C
	adds r0, r5, #0x0
_081DD07C:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
_081DD084: .4byte 0x03001A78
	.byte 0x00, 0xB5, 0xFF, 0xF7, 0xBB, 0xFF, 0xFF, 0xF7, 0x77, 0xFF, 0x00, 0xBD
	thumb_func_start sub_81DD094
sub_81DD094:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_81DCE9C
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r3, #0x05
	adds r0, r3, #0x0
	mov r1, sp
	swi #171
	adds r2, r0, #0x0
	adds r0, r2, #0x0
	add sp, #0x00C
	pop {r4, r5, pc}
	.byte 0x00, 0x00
	thumb_func_start sub_81DD0B8
sub_81DD0B8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	bl sub_81DCE9C
	bl sub_81DCE7C
	adds r7, r0, #0x0
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_81DD094
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _081DD0E0
	cmp r0, r6
	bne _081DD0E8
_081DD0E0:
	adds r0, r1, #0x0
	bl sub_81DCF6C
	b _081DD0FE
_081DD0E8:
	subs r2, r6, r0
	cmp r7, #0x14
	beq _081DD0FC
	ldr r0, _081DD100 @ =0x03001A78
	lsls r1, r7, #0x03
	adds r0, #0x04
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	str r0, [r1, #0x00]
_081DD0FC:
	adds r0, r2, #0x0
_081DD0FE:
	pop {r4, r5, r6, r7, pc}
_081DD100: .4byte 0x03001A78
	thumb_func_start sub_81DD104
sub_81DD104:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	movs r5, #0x00
	movs r6, #0x01
	negs r6, r6
	adds r0, r6, #0x0
	bl sub_81DCE7C
	mov r8, r0
	cmp r0, #0x14
	bne _081DD126
	adds r0, r6, #0x0
	b _081DD19A
_081DD126:
	movs r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _081DD130
	movs r5, #0x02
_081DD130:
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _081DD13E
	movs r0, #0x04
	orrs r5, r0
_081DD13E:
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r4
	cmp r0, #0x00
	beq _081DD14C
	movs r0, #0x04
	orrs r5, r0
_081DD14C:
	movs r1, #0x08
	ands r4, r1
	cmp r4, #0x00
	beq _081DD15C
	movs r0, #0x05
	negs r0, r0
	ands r5, r0
	orrs r5, r1
_081DD15C:
	str r7, [sp, #0x000]
	adds r0, r7, #0x0
	bl strlen
	str r0, [sp, #0x008]
	str r5, [sp, #0x004]
	movs r2, #0x01
	adds r0, r2, #0x0
	mov r1, sp
	swi #171
	adds r3, r0, #0x0
	cmp r3, #0x00
	blt _081DD194
	ldr r0, _081DD190 @ =0x03001A78
	mov r1, r8
	lsls r2, r1, #0x03
	adds r1, r2, r0
	str r3, [r1, #0x00]
	adds r0, #0x04
	adds r2, r2, r0
	movs r0, #0x00
	str r0, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x20
	b _081DD19A
	.byte 0x00, 0x00
_081DD190: .4byte 0x03001A78
_081DD194:
	adds r0, r3, #0x0
	bl sub_81DCF6C
_081DD19A:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.byte 0x00, 0x00, 0x0E, 0xB4, 0x00, 0xB5, 0x01, 0x99, 0xFF, 0xF7, 0xAB, 0xFF, 0xFF, 0xF7, 0xE7, 0xFE
	.byte 0x08, 0xBC, 0x03, 0xB0, 0x18, 0x47
	thumb_func_start sub_81DD1B8
sub_81DD1B8:
	push {lr}
	add sp, #-0x004
	bl sub_81DCE9C
	str r0, [sp, #0x000]
	bl sub_81DCE7C
	adds r1, r0, #0x0
	cmp r1, #0x14
	beq _081DD1D8
	ldr r0, _081DD1E8 @ =0x03001A78
	lsls r1, r1, #0x03
	adds r1, r1, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [r1, #0x00]
_081DD1D8:
	movs r3, #0x02
	adds r0, r3, #0x0
	mov r1, sp
	swi #171
	adds r2, r0, #0x0
	adds r0, r2, #0x0
	add sp, #0x004
	pop {pc}
_081DD1E8: .4byte 0x03001A78
	.byte 0x00, 0xB5, 0xFF, 0xF7, 0xE3, 0xFF, 0xFF, 0xF7, 0xC5, 0xFE, 0x00, 0xBD, 0x9C, 0x46, 0x43, 0x46
	.byte 0x08, 0xB4, 0x63, 0x46, 0x18, 0x22, 0x04, 0x4B, 0x10, 0x1C, 0x19, 0x1C, 0xAB, 0xDF, 0x80, 0x46
	.byte 0x08, 0xBC, 0x98, 0x46, 0x70, 0x47, 0x00, 0x00, 0x26, 0x00, 0x02, 0x00, 0x9C, 0x46, 0x43, 0x46
	.byte 0x08, 0xB4, 0x63, 0x46, 0x18, 0x22, 0x04, 0x4B, 0x10, 0x1C, 0x19, 0x1C, 0xAB, 0xDF, 0x80, 0x46
	.byte 0x08, 0xBC, 0x98, 0x46, 0x70, 0x47, 0x00, 0x00, 0x26, 0x00, 0x02, 0x00, 0x01, 0x20, 0x70, 0x47
	thumb_func_start sub_81DD23C
sub_81DD23C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r4, _081DD26C @ =0x03001A68
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _081DD24C
	ldr r0, _081DD270 @ =0x03001BD8
	str r0, [r4, #0x00]
_081DD24C:
	ldr r5, [r4, #0x00]
	adds r0, r5, r6
	cmp r0, sp
	bls _081DD262
	ldr r1, _081DD274 @ =0x0821DBE4
	movs r0, #0x01
	movs r2, #0x20
	bl sub_81DD0B8
	bl abort
_081DD262:
	ldr r0, [r4, #0x00]
	adds r0, r0, r6
	str r0, [r4, #0x00]
	adds r0, r5, #0x0
	pop {r4, r5, r6, pc}
_081DD26C: .4byte 0x03001A68
_081DD270: .4byte 0x03001BD8
_081DD274: .4byte 0x0821DBE4
	.byte 0x80, 0x20, 0x80, 0x01, 0x48, 0x60, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00, 0x01, 0x20, 0x40, 0x42
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x02, 0x1C, 0x0B, 0x1C, 0x00, 0x2A
	.byte 0x09, 0xD0, 0x11, 0x24, 0x00, 0x25, 0x20, 0x1C, 0x29, 0x1C, 0xAB, 0xDF, 0x05, 0x1C, 0x2C, 0x1C
	.byte 0x14, 0x60, 0x00, 0x20, 0x50, 0x60, 0x00, 0x2B, 0x02, 0xD0, 0x00, 0x20, 0x18, 0x60, 0x58, 0x60
	.byte 0x00, 0x20, 0x30, 0xBD, 0x30, 0xB5, 0x02, 0x1C, 0x10, 0x24, 0x00, 0x25, 0x20, 0x1C, 0x29, 0x1C
	.byte 0xAB, 0xDF, 0x03, 0x1C, 0x00, 0x2A, 0x04, 0xD0, 0x13, 0x60, 0x00, 0x20, 0x50, 0x60, 0x90, 0x60
	.byte 0xD0, 0x60, 0x18, 0x1C, 0x30, 0xBD, 0x00, 0x00
	thumb_func_start sub_81DD2E0
sub_81DD2E0:
	ldr r0, _081DD2E8 @ =0x08CDBD64
	ldr r0, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_081DD2E8: .4byte 0x08CDBD64
	thumb_func_start sub_81DD2EC
sub_81DD2EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	adds r4, r1, #0x0
	cmp r4, #0x00
	bne _081DD2FE
	b _081DD4A2
_081DD2FE:
	bl nullsub_5
	adds r5, r4, #0x0
	subs r5, #0x08
	ldr r1, [r5, #0x04]
	movs r6, #0x02
	negs r6, r6
	ands r6, r1
	adds r7, r5, r6
	ldr r4, [r7, #0x04]
	movs r0, #0x04
	negs r0, r0
	ands r4, r0
	ldr r0, _081DD360 @ =0x08CDB634
	mov r12, r0
	ldr r0, [r0, #0x08]
	cmp r7, r0
	bne _081DD36C
	adds r6, r6, r4
	movs r4, #0x01
	ands r1, r4
	cmp r1, #0x00
	bne _081DD33A
	ldr r0, [r5, #0x00]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r3, [r5, #0x0C]
	ldr r2, [r5, #0x08]
	str r3, [r2, #0x0C]
	str r2, [r3, #0x08]
_081DD33A:
	adds r0, r6, #0x0
	orrs r0, r4
	str r0, [r5, #0x04]
	mov r2, r12
	str r5, [r2, #0x08]
	ldr r0, _081DD364 @ =0x08CDBA3C
	ldr r0, [r0, #0x00]
	cmp r6, r0
	bcc _081DD356
	ldr r0, _081DD368 @ =0x08CDBA40
	ldr r1, [r0, #0x00]
	mov r0, r9
	bl sub_81DD4AC
_081DD356:
	mov r0, r9
	bl nullsub_6
	b _081DD4A2
	.byte 0x00, 0x00
_081DD360: .4byte 0x08CDB634
_081DD364: .4byte 0x08CDBA3C
_081DD368: .4byte 0x08CDBA40
_081DD36C:
	str r4, [r7, #0x04]
	movs r0, #0x00
	mov r8, r0
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	bne _081DD398
	ldr r0, [r5, #0x00]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r1, [r5, #0x08]
	mov r0, r12
	adds r0, #0x08
	cmp r1, r0
	bne _081DD390
	movs r2, #0x01
	mov r8, r2
	b _081DD398
_081DD390:
	ldr r3, [r5, #0x0C]
	adds r2, r1, #0x0
	str r3, [r2, #0x0C]
	str r2, [r3, #0x08]
_081DD398:
	adds r0, r7, r4
	ldr r0, [r0, #0x04]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _081DD3D0
	adds r6, r6, r4
	ldr r1, [r7, #0x08]
	mov r0, r8
	cmp r0, #0x00
	bne _081DD3C8
	ldr r0, _081DD3C4 @ =0x08CDB63C
	cmp r1, r0
	bne _081DD3C8
	movs r2, #0x01
	mov r8, r2
	str r5, [r1, #0x0C]
	str r5, [r1, #0x08]
	str r1, [r5, #0x0C]
	str r1, [r5, #0x08]
	b _081DD3D0
	.byte 0x00, 0x00
_081DD3C4: .4byte 0x08CDB63C
_081DD3C8:
	ldr r3, [r7, #0x0C]
	adds r2, r1, #0x0
	str r3, [r2, #0x0C]
	str r2, [r3, #0x08]
_081DD3D0:
	movs r1, #0x01
	adds r0, r6, #0x0
	orrs r0, r1
	str r0, [r5, #0x04]
	adds r0, r5, r6
	str r6, [r0, #0x00]
	mov r0, r8
	cmp r0, #0x00
	bne _081DD49C
	ldr r0, _081DD400 @ =0x000001FF
	cmp r6, r0
	bhi _081DD408
	lsrs r4, r6, #0x03
	ldr r2, _081DD404 @ =0x08CDB634
	adds r0, r4, #0x0
	asrs r0, r0, #0x02
	lsls r1, r0
	ldr r0, [r2, #0x04]
	orrs r0, r1
	str r0, [r2, #0x04]
	lsls r0, r4, #0x03
	adds r3, r0, r2
	ldr r2, [r3, #0x08]
	b _081DD494
_081DD400: .4byte 0x000001FF
_081DD404: .4byte 0x08CDB634
_081DD408:
	lsrs r1, r6, #0x09
	cmp r1, #0x00
	bne _081DD412
	lsrs r4, r6, #0x03
	b _081DD45A
_081DD412:
	cmp r1, #0x04
	bhi _081DD41E
	lsrs r0, r6, #0x06
	adds r4, r0, #0x0
	adds r4, #0x38
	b _081DD45A
_081DD41E:
	cmp r1, #0x14
	bhi _081DD428
	adds r4, r1, #0x0
	adds r4, #0x5B
	b _081DD45A
_081DD428:
	cmp r1, #0x54
	bhi _081DD434
	lsrs r0, r6, #0x0C
	adds r4, r0, #0x0
	adds r4, #0x6E
	b _081DD45A
_081DD434:
	movs r0, #0xAA
	lsls r0, r0, #0x01
	cmp r1, r0
	bhi _081DD444
	lsrs r0, r6, #0x0F
	adds r4, r0, #0x0
	adds r4, #0x77
	b _081DD45A
_081DD444:
	ldr r0, _081DD454 @ =0x00000554
	cmp r1, r0
	bhi _081DD458
	lsrs r0, r6, #0x12
	adds r4, r0, #0x0
	adds r4, #0x7C
	b _081DD45A
	.byte 0x00, 0x00
_081DD454: .4byte 0x00000554
_081DD458:
	movs r4, #0x7E
_081DD45A:
	lsls r0, r4, #0x03
	ldr r7, _081DD478 @ =0x08CDB634
	adds r3, r0, r7
	ldr r2, [r3, #0x08]
	cmp r2, r3
	bne _081DD47C
	adds r0, r4, #0x0
	asrs r0, r0, #0x02
	movs r1, #0x01
	lsls r1, r0
	ldr r0, [r7, #0x04]
	orrs r0, r1
	str r0, [r7, #0x04]
	b _081DD494
	.byte 0x00, 0x00
_081DD478: .4byte 0x08CDB634
_081DD47C:
	ldr r0, [r2, #0x04]
	movs r1, #0x04
	negs r1, r1
	b _081DD48C
_081DD484:
	ldr r2, [r2, #0x08]
	cmp r2, r3
	beq _081DD492
	ldr r0, [r2, #0x04]
_081DD48C:
	ands r0, r1
	cmp r6, r0
	bcc _081DD484
_081DD492:
	ldr r3, [r2, #0x0C]
_081DD494:
	str r3, [r5, #0x0C]
	str r2, [r5, #0x08]
	str r5, [r3, #0x08]
	str r5, [r2, #0x0C]
_081DD49C:
	mov r0, r9
	bl nullsub_6
_081DD4A2:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7, pc}
	.byte 0x00, 0x00
	thumb_func_start sub_81DD4AC
sub_81DD4AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	bl nullsub_5
	ldr r0, _081DD534 @ =0x08CDB634
	mov r8, r0
	ldr r0, [r0, #0x08]
	ldr r6, [r0, #0x04]
	movs r0, #0x04
	negs r0, r0
	ands r6, r0
	subs r4, r6, r4
	movs r5, #0x80
	lsls r5, r5, #0x05
	ldr r1, _081DD538 @ =0x00000FEF
	adds r4, r4, r1
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl __udivsi3
	subs r0, #0x01
	lsls r4, r0, #0x0C
	cmp r4, r5
	blt _081DD52A
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_81DCDF4
	adds r2, r0, #0x0
	mov r1, r8
	ldr r0, [r1, #0x08]
	adds r0, r0, r6
	cmp r2, r0
	bne _081DD52A
	negs r1, r4
	adds r0, r7, #0x0
	bl sub_81DCDF4
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _081DD544
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_81DCDF4
	adds r2, r0, #0x0
	mov r0, r8
	ldr r3, [r0, #0x08]
	subs r6, r2, r3
	cmp r6, #0x0F
	ble _081DD52A
	ldr r1, _081DD53C @ =0x08CDBA50
	ldr r0, _081DD540 @ =0x08CDBA44
	ldr r0, [r0, #0x00]
	subs r0, r2, r0
	str r0, [r1, #0x00]
	movs r0, #0x01
	orrs r6, r0
	str r6, [r3, #0x04]
_081DD52A:
	adds r0, r7, #0x0
	bl nullsub_6
	movs r0, #0x00
	b _081DD560
_081DD534: .4byte 0x08CDB634
_081DD538: .4byte 0x00000FEF
_081DD53C: .4byte 0x08CDBA50
_081DD540: .4byte 0x08CDBA44
_081DD544:
	mov r1, r8
	ldr r2, [r1, #0x08]
	subs r0, r6, r4
	movs r1, #0x01
	orrs r0, r1
	str r0, [r2, #0x04]
	ldr r1, _081DD568 @ =0x08CDBA50
	ldr r0, [r1, #0x00]
	subs r0, r0, r4
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	bl nullsub_6
	movs r0, #0x01
_081DD560:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.byte 0x00, 0x00
_081DD568: .4byte 0x08CDBA50
	thumb_func_start strlen
strlen:
	push {r4, r5, lr}
	adds r1, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _081DD5A4
	adds r2, r1, #0x0
	ldr r1, [r2, #0x00]
	ldr r4, _081DD588 @ =0xFEFEFEFF
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _081DD58C @ =0x80808080
	b _081DD598
_081DD588: .4byte 0xFEFEFEFF
_081DD58C: .4byte 0x80808080
_081DD590:
	adds r2, #0x04
	ldr r1, [r2, #0x00]
	adds r0, r1, r4
	bics r0, r1
_081DD598:
	ands r0, r3
	cmp r0, #0x00
	beq _081DD590
	adds r1, r2, #0x0
	b _081DD5A4
_081DD5A2:
	adds r1, #0x01
_081DD5A4:
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _081DD5A2
	subs r0, r1, r5
	pop {r4, r5, pc}
	.byte 0x00, 0x00
	thumb_func_start sub_81DD5B0
sub_81DD5B0:
	push {lr}
	adds r3, r0, #0x0
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, _081DD5D0 @ =0x08CDBDE8
	str r0, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081DD5CC
	adds r0, r3, #0x0
	bl free_heap_8018DA8
_081DD5CC:
	pop {r0}
	bx r0
_081DD5D0: .4byte 0x08CDBDE8
	thumb_func_start sub_81DD5D4
sub_81DD5D4:
	push {lr}
	adds r3, r0, #0x0
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, _081DD5F4 @ =0x08CDBDE8
	str r0, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081DD5F0
	adds r0, r3, #0x0
	bl free_heap_8018DA8
_081DD5F0:
	pop {r0}
	bx r0
_081DD5F4: .4byte 0x08CDBDE8
	thumb_func_start sub_81DD5F8
sub_81DD5F8:
	push {lr}
	adds r3, r0, #0x0
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, _081DD618 @ =0x08CDBDE8
	str r0, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081DD614
	adds r0, r3, #0x0
	bl free_heap_8018DA8
_081DD614:
	pop {r0}
	bx r0
_081DD618: .4byte 0x08CDBDE8
	thumb_func_start sub_81DD61C
sub_81DD61C:
	push {lr}
	adds r3, r0, #0x0
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, _081DD63C @ =0x08CDBDE8
	str r0, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081DD638
	adds r0, r3, #0x0
	bl free_heap_8018DA8
_081DD638:
	pop {r0}
	bx r0
_081DD63C: .4byte 0x08CDBDE8
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_81DD648
sub_81DD648:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _081DD664 @ =0x08CDCA30
	str r0, [r2, #0x04]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081DD65E
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_081DD65E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081DD664: .4byte 0x08CDCA30
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_81DD670
sub_81DD670:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _081DD68C @ =0x08CDCF50
	str r0, [r2, #0x04]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081DD686
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_081DD686:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081DD68C: .4byte 0x08CDCF50
	thumb_func_start sub_81DD690
sub_81DD690:
	push {lr}
	bl sub_8161330
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81DD69C
sub_81DD69C:
	ldr r1, _081DD6AC @ =0x08CDD0D0
	str r1, [r0, #0x0C]
	movs r1, #0x00
	str r1, [r0, #0x04]
	str r1, [r0, #0x00]
	str r1, [r0, #0x08]
	bx lr
	.byte 0x00, 0x00
_081DD6AC: .4byte 0x08CDD0D0
	thumb_func_start sub_81DD6B0
sub_81DD6B0:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	ldr r2, _081DD6E8 @ =0x08212804
	movs r0, #0x0C
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	adds r0, #0x08
	bl sub_816168C
	ldr r0, [r4, #0x08]
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x04]
	cmp r0, #0x00
	bne _081DD6EC
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bne _081DD6EC
	str r4, [r5, #0x04]
	str r4, [r5, #0x00]
	str r0, [r4, #0x00]
	str r4, [r4, #0x04]
	b _081DD6FA
	.byte 0x00, 0x00
_081DD6E8: .4byte 0x08212804
_081DD6EC:
	ldr r0, [r5, #0x04]
	str r4, [r0, #0x04]
	ldr r0, [r5, #0x04]
	str r0, [r4, #0x00]
	movs r0, #0x00
	str r0, [r4, #0x04]
	str r4, [r5, #0x04]
_081DD6FA:
	ldr r0, [r5, #0x08]
	adds r0, #0x01
	str r0, [r5, #0x08]
	adds r0, r6, #0x0
	movs r1, #0x02
	bl sub_816166C
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_81DD710
sub_81DD710:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, _081DD764 @ =0x08CDD0D0
	str r0, [r5, #0x0C]
	ldr r4, [r5, #0x00]
	cmp r4, #0x00
	beq _081DD748
_081DD720:
	ldr r2, [r4, #0x08]
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r3, #0x08
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x0C]
	movs r1, #0x02
	bl _call_via_r2
	cmp r4, #0x00
	beq _081DD742
	ldr r0, _081DD768 @ =0x08CDD0B8
	str r0, [r4, #0x08]
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_081DD742:
	ldr r4, [r4, #0x04]
	cmp r4, #0x00
	bne _081DD720
_081DD748:
	movs r0, #0x00
	str r0, [r5, #0x04]
	str r0, [r5, #0x00]
	str r0, [r5, #0x08]
	movs r0, #0x01
	ands r0, r6
	cmp r0, #0x00
	beq _081DD75E
	adds r0, r5, #0x0
	bl free_heap_8018DA8
_081DD75E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081DD764: .4byte 0x08CDD0D0
_081DD768: .4byte 0x08CDD0B8
	thumb_func_start sub_81DD76C
sub_81DD76C:
	bx pc
	.byte 0xC0, 0x46, 0x22, 0xCA, 0x35, 0xEA
	thumb_func_start sub_81DD774
sub_81DD774:
	bx pc
	.byte 0xC0, 0x46, 0xE2, 0x8B, 0xF8, 0xEA
	thumb_func_start sub_81DD77C
sub_81DD77C:
	bx pc
	.byte 0xC0, 0x46, 0x25, 0xEF, 0xFE, 0xEA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00
	