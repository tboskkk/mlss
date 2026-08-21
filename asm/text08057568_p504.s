	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8085A6C
sub_8085A6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	adds r7, r4, #0x0
	adds r7, #0x80
	ldr r6, [r7, #0x00]
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	subs r3, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x14]
	subs r1, r1, r0
	mov r8, r1
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x18]
	subs r1, r1, r0
	mov r9, r1
	adds r0, r4, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r5, [r0, r1]
	cmp r6, r5
	bge _08085AAA
	adds r5, r6, #0x0
_08085AAA:
	cmp r3, #0x00
	beq _08085ACA
	ldr r2, _08085B1C @ =0x03001038
	ldr r0, _08085B20 @ =0x0819832C
	ldr r1, _08085B24 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r3, #0x0
	muls r0, r5
	adds r1, r6, #0x0
	bl _call_via_r2
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
_08085ACA:
	mov r0, r8
	cmp r0, #0x00
	beq _08085AEC
	ldr r2, _08085B1C @ =0x03001038
	ldr r0, _08085B20 @ =0x0819832C
	ldr r1, _08085B24 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r0, r8
	muls r0, r5
	adds r1, r6, #0x0
	bl _call_via_r2
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
_08085AEC:
	mov r1, r9
	cmp r1, #0x00
	beq _08085B0E
	ldr r2, _08085B1C @ =0x03001038
	ldr r0, _08085B20 @ =0x0819832C
	ldr r1, _08085B24 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r0, r9
	muls r0, r5
	adds r1, r6, #0x0
	bl _call_via_r2
	ldr r1, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r4, #0x18]
