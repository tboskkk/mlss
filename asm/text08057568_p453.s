	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80C1BB8
sub_80C1BB8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080C1C40 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080C1C44 @ =0x03001038
	ldr r2, _080C1C48 @ =0x0819832C
	ldr r3, _080C1C4C @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080C1C06
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080C1C08
_080C1C06:
	movs r1, #0x00
_080C1C08:
	cmp r1, #0x00
	beq _080C1C6C
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1C1E
	cmp r1, #0x04
	bne _080C1C6C
_080C1C1E:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C1C50
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080C1C5C
	.byte 0x00, 0x00
_080C1C40: .4byte 0x03000FD8
_080C1C44: .4byte 0x03001038
_080C1C48: .4byte 0x0819832C
_080C1C4C: .4byte 0x08198220
_080C1C50:
	ldr r2, _080C1CDC @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080C1C5C:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C1C6C:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C1CD4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1C8C
	cmp r1, #0x04
	bne _080C1CAA
_080C1C8C:
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C1CAA:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080C1CB2
	adds r1, #0xFF
_080C1CB2:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080C1CBC
	adds r2, #0xFF
_080C1CBC:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080C1CC6
	adds r3, #0xFF
_080C1CC6:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0x33
	bl sub_80DF024
	ldr r0, _080C1CE0 @ =0x080C87A5
	str r0, [r7, #0x4C]
_080C1CD4:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C1CDC: .4byte 0x0000204D
_080C1CE0: .4byte sub_80C87A4
	thumb_func_start sub_80C1CE4
sub_80C1CE4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080C1D8C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080C1D06
	b _080C1EC8
_080C1D06:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1D18
	cmp r1, #0x04
	bne _080C1D5A
_080C1D18:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C1D26
	adds r0, #0xFF
_080C1D26:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C1D34
	adds r0, #0xFF
_080C1D34:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C1D42
	adds r0, #0xFF
_080C1D42:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080C1D5A:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080C1D6E
	cmp r2, #0x04
	bne _080C1DD0
_080C1D6E:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C1D94
	ldr r2, _080C1D90 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C1DA0
_080C1D8C: .4byte 0x03000FD8
_080C1D90: .4byte 0x00002002
_080C1D94:
	ldr r2, _080C1E6C @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C1DA0:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C1DB6
	movs r2, #0x01
_080C1DB6:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C1DD0:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C1DDE
	cmp r2, #0x04
	bne _080C1DE8
_080C1DDE:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080C1DE8:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C1DFC
	cmp r2, #0x04
	bne _080C1E3E
_080C1DFC:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C1E0A
	adds r0, #0xFF
_080C1E0A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C1E18
	adds r0, #0xFF
_080C1E18:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C1E26
	adds r0, #0xFF
_080C1E26:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C1E3E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1E4C
	cmp r1, #0x04
	bne _080C1EB0
_080C1E4C:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C1E74
	ldr r2, _080C1E70 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C1E80
	.byte 0x00, 0x00
_080C1E6C: .4byte 0x0000204F
_080C1E70: .4byte 0x00002002
_080C1E74:
	ldr r2, _080C1ED0 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C1E80:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C1E96
	movs r2, #0x01
_080C1E96:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C1EB0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C1EBE
	cmp r2, #0x04
	bne _080C1EC8
_080C1EBE:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080C1EC8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C1ED0: .4byte 0x0000204F
	thumb_func_start sub_80C1ED4
sub_80C1ED4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080C1F5C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1EF2
	cmp r1, #0x04
	bne _080C1F0E
_080C1EF2:
	ldr r2, _080C1F60 @ =0x00002063
	adds r0, r4, #0x0
	movs r1, #0x02
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
_080C1F0E:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1F20
	cmp r1, #0x04
	bne _080C1F50
_080C1F20:
	ldr r2, _080C1F64 @ =0x03001038
	ldr r0, _080C1F68 @ =0x0819832C
	ldr r1, _080C1F6C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x02
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C1F50:
	ldr r0, _080C1F70 @ =0x080C1F75
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C1F5C: .4byte 0x03000FD8
_080C1F60: .4byte 0x00002063
_080C1F64: .4byte 0x03001038
_080C1F68: .4byte 0x0819832C
_080C1F6C: .4byte 0x08198220
_080C1F70: .4byte sub_80C1F74
	thumb_func_start sub_80C1F74
sub_80C1F74:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080C1FFC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C1FF4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1FB4
	cmp r1, #0x04
	bne _080C1FE4
_080C1FB4:
	ldr r2, _080C2000 @ =0x03001038
	ldr r0, _080C2004 @ =0x0819832C
	ldr r1, _080C2008 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x18
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C1FE4:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C200C @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C2010 @ =0x080C2015
	str r0, [r7, #0x4C]
_080C1FF4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C1FFC: .4byte 0x03000FD8
_080C2000: .4byte 0x03001038
_080C2004: .4byte 0x0819832C
_080C2008: .4byte 0x08198220
_080C200C: .4byte 0x00000FFF
_080C2010: .4byte sub_80C2014
	thumb_func_start sub_80C2014
sub_80C2014:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r7, _080C2138 @ =0x03000FD8
	ldr r0, [r7, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	mov r0, r10
	ldr r0, [r0, #0x2C]
	mov r8, r0
	adds r0, r5, #0x0
	bl sub_80884AC
	ldr r1, [r5, #0x08]
	mov r9, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r1, [r3, r2]
	cmp r1, #0x00
	bge _080C2050
	adds r1, #0x3F
_080C2050:
	asrs r1, r1, #0x06
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	subs r0, r0, r1
	mov r1, r9
	strh r0, [r1, #0x06]
	ldr r0, [r7, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r2, #0xC0
	mov r12, r2
	mov r0, r12
	ands r0, r1
	cmp r0, #0x00
	bne _080C2070
	b _080C2650
_080C2070:
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080C208A
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C208A:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080C209A
	b _080C25DE
_080C209A:
	ldr r0, [r7, #0x00]
	ldrb r1, [r0, #0x0A]
	mov r0, r12
	ands r0, r1
	adds r7, r3, #0x0
	cmp r0, #0x00
	beq _080C21A0
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r2
	bgt _080C20C0
	movs r4, #0x00
	ldsh r0, [r7, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080C20C2
_080C20C0:
	movs r1, #0x00
_080C20C2:
	adds r7, r5, #0x0
	adds r7, #0x7E
	movs r0, #0xAE
	adds r0, r0, r5
	mov r9, r0
	cmp r1, #0x00
	beq _080C21A0
	ldr r2, _080C2138 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C213C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C20F4
	movs r1, #0x33
_080C20E8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C20E8
_080C20F4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2108
	movs r1, #0x33
_080C20FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C20FC
_080C2108:
	mov r2, r8
	cmp r2, #0x00
	beq _080C211C
	movs r1, #0x33
_080C2110:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2110
_080C211C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2198
	movs r1, #0x03
_080C2126:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2130
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2130:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2126
	b _080C2198
_080C2138: .4byte 0x03000FD8
_080C213C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2152
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2146:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2146
_080C2152:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2168
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C215C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C215C
_080C2168:
	mov r2, r8
	cmp r2, #0x00
	beq _080C217E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2172:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2172
_080C217E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2198
	movs r1, #0x10
_080C2188:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2192
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2192:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2188
_080C2198:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C21A0:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C21B0
	adds r1, r0, #0x0
_080C21B0:
	ldr r0, _080C21FC @ =0x00007FFF
	cmp r2, r0
	ble _080C21B8
	adds r2, r0, #0x0
_080C21B8:
	cmp r2, r1
	bge _080C21BE
	adds r1, r2, #0x0
_080C21BE:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	cmp r0, r1
	blt _080C21D4
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C21D6
_080C21D4:
	movs r1, #0x00
_080C21D6:
	cmp r1, #0x00
	bne _080C21DC
	b _080C234E
_080C21DC:
	ldr r0, _080C2200 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0A]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x80
	bne _080C2204
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	b _080C221A
_080C21FC: .4byte 0x00007FFF
_080C2200: .4byte 0x03000FD8
_080C2204:
	cmp r1, #0x40
	bne _080C221A
	movs r1, #0xFF
	lsls r1, r1, #0x18
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
_080C221A:
	ldr r0, _080C22D0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C2228
	b _080C234E
_080C2228:
	movs r0, #0x07
	adds r1, r5, #0x0
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C22D4 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C233A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C22D8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C2288
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C227C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C227C
_080C2288:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C229E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2292:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2292
_080C229E:
	mov r2, r8
	cmp r2, #0x00
	beq _080C22B4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C22A8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C22A8
_080C22B4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2336
	movs r1, #0x10
_080C22BE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C22C8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C22C8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C22BE
	b _080C2336
_080C22D0: .4byte 0x0300034C
_080C22D4: .4byte 0x03000FD8
_080C22D8:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C22F0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C22E4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C22E4
_080C22F0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2306
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C22FA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C22FA
_080C2306:
	mov r2, r8
	cmp r2, #0x00
	beq _080C231C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2310:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2310
_080C231C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2336
	movs r1, #0x10
_080C2326:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2330
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2330:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2326
_080C2336:
	bl sub_807F448
_080C233A:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	ldr r1, _080C241C @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r9
	strh r1, [r3, #0x00]
_080C234E:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C235A
	b _080C25DE
_080C235A:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080C2420 @ =0x00007FFF
	cmp r1, r0
	ble _080C2366
	adds r1, r0, #0x0
_080C2366:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C237C
	movs r3, #0x00
	ldsh r0, [r7, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080C237E
_080C237C:
	movs r2, #0x00
_080C237E:
	cmp r2, #0x00
	bne _080C2384
	b _080C2490
_080C2384:
	ldr r3, _080C2424 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r4, r9
	ldrh r1, [r4, #0x00]
	ldr r0, _080C241C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C2428
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C23D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C23C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C23C6
_080C23D2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C23E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C23DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C23DC
_080C23E8:
	mov r2, r8
	cmp r2, #0x00
	beq _080C23FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C23F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C23F2
_080C23FE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2484
	movs r1, #0x10
_080C2408:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2412
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2412:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2408
	b _080C2484
	.byte 0x00, 0x00
_080C241C: .4byte 0x00000FFF
_080C2420: .4byte 0x00007FFF
_080C2424: .4byte 0x03000FD8
_080C2428:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C243E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2432:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2432
_080C243E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2454
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2448:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2448
_080C2454:
	mov r2, r8
	cmp r2, #0x00
	beq _080C246A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C245E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C245E
_080C246A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2484
	movs r1, #0x10
_080C2474:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C247E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C247E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2474
_080C2484:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C25DE
_080C2490:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	movs r4, #0x80
	lsls r4, r4, #0x07
	cmp r0, r4
	ble _080C249E
	b _080C25DE
_080C249E:
	ldr r0, _080C2560 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C24B4
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C24B4
	b _080C25DE
_080C24B4:
	ldr r2, _080C2564 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080C25DE
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080C2568 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C256C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2516
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C250A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C250A
_080C2516:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C252C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2520:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2520
_080C252C:
	mov r2, r8
	cmp r2, #0x00
	beq _080C2542
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2536:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2536
_080C2542:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C25C8
	movs r1, #0x10
_080C254C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2556
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2556:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C254C
	b _080C25C8
	.byte 0x00, 0x00
_080C2560: .4byte 0x0300034C
_080C2564: .4byte 0x03000FD8
_080C2568: .4byte 0x00000FFF
_080C256C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2582
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2576:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2576
_080C2582:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2598
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C258C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C258C
_080C2598:
	mov r2, r8
	cmp r2, #0x00
	beq _080C25AE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C25A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C25A2
_080C25AE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C25C8
	movs r1, #0x10
_080C25B8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C25C2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C25C2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C25B8
_080C25C8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807EAE4
_080C25DE:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C2650
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C25F8
	adds r1, r0, #0x0
_080C25F8:
	ldr r0, _080C2644 @ =0x00007FFF
	cmp r2, r0
	ble _080C2600
	adds r2, r0, #0x0
_080C2600:
	cmp r2, r1
	bge _080C2606
	adds r1, r2, #0x0
_080C2606:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080C2620
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C2622
_080C2620:
	movs r1, #0x00
_080C2622:
	cmp r1, #0x00
	beq _080C2650
	cmp r3, #0x01
	ble _080C2650
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080C2648 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080C264C @ =0x080C3315
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080C26C8
	.byte 0x00, 0x00
_080C2644: .4byte 0x00007FFF
_080C2648: .4byte 0x00000FFF
_080C264C: .4byte sub_80C3314
_080C2650:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C26C8
	ldr r0, [r5, #0x08]
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x06]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C2678
	cmp r1, #0x04
	bne _080C2694
_080C2678:
	ldr r2, _080C26D8 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x02
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
_080C2694:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C26A6
	cmp r1, #0x04
	bne _080C26C2
_080C26A6:
	ldr r2, _080C26DC @ =0x00002063
	adds r0, r6, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C26C2:
	ldr r0, _080C26E0 @ =0x080C8745
	mov r4, r10
	str r0, [r4, #0x4C]
_080C26C8:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C26D8: .4byte 0x00002034
_080C26DC: .4byte 0x00002063
_080C26E0: .4byte sub_80C8744
	thumb_func_start sub_80C26E4
sub_80C26E4:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080C2794 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C278E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C2720
	cmp r1, #0x04
	bne _080C273C
_080C2720:
	ldr r2, _080C2798 @ =0x00002063
	adds r0, r4, #0x0
	movs r1, #0x0B
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
_080C273C:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C274E
	cmp r1, #0x04
	bne _080C277E
_080C274E:
	ldr r2, _080C279C @ =0x03001038
	ldr r0, _080C27A0 @ =0x0819832C
	ldr r1, _080C27A4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0A
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C277E:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C27A8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C27AC @ =0x080C27B1
	str r0, [r7, #0x4C]
_080C278E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C2794: .4byte 0x03000FD8
_080C2798: .4byte 0x00002063
_080C279C: .4byte 0x03001038
_080C27A0: .4byte 0x0819832C
_080C27A4: .4byte 0x08198220
_080C27A8: .4byte 0x00000FFF
_080C27AC: .4byte sub_80C27B0
	thumb_func_start sub_80C27B0
sub_80C27B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C28C8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x03
	mov r2, r9
	subs r2, r2, r0
	str r2, [sp, #0x008]
	lsls r1, r1, #0x01
	add r9, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080C2818
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C2818:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C2828
	b _080C2D5C
_080C2828:
	mov r1, r12
	cmp r1, #0x00
	bge _080C2830
	movs r1, #0x00
_080C2830:
	ldr r0, _080C28CC @ =0x00007FFF
	cmp r1, r0
	ble _080C2838
	adds r1, r0, #0x0
_080C2838:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C284E
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C2850
_080C284E:
	movs r2, #0x00
_080C2850:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C2934
	ldr r2, _080C28C8 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C28D0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2884
	movs r1, #0x33
_080C2878:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2878
_080C2884:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2898
	movs r1, #0x33
_080C288C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C288C
_080C2898:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C28AC
	movs r1, #0x33
_080C28A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C28A0
_080C28AC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C292C
	movs r1, #0x03
_080C28B6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C28C0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C28C0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C28B6
	b _080C292C
_080C28C8: .4byte 0x03000FD8
_080C28CC: .4byte 0x00007FFF
_080C28D0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C28E6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C28DA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C28DA
_080C28E6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C28FC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C28F0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C28F0
_080C28FC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2912
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2906:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2906
_080C2912:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C292C
	movs r1, #0x10
_080C291C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2926
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2926:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C291C
_080C292C:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C2934:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C293E
	movs r1, #0x00
_080C293E:
	mov r3, r9
	cmp r3, #0x00
	bge _080C2946
	movs r2, #0x00
_080C2946:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C2950
	adds r1, r0, #0x0
_080C2950:
	ldr r0, _080C2A48 @ =0x00007FFF
	cmp r2, r0
	ble _080C2958
	adds r2, r0, #0x0
_080C2958:
	cmp r2, r1
	bge _080C295E
	adds r1, r2, #0x0
_080C295E:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C2976
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C2978
_080C2976:
	movs r1, #0x00
_080C2978:
	cmp r1, #0x00
	bne _080C297E
	b _080C2ACA
_080C297E:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x14
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080C2A4C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080C299C
	b _080C2ACA
_080C299C:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x01
	adds r1, r7, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	adds r0, r7, #0x0
	bl sub_807EA24
	ldr r4, _080C2A50 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C2AB6
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C2A54
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C29FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C29F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C29F2
_080C29FE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2A14
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2A08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2A08
_080C2A14:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2A2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2A1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2A1E
_080C2A2A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2AB2
	movs r1, #0x10
_080C2A34:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2A3E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2A3E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2A34
	b _080C2AB2
	.byte 0x00, 0x00
_080C2A48: .4byte 0x00007FFF
_080C2A4C: .4byte 0x0300034C
_080C2A50: .4byte 0x03000FD8
_080C2A54:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C2A6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2A60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2A60
_080C2A6C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2A82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2A76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2A76
_080C2A82:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2A98
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2A8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2A8C
_080C2A98:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2AB2
	movs r1, #0x10
_080C2AA2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2AAC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2AAC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2AA2
_080C2AB2:
	bl sub_807F448
_080C2AB6:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C2BA0 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C2ACA:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C2AD6
	b _080C2D5C
_080C2AD6:
	mov r1, r9
	cmp r1, #0x00
	bge _080C2ADE
	movs r1, #0x00
_080C2ADE:
	ldr r0, _080C2BA4 @ =0x00007FFF
	cmp r1, r0
	ble _080C2AE6
	adds r1, r0, #0x0
_080C2AE6:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C2AFE
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C2B00
_080C2AFE:
	movs r2, #0x00
_080C2B00:
	cmp r2, #0x00
	bne _080C2B06
	b _080C2C14
_080C2B06:
	ldr r3, _080C2BA8 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C2BA0 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C2BAC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2B56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2B4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2B4A
_080C2B56:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2B6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2B60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2B60
_080C2B6C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2B82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2B76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2B76
_080C2B82:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2C08
	movs r1, #0x10
_080C2B8C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2B96
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2B96:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2B8C
	b _080C2C08
	.byte 0x00, 0x00
_080C2BA0: .4byte 0x00000FFF
_080C2BA4: .4byte 0x00007FFF
_080C2BA8: .4byte 0x03000FD8
_080C2BAC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2BC2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2BB6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2BB6
_080C2BC2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2BD8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2BCC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2BCC
_080C2BD8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2BEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2BE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2BE2
_080C2BEE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2C08
	movs r1, #0x10
_080C2BF8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2C02
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2C02:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2BF8
_080C2C08:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	b _080C2D5C
_080C2C14:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C2C20
	b _080C2D5C
_080C2C20:
	ldr r0, _080C2CDC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C2C2E
	b _080C2D5C
_080C2C2E:
	ldr r2, _080C2CE0 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C2C5E
	b _080C2D5C
_080C2C5E:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C2CE4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C2CE8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2C92
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2C86:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2C86
_080C2C92:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2CA8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2C9C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2C9C
_080C2CA8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2CBE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2CB2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2CB2
_080C2CBE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2D44
	movs r1, #0x10
_080C2CC8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2CD2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2CD2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2CC8
	b _080C2D44
	.byte 0x00, 0x00
_080C2CDC: .4byte 0x0300034C
_080C2CE0: .4byte 0x03000FD8
_080C2CE4: .4byte 0x00000FFF
_080C2CE8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2CFE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2CF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2CF2
_080C2CFE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2D14
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2D08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2D08
_080C2D14:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2D2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2D1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2D1E
_080C2D2A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2D44
	movs r1, #0x10
_080C2D34:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2D3E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2D3E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2D34
_080C2D44:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r7, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080C2D5C:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C2DD4
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C2D72
	movs r1, #0x00
_080C2D72:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C2D7C
	adds r2, r0, #0x0
_080C2D7C:
	ldr r0, _080C2DC8 @ =0x00007FFF
	cmp r1, r0
	ble _080C2D84
	adds r1, r0, #0x0
_080C2D84:
	cmp r1, r2
	bge _080C2D8A
	adds r2, r1, #0x0
_080C2D8A:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C2DA4
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C2DA6
_080C2DA4:
	movs r2, #0x00
_080C2DA6:
	cmp r2, #0x00
	beq _080C2DD4
	cmp r3, #0x01
	ble _080C2DD4
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C2DCC @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C2DD0 @ =0x080C3F71
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C2EF0
	.byte 0x00, 0x00
_080C2DC8: .4byte 0x00007FFF
_080C2DCC: .4byte 0x00000FFF
_080C2DD0: .4byte sub_80C3F70
_080C2DD4:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080C2DE4
	b _080C2EF0
_080C2DE4:
	movs r0, #0x01
	negs r0, r0
	mov r9, r0
	movs r0, #0x7D
	mov r1, r9
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	mov r10, r1
	cmp r2, #0x02
	beq _080C2E06
	cmp r2, #0x04
	bne _080C2EB8
_080C2E06:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080C2E0E
	adds r0, #0xFF
_080C2E0E:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r7, r0, #0x0
	subs r7, #0x0A
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080C2E28
	adds r0, #0xFF
_080C2E28:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r2, r0, #0x3
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080C2E40
	adds r3, #0xFF
_080C2E40:
	asrs r3, r3, #0x08
	adds r4, r6, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x15
	mov r1, r9
	str r1, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r6, #0x28]
	adds r0, #0x08
	cmp r6, r0
	bne _080C2E6A
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080C2E7A
_080C2E6A:
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r6, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080C2E7A:
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080C2E82
	adds r0, #0xFF
_080C2E82:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080C2F00 @ =0x03001038
	ldr r0, _080C2F04 @ =0x0819832C
	ldr r1, _080C2F08 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080C2E9C
	adds r1, #0x3F
_080C2E9C:
	asrs r1, r1, #0x06
	subs r1, #0x05
	movs r0, #0x19
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r5, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080C2EB8:
	mov r2, r10
	ldrb r0, [r2, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C2EC8
	cmp r2, #0x04
	bne _080C2EE0
_080C2EC8:
	ldr r2, _080C2F0C @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C2EE0:
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C2F10 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r0, _080C2F14 @ =0x080C86E5
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080C2EF0:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C2F00: .4byte 0x03001038
_080C2F04: .4byte 0x0819832C
_080C2F08: .4byte 0x08198220
_080C2F0C: .4byte 0x00002034
_080C2F10: .4byte 0x00000FFF
_080C2F14: .4byte sub_80C86E4
	thumb_func_start sub_80C2F18
sub_80C2F18:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080C3070 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080C2F40
	b _080C3066
_080C2F40:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r4, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080C3074 @ =0x0403018B
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080C2F94
	ldr r2, _080C3078 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080C2FCC
_080C2F94:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080C2F9C
	adds r0, #0xFF
_080C2F9C:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x4
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080C2FB4
	adds r2, #0xFF
_080C2FB4:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080C307C @ =0x000006E3
	str r5, [sp, #0x000]
	movs r3, #0x10
	bl sub_80DF024
_080C2FCC:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C2FE0
	cmp r2, #0x04
	bne _080C303C
_080C2FE0:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C2FEE
	adds r0, #0xFF
_080C2FEE:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x09
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3000
	adds r0, #0xFF
_080C3000:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3012
	adds r0, #0xFF
_080C3012:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080C3028
	adds r0, #0xFF
_080C3028:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r6, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080C303C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C304A
	cmp r2, #0x04
	bne _080C3062
_080C304A:
	ldr r2, _080C3080 @ =0x00002034
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C3062:
	ldr r0, _080C3084 @ =0x080C3089
	str r0, [r7, #0x4C]
_080C3066:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C3070: .4byte 0x03000FD8
_080C3074: .4byte 0x0403018B
_080C3078: .4byte 0x00000111
_080C307C: .4byte 0x000006E3
_080C3080: .4byte 0x00002034
_080C3084: .4byte sub_80C3088
	thumb_func_start sub_80C3088
sub_80C3088:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080C3118 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C310E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080C30BE
	adds r1, #0xFF
_080C30BE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080C30C8
	adds r2, #0xFF
_080C30C8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080C30D2
	adds r3, #0xFF
_080C30D2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C30EE
	cmp r1, #0x04
	bne _080C310A
_080C30EE:
	ldr r2, _080C311C @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x08
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
_080C310A:
	ldr r0, _080C3120 @ =0x080C3125
	str r0, [r6, #0x4C]
_080C310E:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C3118: .4byte 0x03000FD8
_080C311C: .4byte 0x00002034
_080C3120: .4byte sub_80C3124
	thumb_func_start sub_80C3124
sub_80C3124:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080C31CC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080C3146
	b _080C3308
_080C3146:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C3158
	cmp r1, #0x04
	bne _080C319A
_080C3158:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3166
	adds r0, #0xFF
_080C3166:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3174
	adds r0, #0xFF
_080C3174:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3182
	adds r0, #0xFF
_080C3182:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080C319A:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080C31AE
	cmp r2, #0x04
	bne _080C3210
_080C31AE:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C31D4
	ldr r2, _080C31D0 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C31E0
_080C31CC: .4byte 0x03000FD8
_080C31D0: .4byte 0x00002002
_080C31D4:
	ldr r2, _080C32AC @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C31E0:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C31F6
	movs r2, #0x01
_080C31F6:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C3210:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C321E
	cmp r2, #0x04
	bne _080C3228
_080C321E:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080C3228:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C323C
	cmp r2, #0x04
	bne _080C327E
_080C323C:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C324A
	adds r0, #0xFF
_080C324A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3258
	adds r0, #0xFF
_080C3258:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3266
	adds r0, #0xFF
_080C3266:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C327E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C328C
	cmp r1, #0x04
	bne _080C32F0
_080C328C:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C32B4
	ldr r2, _080C32B0 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C32C0
	.byte 0x00, 0x00
_080C32AC: .4byte 0x0000204F
_080C32B0: .4byte 0x00002002
_080C32B4:
	ldr r2, _080C3310 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C32C0:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C32D6
	movs r2, #0x01
_080C32D6:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C32F0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C32FE
	cmp r2, #0x04
	bne _080C3308
_080C32FE:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080C3308:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C3310: .4byte 0x0000204F