_08085B0E:
	ldr r0, [r7, #0x00]
	subs r0, r0, r5
	str r0, [r7, #0x00]
	cmp r0, #0x00
	bne _08085B28
	movs r0, #0x01
	b _08085B2A
_08085B1C: .4byte 0x03001038
_08085B20: .4byte 0x0819832C
_08085B24: .4byte 0x08198220
_08085B28:
	movs r0, #0x00
_08085B2A:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8085B38
sub_8085B38:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	adds r0, #0x7A
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r4, r0, #0x08
	movs r3, #0x84
	adds r3, r3, r5
	mov r8, r3
	ldr r6, [r3, #0x00]
	movs r0, #0x88
	adds r0, r0, r5
	mov r12, r0
	ldr r2, [r0, #0x00]
	adds r7, r5, #0x0
	adds r7, #0x8C
	ldr r3, [r7, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08085B78
	ldr r0, [r5, #0x10]
	adds r6, r6, r0
	ldr r0, [r5, #0x14]
	adds r2, r2, r0
	ldr r0, [r5, #0x18]
	adds r3, r3, r0
_08085B78:
	mov r1, r8
	str r6, [r1, #0x00]
	mov r0, r12
	str r2, [r0, #0x00]
	str r3, [r7, #0x00]
	adds r7, r5, #0x0
	adds r7, #0x7C
	cmp r4, #0x00
	bne _08085BE4
	ldr r0, [r5, #0x10]
	subs r0, r6, r0
	cmp r0, #0x00
	bge _08085B94
	adds r0, #0x03
_08085B94:
	asrs r6, r0, #0x02
	ldr r0, [r5, #0x14]
	subs r1, r2, r0
	cmp r1, #0x00
	bge _08085BA0
	adds r1, #0x03
_08085BA0:
	asrs r2, r1, #0x02
	ldr r0, [r5, #0x18]
	subs r1, r3, r0
	cmp r1, #0x00
	bge _08085BAC
	adds r1, #0x03
_08085BAC:
	asrs r3, r1, #0x02
	ldr r4, _08085C14 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	ldr r1, _08085C18 @ =0x0819832C
	ldr r2, _08085C1C @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r4, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x06
	movs r3, #0x00
	ldsh r1, [r7, r3]
	cmp r1, #0x00
	bge _08085BDC
	adds r1, #0x0F
_08085BDC:
	asrs r1, r1, #0x04
	bl _call_via_r2
	adds r4, r0, #0x0
_08085BE4:
	adds r0, r5, #0x0
	adds r0, #0x80
	str r4, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	strh r0, [r7, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08085C14: .4byte 0x03001038
_08085C18: .4byte 0x0819832C
_08085C1C: .4byte 0x08198220
	.byte 0x70, 0xB5, 0x03, 0x1C, 0x1A, 0x1C, 0x7E, 0x32, 0x7C, 0x30, 0x11, 0x88, 0x00, 0x88, 0x09, 0x1A
	.byte 0x11, 0x80, 0x09, 0x04, 0x00, 0x29, 0x77, 0xDD, 0x00, 0x20, 0x14, 0x5E, 0x06, 0x32, 0x18, 0x1C
	.byte 0xAE, 0x30, 0x00, 0x21, 0x40, 0x5E, 0x60, 0x43, 0x00, 0x28, 0x01, 0xDA, 0x20, 0x49, 0x40, 0x18
	.byte 0x01, 0x13, 0x10, 0x68, 0x40, 0x1A, 0x18, 0x61, 0x19, 0x1C, 0x88, 0x31, 0x18, 0x1C, 0xB0, 0x30
	.byte 0x00, 0x22, 0x80, 0x5E, 0x60, 0x43, 0x00, 0x28, 0x01, 0xDA, 0x19, 0x4A, 0x80, 0x18, 0x00, 0x13
	.byte 0x09, 0x68, 0x09, 0x1A, 0x59, 0x61, 0x18, 0x1C, 0x94, 0x30, 0x02, 0x68, 0x00, 0x2A, 0x3F, 0xD0
	.byte 0x80, 0x25, 0xED, 0x01, 0x2C, 0x1B, 0x04, 0x30, 0x01, 0x68, 0x0C, 0x38, 0x06, 0x68, 0x00, 0x29
	.byte 0x22, 0xDA, 0x28, 0x1B, 0x50, 0x43, 0x00, 0x28, 0x01, 0xDA, 0x0E, 0x4C, 0x00, 0x19, 0x80, 0x13
	.byte 0x45, 0x1A, 0x52, 0x1A, 0x08, 0x1C, 0x48, 0x43, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12
	.byte 0x34, 0x1A, 0x10, 0x1C, 0x50, 0x43, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x22, 0x1A
	.byte 0x28, 0x1C, 0x68, 0x43, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x10, 0x18, 0x25, 0xE0
	.byte 0xFF, 0x0F, 0x00, 0x00, 0xFF, 0x3F, 0x00, 0x00, 0x10, 0x1C, 0x60, 0x43, 0x00, 0x28, 0x01, 0xDA
	.byte 0x06, 0x4A, 0x80, 0x18, 0x80, 0x13, 0x40, 0x1A, 0x04, 0x1C, 0x44, 0x43, 0x20, 0x1C, 0x00, 0x28
	.byte 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x30, 0x1A, 0x10, 0xE0, 0x00, 0x00, 0xFF, 0x3F, 0x00, 0x00
	.byte 0x1A, 0x1C, 0x8C, 0x32, 0x18, 0x1C, 0xB2, 0x30, 0x00, 0x21, 0x40, 0x5E, 0x60, 0x43, 0x00, 0x28
	.byte 0x01, 0xDA, 0x04, 0x4C, 0x00, 0x19, 0x01, 0x13, 0x10, 0x68, 0x40, 0x1A, 0x98, 0x61, 0x00, 0x20
	.byte 0x49, 0xE0, 0x00, 0x00, 0xFF, 0x0F, 0x00, 0x00, 0x18, 0x1C, 0x84, 0x30, 0x00, 0x68, 0x18, 0x61
	.byte 0x18, 0x1C, 0x88, 0x30, 0x00, 0x68, 0x58, 0x61, 0x18, 0x1C, 0x94, 0x30, 0x02, 0x68, 0x00, 0x2A
	.byte 0x30, 0xD0, 0x04, 0x30, 0x01, 0x68, 0x0C, 0x38, 0x05, 0x68, 0x00, 0x29, 0x17, 0xDA, 0x4C, 0x42
	.byte 0x52, 0x1A, 0x08, 0x1C, 0x48, 0x43, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x29, 0x1A
	.byte 0x10, 0x1C, 0x50, 0x43, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x09, 0x1A, 0x20, 0x1C
	.byte 0x60, 0x43, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x08, 0x18, 0x15, 0xE0, 0x90, 0x03
	.byte 0x00, 0x28, 0x01, 0xDA, 0x06, 0x4A, 0x80, 0x18, 0x80, 0x13, 0x40, 0x1A, 0x04, 0x1C, 0x44, 0x43
	.byte 0x20, 0x1C, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x28, 0x1A, 0x05, 0xE0, 0x00, 0x00
	.byte 0xFF, 0x3F, 0x00, 0x00, 0x18, 0x1C, 0x8C, 0x30, 0x00, 0x68, 0x98, 0x61, 0x19, 0x1C, 0x7E, 0x31
	.byte 0x00, 0x20, 0x08, 0x80, 0x01, 0x20, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xF0, 0xB5, 0x57, 0x46
	.byte 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x81, 0xB0, 0x07, 0x1C, 0x09, 0x9D, 0x09, 0x02, 0x10, 0x02
	.byte 0x02, 0x1C, 0x1B, 0x02, 0x2D, 0x02, 0x38, 0x1C, 0x84, 0x30, 0x01, 0x60, 0x04, 0x30, 0x02, 0x60
	.byte 0x38, 0x69, 0x08, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x03, 0x30, 0x80, 0x10, 0x3C, 0x1C, 0xAE, 0x34
	.byte 0x00, 0x26, 0x20, 0x80, 0x78, 0x69, 0x10, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x03, 0x30, 0x81, 0x10
	.byte 0x38, 0x1C, 0xB0, 0x30, 0x01, 0x80, 0x9D, 0x42, 0x02, 0xDB, 0xB8, 0x69, 0x85, 0x42, 0x0F, 0xDA
	.byte 0x38, 0x1C, 0x8C, 0x30, 0x03, 0x60, 0xB8, 0x69, 0x18, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x03, 0x30
	.byte 0x80, 0x10, 0x39, 0x1C, 0xB2, 0x31, 0x08, 0x80, 0x38, 0x1C, 0x94, 0x30, 0x06, 0x60, 0x3B, 0xE0
	.byte 0x38, 0x1C, 0x8C, 0x30, 0x05, 0x60, 0x39, 0x1C, 0xB2, 0x31, 0x0E, 0x80, 0x94, 0x21, 0xC9, 0x19
	.byte 0x88, 0x46, 0x98, 0x21, 0xC9, 0x19, 0x89, 0x46, 0xBA, 0x69, 0x06, 0x68, 0x00, 0x20, 0x82, 0x46
	.byte 0x96, 0x42, 0x08, 0xDA, 0x9E, 0x42, 0x04, 0xDA, 0xD0, 0x18, 0x86, 0x1B, 0x01, 0x21, 0x8A, 0x46
	.byte 0x04, 0xE0, 0x16, 0x1C, 0x02, 0xE0, 0x9E, 0x42, 0x00, 0xDA, 0x1E, 0x1C, 0x17, 0x4D, 0xF0, 0x1A
	.byte 0x00, 0x02, 0x29, 0x68, 0x00, 0x92, 0x54, 0xF1, 0xF9, 0xFD, 0x04, 0x1C, 0x00, 0x9A, 0xB0, 0x1A
	.byte 0x00, 0x02, 0x29, 0x68, 0x54, 0xF1, 0xF2, 0xFD, 0x04, 0x19, 0x41, 0x46, 0x0C, 0x60, 0x49, 0x46
	.byte 0x08, 0x60, 0x50, 0x46, 0x00, 0x28, 0x07, 0xD0, 0x41, 0x46, 0x08, 0x68, 0x40, 0x42, 0x08, 0x60
	.byte 0x49, 0x46, 0x08, 0x68, 0x40, 0x42, 0x08, 0x60, 0x39, 0x1C, 0x7E, 0x31, 0x80, 0x20, 0xC0, 0x01
	.byte 0x08, 0x80, 0x38, 0x1C, 0x20, 0x21, 0x01, 0xF0, 0x6B, 0xFC, 0x01, 0xB0, 0x38, 0xBC, 0x98, 0x46
	.byte 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03
	thumb_func_start sub_8085ED0
sub_8085ED0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	mov r12, r1
	movs r0, #0x44
	add r0, r8
	mov r9, r0
	movs r1, #0x44
	add r1, r12
	mov r10, r1
	mov r2, r8
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08085F0A
	mov r3, r9
	movs r0, #0x00
	ldsb r0, [r3, r0]
	negs r2, r0
	movs r0, #0x01
	ldsb r0, [r3, r0]
	negs r0, r0
	b _08085F14
_08085F0A:
	mov r7, r9
	movs r2, #0x01
	ldsb r2, [r7, r2]
	movs r0, #0x00
	ldsb r0, [r7, r0]
_08085F14:
	str r0, [sp, #0x004]
	mov r1, r12
	ldr r0, [r1, #0x08]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08085F34
	mov r3, r10
	movs r0, #0x00
	ldsb r0, [r3, r0]
	negs r5, r0
	movs r0, #0x01
	ldsb r0, [r3, r0]
	negs r0, r0
	b _08085F3E
_08085F34:
	mov r7, r10
	movs r5, #0x01
	ldsb r5, [r7, r5]
	movs r0, #0x00
	ldsb r0, [r7, r0]
_08085F3E:
	lsls r1, r0, #0x08
	mov r0, r12
	ldr r4, [r0, #0x38]
	adds r1, r4, r1
	lsls r0, r2, #0x08
	mov r2, r8
	ldr r3, [r2, #0x38]
	adds r0, r3, r0
	subs r6, r1, r0
	subs r2, r4, r3
	mov r7, r12
	ldr r0, [r7, #0x10]
	mov r7, r8
	ldr r1, [r7, #0x10]
	subs r0, r0, r1
	subs r7, r2, r0
	cmp r6, #0x00
	blt _08085F68
	movs r0, #0x01
	str r0, [sp, #0x000]
	b _08085F88
_08085F68:
	ldr r2, [sp, #0x004]
	lsls r1, r2, #0x08
	adds r1, r3, r1
	lsls r0, r5, #0x08
	adds r0, r4, r0
	subs r6, r1, r0
	negs r7, r7
	mvns r0, r6
	asrs r0, r0, #0x1F
	str r0, [sp, #0x000]
	movs r0, #0x02
	ldr r3, [sp, #0x000]
	ands r3, r0
	str r3, [sp, #0x000]
	cmp r3, #0x00
	beq _08085F8C
_08085F88:
	cmp r6, r7
	bgt _0808606A
_08085F8C:
	mov r0, r10
	movs r1, #0x04
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	mov r2, r12
	ldr r5, [r2, #0x3C]
	adds r1, r5, r1
	mov r3, r9
	movs r0, #0x05
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x08
	mov r2, r8
	ldr r4, [r2, #0x3C]
	adds r0, r4, r0
	subs r3, r1, r0
	subs r0, r5, r4
	str r0, [sp, #0x008]
	mov r1, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r2, #0x14]
	subs r0, r0, r1
	ldr r1, [sp, #0x008]
	subs r2, r1, r0
	cmp r3, #0x00
	blt _08085FC2
	movs r4, #0x05
	b _08085FE6
_08085FC2:
	mov r3, r9
	movs r1, #0x04
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x08
	adds r1, r4, r1
	mov r3, r10
	movs r0, #0x05
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x08
	adds r0, r5, r0
	subs r3, r1, r0
	negs r2, r2
	movs r4, #0x00
	cmp r3, #0x00
	blt _08085FE2
	movs r4, #0x06
_08085FE2:
	cmp r4, #0x00
	beq _08085FEA
_08085FE6:
	cmp r3, r2
	bgt _0808606A
_08085FEA:
	ldr r0, [sp, #0x000]
	cmp r0, #0x00
	bne _08085FF8
	cmp r4, #0x00
	bne _08085FF8
	movs r7, #0x00
	b _0808600A
_08085FF8:
	adds r1, r6, #0x0
	muls r1, r2
	adds r0, r3, #0x0
	muls r0, r7
	cmp r1, r0
	bgt _0808600A
	adds r6, r3, #0x0
	adds r7, r2, #0x0
	str r4, [sp, #0x000]
_0808600A:
	mov r2, r10
	movs r1, #0x02
	ldsb r1, [r2, r1]
	lsls r1, r1, #0x08
	mov r3, r12
	ldr r5, [r3, #0x40]
	adds r1, r5, r1
	mov r2, r9
	movs r0, #0x03
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x08
	mov r3, r8
	ldr r4, [r3, #0x40]
	adds r0, r4, r0
	subs r3, r1, r0
	subs r0, r5, r4
	str r0, [sp, #0x008]
	mov r1, r12
	ldr r0, [r1, #0x18]
	mov r2, r8
	ldr r1, [r2, #0x18]
	subs r0, r0, r1
	ldr r1, [sp, #0x008]
	subs r2, r1, r0
	cmp r3, #0x00
	blt _08086042
	movs r4, #0x03
	b _08086066
_08086042:
	mov r3, r9
	movs r1, #0x02
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x08
	adds r1, r4, r1
	mov r3, r10
	movs r0, #0x03
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x08
	adds r0, r5, r0
	subs r3, r1, r0
	negs r2, r2
	mvns r0, r3
	asrs r4, r0, #0x1F
	movs r0, #0x04
	ands r4, r0
	cmp r4, #0x00
	beq _0808606E
_08086066:
	cmp r3, r2
	ble _0808606E
_0808606A:
	movs r0, #0x00
	b _0808607E
_0808606E:
	adds r1, r6, #0x0
	muls r1, r2
	adds r0, r3, #0x0
	muls r0, r7
	cmp r1, r0
	bgt _0808607C
	str r4, [sp, #0x000]
_0808607C:
	ldr r0, [sp, #0x000]
_0808607E:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8086090
sub_8086090:
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0x0
	ldr r3, [r2, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x38]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080860A6
	adds r1, #0x1F
_080860A6:
	asrs r5, r1, #0x05
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080860B8
	adds r0, #0x1F
_080860B8:
	asrs r4, r0, #0x05
	adds r3, r2, #0x0
	adds r3, #0xAE
	ldrh r0, [r3, #0x00]
	adds r0, r0, r5
	strh r0, [r3, #0x00]
	movs r0, #0xB2
	adds r0, r0, r2
	mov r12, r0
	ldrh r0, [r0, #0x00]
	adds r0, r0, r4
	mov r1, r12
	strh r0, [r1, #0x00]
	movs r6, #0x00
	ldsh r0, [r3, r6]
	movs r1, #0xF2
	muls r0, r1
	cmp r0, #0x00
	bge _080860E0
	adds r0, #0xFF
_080860E0:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	mov r7, r12
	movs r6, #0x00
	ldsh r0, [r7, r6]
	muls r0, r1
	cmp r0, #0x00
	bge _080860F2
	adds r0, #0xFF
_080860F2:
	asrs r0, r0, #0x08
	mov r7, r12
	strh r0, [r7, #0x00]
	movs r0, #0x00
	ldsh r1, [r3, r0]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	movs r6, #0x00
	ldsh r1, [r7, r6]
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x18]
	movs r7, #0x00
	ldsh r0, [r3, r7]
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	cmp r0, #0x40
	bgt _0808614A
	mov r3, r12
	movs r6, #0x00
	ldsh r0, [r3, r6]
	adds r7, r0, #0x0
	muls r7, r0
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	cmp r0, #0x40
	bgt _0808614A
	ldr r0, [r2, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	str r1, [r2, #0x10]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x18]
	movs r0, #0x00
	str r0, [r2, #0x4C]
_0808614A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8086150
sub_8086150:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r3, r1, #0x0
	mov r8, r2
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	beq _08086170
	b _08086302
_08086170:
	ldr r0, _080862C8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, _080862CC @ =0x000002BF
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r4, #0x01
	orrs r0, r4
	strb r0, [r1, #0x00]
	str r3, [r5, #0x2C]
	adds r7, r5, #0x0
	adds r7, #0x77
	ldrb r0, [r7, #0x00]
	movs r3, #0x09
	negs r3, r3
	ands r3, r0
	movs r0, #0x11
	negs r0, r0
	ands r3, r0
	strb r3, [r7, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xF0
	ldr r1, [r0, #0x00]
	lsls r0, r2, #0x02
	add r0, r8
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x0C]
	adds r6, r1, r0
	ldrb r0, [r6, #0x08]
	movs r2, #0x60
	movs r1, #0x60
	ands r1, r0
	eors r1, r2
	asrs r2, r1, #0x05
	ands r2, r4
	lsls r2, r2, #0x06
	movs r0, #0x41
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	asrs r1, r1, #0x06
	ands r1, r4
	lsls r1, r1, #0x05
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0x00]
	str r6, [r5, #0x6C]
	ldr r7, [r5, #0x28]
	movs r1, #0x9C
	adds r1, r1, r5
	mov r9, r1
	movs r2, #0xA0
	adds r2, r2, r5
	mov r10, r2
	adds r0, r5, #0x0
	adds r0, #0xA4
	str r0, [sp, #0x000]
	movs r1, #0xCC
	adds r1, r1, r5
	mov r12, r1
	cmp r7, #0x00
	beq _0808626E
	adds r0, r7, #0x0
	adds r0, #0x08
	cmp r0, r5
	beq _08086204
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808626E
_08086204:
	ldr r2, [r7, #0x38]
	ldr r4, [r7, #0x00]
	movs r0, #0x9C
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xA0
	adds r1, r1, r5
	mov r10, r1
	adds r0, r5, #0x0
	adds r0, #0xA4
	str r0, [sp, #0x000]
	movs r1, #0xCC
	adds r1, r1, r5
	mov r12, r1
	cmp r2, #0x00
	beq _0808623C
	movs r3, #0x08
_08086226:
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08086236
	str r6, [r2, #0x6C]
_08086236:
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _08086226
_0808623C:
	adds r0, r4, #0x0
	cmp r0, #0x00
	beq _0808626E
	cmp r0, r7
	beq _0808626E
_08086246:
	str r6, [r0, #0x74]
	ldr r2, [r0, #0x38]
	ldr r3, [r0, #0x00]
	cmp r2, #0x00
	beq _08086268
	movs r4, #0x08
_08086252:
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08086262
	str r6, [r2, #0x6C]
_08086262:
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _08086252
_08086268:
	adds r0, r3, #0x0
	cmp r0, r7
	bne _08086246
_0808626E:
	ldr r1, [r5, #0x28]
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r1, r1, r2
	movs r0, #0x1F
	mov r2, r8
	ands r2, r0
	mov r8, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _080862D0 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r1, _080862D4 @ =0x080874B5
	str r1, [r5, #0x54]
	movs r2, #0x0E
	ldsh r0, [r6, r2]
	mov r1, r9
	str r0, [r1, #0x00]
	movs r2, #0x10
	ldsh r0, [r6, r2]
	mov r1, r10
	str r0, [r1, #0x00]
	ldrh r0, [r6, #0x12]
	lsls r0, r0, #0x11
	asrs r0, r0, #0x11
	ldr r2, [sp, #0x000]
	str r0, [r2, #0x00]
	mov r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x00
	beq _080862D8
	movs r0, #0x7F
	ands r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	b _080862F2
_080862C8: .4byte 0x03000FD8
_080862CC: .4byte 0x000002BF
_080862D0: .4byte sub_8087540
_080862D4: .4byte sub_80874B4
_080862D8:
	adds r0, r5, #0x0
	adds r0, #0xC8
	strh r2, [r0, #0x00]
	mov r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xCA
	strh r2, [r0, #0x00]
_080862F2:
	adds r0, r5, #0x0
	bl sub_8106994
	adds r0, r5, #0x0
	bl sub_8081DE4
	ldr r0, _08086314 @ =0x0808759D
	str r0, [r5, #0x4C]
_08086302:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08086314: .4byte sub_808759C
	thumb_func_start sub_8086318
sub_8086318:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r3, r1, #0x0
	adds r7, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _08086418
	ldr r0, _080863E8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, _080863EC @ =0x000002BF
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r5, #0x01
	orrs r0, r5
	strb r0, [r1, #0x00]
	str r3, [r6, #0x2C]
	movs r1, #0x77
	adds r1, r1, r6
	mov r12, r1
	ldrb r0, [r1, #0x00]
	movs r3, #0x09
	negs r3, r3
	ands r3, r0
	movs r0, #0x11
	negs r0, r0
	ands r3, r0
	strb r3, [r1, #0x00]
	ldr r0, [r6, #0x28]
	adds r0, #0xF0
	ldr r1, [r0, #0x00]
	lsls r0, r7, #0x02
	adds r0, r0, r7
	lsls r0, r0, #0x02
	ldr r4, [r1, #0x0C]
	adds r4, r4, r0
	ldrb r0, [r4, #0x08]
	movs r2, #0x60
	movs r1, #0x60
	ands r1, r0
	eors r1, r2
	asrs r2, r1, #0x05
	ands r2, r5
	lsls r2, r2, #0x06
	movs r0, #0x41
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	asrs r1, r1, #0x06
	ands r1, r5
	lsls r1, r1, #0x05
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	mov r2, r12
	strb r0, [r2, #0x00]
	str r4, [r6, #0x6C]
	ldr r1, [r6, #0x28]
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x1F
	ands r7, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r7
	strb r0, [r1, #0x00]
	ldr r0, _080863F0 @ =0x08087541
	str r0, [r6, #0x68]
	ldr r0, _080863F4 @ =0x080874B5
	str r0, [r6, #0x54]
	adds r1, r6, #0x0
	adds r1, #0x9C
	movs r2, #0x0E
	ldsh r0, [r4, r2]
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r2, #0x10
	ldsh r0, [r4, r2]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #0x11
	asrs r0, r0, #0x11
	str r0, [r1, #0x00]
	adds r3, r6, #0x0
	adds r3, #0xCC
	ldrb r1, [r3, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x00
	beq _080863F8
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r3, #0x00]
	b _0808640E
	.byte 0x00, 0x00
_080863E8: .4byte 0x03000FD8
_080863EC: .4byte 0x000002BF
_080863F0: .4byte sub_8087540
_080863F4: .4byte sub_80874B4
_080863F8:
	adds r0, r6, #0x0
	adds r0, #0xC8
	strh r2, [r0, #0x00]
	ldrb r1, [r3, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xCA
	strh r2, [r0, #0x00]
_0808640E:
	adds r0, r6, #0x0
	bl sub_8081DE4
	ldr r0, _08086420 @ =0x0808759D
	str r0, [r6, #0x4C]
_08086418:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08086420: .4byte sub_808759C
	thumb_func_start sub_8086424
sub_8086424:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r8, r0
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	mov r0, r8
	ldr r4, [r0, #0x38]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r3, [r0, #0x00]
	mov r5, r8
	ldr r2, [r5, #0x3C]
	adds r0, #0x04
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x40]
	adds r5, #0xAE
	str r5, [sp, #0x004]
	adds r5, #0x02
	str r5, [sp, #0x008]
	adds r5, #0x02
	str r5, [sp, #0x00C]
	ldr r5, [sp, #0x000]
	subs r7, r5, r4
	subs r3, r3, r2
	subs r6, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x02
	mov r10, r0
	adds r0, r7, #0x0
	cmp r7, #0x00
	bge _08086472
	adds r0, r7, #0x3
_08086472:
	asrs r7, r0, #0x02
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _0808647C
	adds r0, r3, #0x3
_0808647C:
	asrs r3, r0, #0x02
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _08086486
	adds r0, r6, #0x3
_08086486:
	asrs r6, r0, #0x02
	cmp r7, #0x00
	bne _080864A2
	cmp r3, #0x00
	bne _080864A2
	cmp r6, #0x00
	bne _080864A2
	ldr r1, [sp, #0x004]
	strh r6, [r1, #0x00]
	ldr r2, [sp, #0x008]
	strh r6, [r2, #0x00]
	ldr r5, [sp, #0x00C]
	strh r6, [r5, #0x00]
	b _08086506
_080864A2:
	ldr r0, _08086544 @ =0x03001038
	mov r9, r0
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	mov r2, r9
	ldr r1, [r2, #0x00]
	str r3, [sp, #0x010]
	bl _call_via_r1
	adds r5, r0, #0x0
	ldr r4, _08086548 @ =0x0819832C
	ldr r0, _0808654C @ =0x08198220
	subs r4, r4, r0
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	mov r0, r10
	muls r0, r7
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x004]
	strh r0, [r1, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r3, [sp, #0x010]
	mov r0, r10
	muls r0, r3
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x008]
	strh r0, [r1, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	mov r0, r10
	muls r0, r6
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x00C]
	strh r0, [r1, #0x00]
_08086506:
	mov r0, r8
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _08086550
	adds r0, #0x02
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	bne _08086550
	mov r0, r8
	movs r1, #0x01
	negs r1, r1
	adds r2, r1, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	mov r5, r8
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	str r4, [r5, #0x58]
	ldr r0, [r5, #0x50]
	str r0, [r5, #0x4C]
	str r4, [r5, #0x50]
	b _080865D6
	.byte 0x00, 0x00
_08086544: .4byte 0x03001038
_08086548: .4byte 0x0819832C
_0808654C: .4byte 0x08198220
_08086550:
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08086586
	mov r1, r8
	ldr r0, [r1, #0x08]
	ldrh r1, [r0, #0x16]
	ldrb r0, [r0, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r1, r0
	ldr r2, _080865E8 @ =0x00002002
	cmp r1, r2
	beq _08086586
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08086586:
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _080865BC
	mov r1, r8
	ldr r0, [r1, #0x08]
	ldrh r1, [r0, #0x16]
	ldrb r0, [r0, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r1, r0
	ldr r2, _080865EC @ =0x0000204F
	cmp r1, r2
	beq _080865BC
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080865BC:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _080865D0
	mov r2, r8
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_080865D0:
	ldr r0, _080865F0 @ =0x080865F5
	mov r5, r8
	str r0, [r5, #0x4C]
_080865D6:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080865E8: .4byte 0x00002002
_080865EC: .4byte 0x0000204F
_080865F0: .4byte sub_80865F4
	thumb_func_start sub_80865F4
sub_80865F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r3, [r4, #0x38]
	mov r10, r3
	add r1, r10
	str r1, [r4, #0x10]
	adds r0, #0x02
	movs r5, #0x00
	ldsh r0, [r0, r5]
	ldr r7, [r4, #0x3C]
	str r7, [sp, #0x000]
	adds r5, r7, r0
	str r5, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	ldr r3, [r4, #0x40]
	str r3, [sp, #0x004]
	adds r2, r3, r0
	str r2, [r4, #0x18]
	ldr r7, [r4, #0x28]
	mov r12, r7
	mov r0, r12
	adds r0, #0xD8
	ldr r6, [r0, #0x00]
	subs r1, r1, r6
	cmp r1, #0x00
	bge _08086640
	adds r1, #0x0F
_08086640:
	asrs r1, r1, #0x04
	mov r9, r1
	mov r0, r12
	adds r0, #0xDC
	str r0, [sp, #0x008]
	ldr r1, [r0, #0x00]
	subs r0, r5, r1
	cmp r0, #0x00
	bge _08086654
	adds r0, #0x0F
_08086654:
	asrs r0, r0, #0x04
	mov r8, r0
	movs r3, #0xE0
	add r12, r3
	mov r5, r12
	ldr r3, [r5, #0x00]
	subs r0, r2, r3
	cmp r0, #0x00
	bge _08086668
	adds r0, #0x0F
_08086668:
	asrs r0, r0, #0x04
	str r0, [sp, #0x00C]
	mov r7, r10
	subs r0, r7, r6
	cmp r0, #0x00
	bge _08086676
	adds r0, #0x0F
_08086676:
	asrs r5, r0, #0x04
	ldr r0, [sp, #0x000]
	subs r1, r0, r1
	cmp r1, #0x00
	bge _08086682
	adds r1, #0x0F
_08086682:
	asrs r1, r1, #0x04
	ldr r2, [sp, #0x004]
	subs r3, r2, r3
	cmp r3, #0x00
	bge _0808668E
	adds r3, #0x0F
_0808668E:
	asrs r3, r3, #0x04
	mov r7, r9
	mov r2, r9
	muls r2, r7
	mov r7, r8
	mov r0, r8
	muls r0, r7
	adds r2, r2, r0
	ldr r7, [sp, #0x00C]
	adds r0, r7, #0x0
	muls r0, r7
	adds r2, r2, r0
	adds r0, r5, #0x0
	muls r0, r5
	adds r5, r1, #0x0
	muls r5, r1
	adds r1, r5, #0x0
	adds r0, r0, r1
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	cmp r2, r0
	blt _080866EE
	str r6, [r4, #0x10]
	ldr r7, [sp, #0x008]
	ldr r0, [r7, #0x00]
	str r0, [r4, #0x14]
	mov r1, r12
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x18]
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	movs r1, #0x00
	str r1, [r4, #0x58]
	ldr r0, [r4, #0x50]
	str r0, [r4, #0x4C]
	str r1, [r4, #0x50]
_080866EE:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8086700
sub_8086700:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x06
	beq _0808675C
	cmp r1, #0x02
	beq _0808675C
	ldr r2, [r5, #0x28]
	cmp r2, #0x00
	beq _0808675C
	ldr r0, _08086750 @ =0x00000111
	adds r4, r2, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _0808675C
	ldr r0, _08086754 @ =0x08087441
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0x80
	str r1, [r0, #0x00]
	ldr r0, _08086758 @ =0x0808742D
	adds r1, r2, #0x0
	bl sub_807FF48
	ldrb r0, [r4, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r0, [r5, #0x28]
	bl sub_807B7A8
	movs r0, #0x01
	b _0808675E
_08086750: .4byte 0x00000111
_08086754: .4byte 0x08087441
_08086758: .4byte 0x0808742D
_0808675C:
	movs r0, #0x00
_0808675E:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_8086764
sub_8086764:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r2, [r5, #0x28]
	adds r4, r2, #0x0
	adds r4, #0xEC
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080867A0
	ldr r0, _08086798 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0808679C
	adds r1, #0x08
	lsls r1, r1, #0x02
	adds r0, r3, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	b _080867CA
	.byte 0x00, 0x00
_08086798: .4byte 0x03000FD8
_0808679C:
	movs r3, #0x00
	b _080867CA
_080867A0:
	adds r3, r2, #0x0
	ldr r0, _080867C4 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080867C8
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r1, #0x08
	lsls r1, r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	b _080867CA
	.byte 0x00, 0x00
_080867C4: .4byte 0x03000FD8
_080867C8:
	movs r2, #0x00
_080867CA:
	ldr r0, [r5, #0x28]
	cmp r0, r2
	bne _08086804
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08086834
	ldr r0, [r3, #0x48]
	cmp r0, #0x00
	bgt _080867E8
	adds r0, r3, #0x0
	b _0808681A
_080867E8:
	ldr r0, _080867FC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08086834
	ldr r0, _08086800 @ =0x0808722D
	str r0, [r3, #0x54]
	b _08086834
_080867FC: .4byte 0x03000FD8
_08086800: .4byte sub_808722C
_08086804:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08086834
	ldr r0, [r2, #0x48]
	cmp r0, #0x00
	bgt _08086822
	adds r0, r2, #0x0
_0808681A:
	adds r0, #0x08
	bl sub_8086424
	b _08086834
_08086822:
	ldr r0, _0808684C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08086834
	ldr r0, _08086850 @ =0x0808722D
	str r0, [r2, #0x54]
_08086834:
	ldr r0, _0808684C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	ldr r0, _08086854 @ =0x08086A19
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_0808684C: .4byte 0x03000FD8
_08086850: .4byte sub_808722C
_08086854: .4byte sub_8086A18
	thumb_func_start sub_8086858
sub_8086858:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _0808686A
	adds r2, #0xFF
_0808686A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _08086874
	adds r3, #0xFF
_08086874:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0808687E
	adds r0, #0xFF
_0808687E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x00
	bl sub_807BF34
	adds r5, r0, #0x0
	lsls r2, r4, #0x01
	ldr r0, _08086958 @ =0x0838F8B4
	adds r2, r2, r0
	adds r3, r5, #0x0
	adds r3, #0x76
	ldrb r0, [r3, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x44
	strb r1, [r0, #0x00]
	ldrh r0, [r2, #0x02]
	adds r1, r5, #0x0
	adds r1, #0x45
	strb r0, [r1, #0x00]
	ldrh r0, [r2, #0x04]
	adds r1, #0x01
	strb r0, [r1, #0x00]
	ldrh r0, [r2, #0x06]
	adds r1, #0x01
	strb r0, [r1, #0x00]
	ldrh r1, [r2, #0x08]
	adds r0, r5, #0x0
	adds r0, #0x48
	strb r1, [r0, #0x00]
	ldrh r0, [r2, #0x0A]
	adds r1, r5, #0x0
	adds r1, #0x49
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r1, #0x3B
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x18]
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x08]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	str r6, [r5, #0x30]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	ldr r3, [r5, #0x08]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	movs r4, #0x01
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	adds r1, r5, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r4, _0808695C @ =0x08086961
	str r4, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	adds r0, r5, #0x0
	bl _call_via_r4
	ldr r0, [r5, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x14]
	str r0, [r5, #0x3C]
	ldr r0, [r5, #0x18]
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x58]
	str r0, [r6, #0x58]
	ldr r0, [r5, #0x5C]
	str r0, [r6, #0x5C]
	ldr r0, [r5, #0x60]
	str r0, [r6, #0x60]
	ldr r0, [r5, #0x64]
	str r0, [r6, #0x64]
	adds r0, r5, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08086958: .4byte 0x0838F8B4
_0808695C: .4byte sub_8086960
