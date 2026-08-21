	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8082E1C
sub_8082E1C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	adds r7, r0, #0x0
	mov r10, r1
	adds r5, r2, #0x0
	str r3, [sp, #0x004]
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08082E4C
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08082E4C
	bl _080835D0
_08082E4C:
	ldr r6, [r7, #0x08]
	adds r0, r6, #0x0
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	ldrh r2, [r6, #0x16]
	ldrb r0, [r6, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r0, r3
	orrs r2, r0
	mov r8, r2
	adds r0, r7, #0x0
	adds r0, #0xC6
	ldrb r0, [r0, #0x00]
	mov r9, r0
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldrb r0, [r6, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x010]
	ldr r3, [r7, #0x28]
	cmp r3, #0x00
	beq _08082E8E
	adds r0, r3, #0x0
	adds r0, #0x08
	cmp r7, r0
	beq _08082E92
_08082E8E:
	movs r4, #0x00
	b _08082ECC
_08082E92:
	adds r0, r3, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrh r4, [r0, #0x00]
	cmp r4, #0x00
	bne _08082ECC
	ldr r2, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _08082EC4
	movs r4, #0x80
_08082EB2:
	ldr r2, [r2, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08082EB2
_08082EC4:
	adds r0, r2, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrh r4, [r0, #0x00]
_08082ECC:
	cmp r5, #0x00
	bge _08082ED2
	adds r5, r4, #0x0
_08082ED2:
	cmp r5, #0x00
	bne _08082ED8
	mov r5, r8
_08082ED8:
	mov r1, r10
	cmp r1, #0x00
	bge _08082EE0
	mov r10, r9
_08082EE0:
	adds r2, r3, #0x0
	adds r0, r2, #0x0
	adds r0, #0x08
	cmp r7, r0
	beq _08082EEC
	b _080833AC
_08082EEC:
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08082EFA
	b _08083360
_08082EFA:
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08082F1C
	ldr r0, _08082F14 @ =0x00002029
	mov r12, r0
	ldr r1, _08082F18 @ =0x00002028
	str r1, [sp, #0x014]
	b _08082F2C
_08082F14: .4byte 0x00002029
_08082F18: .4byte 0x00002028
_08082F1C:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08082F2C
	ldr r2, _08082F4C @ =0x00002058
	mov r12, r2
	ldr r0, _08082F50 @ =0x00002057
	str r0, [sp, #0x014]
_08082F2C:
	cmp r5, r4
	bne _08082F8C
	mov r1, r10
	cmp r1, #0x00
	bne _08082F60
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08082F54
	mov r5, r12
	b _08082F60
_08082F4C: .4byte 0x00002058
_08082F50: .4byte 0x00002057
_08082F54:
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08082F60
	ldr r5, [sp, #0x014]
_08082F60:
	cmp r5, r4
	bne _08082F8C
	adds r0, r3, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x64
	adds r2, r1, #0x0
	muls r2, r0
	adds r0, r3, #0x0
	adds r0, #0xF8
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	cmp r2, r0
	bge _08082F8C
	mov r0, r10
	cmp r0, #0x00
	bne _08082F8C
	movs r1, #0x0E
	mov r10, r1
_08082F8C:
	ldr r0, _08082FB0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _08082F9C
	b _080833AC
_08082F9C:
	ldr r0, _08082FB4 @ =0x00002025
	cmp r5, r0
	beq _08082FDC
	cmp r5, r0
	bgt _08082FB8
	subs r0, #0x25
	cmp r5, r0
	beq _08082FCC
	b _08082FE6
	.byte 0x00, 0x00
_08082FB0: .4byte 0x03000FD8
_08082FB4: .4byte 0x00002025
_08082FB8:
	ldr r0, _08082FC8 @ =0x0000204D
	cmp r5, r0
	beq _08082FD4
	adds r0, #0x07
	cmp r5, r0
	beq _08082FE4
	b _08082FE6
	.byte 0x00, 0x00
_08082FC8: .4byte 0x0000204D
_08082FCC:
	ldr r5, _08082FD0 @ =0x0000203A
	b _08082FEA
_08082FD0: .4byte 0x0000203A
_08082FD4:
	ldr r5, _08082FD8 @ =0x00002069
	b _08082FEA
_08082FD8: .4byte 0x00002069
_08082FDC:
	ldr r5, _08082FE0 @ =0x0000203C
	b _08082FEA
_08082FE0: .4byte 0x0000203C
_08082FE4:
	ldr r5, _08083058 @ =0x0000206B
_08082FE6:
	cmp r5, #0x00
	beq _08082FF6
_08082FEA:
	cmp r5, r8
	beq _08082FF6
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_807FB78
_08082FF6:
	ldrh r4, [r6, #0x0E]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	mov r1, r10
	ldr r2, [sp, #0x004]
	movs r3, #0x00
	bl sub_801E150
	strh r4, [r6, #0x0E]
	ldrb r1, [r6, #0x12]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x12]
	ldr r3, [sp, #0x010]
	lsls r2, r3, #0x06
	ldrb r1, [r6, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6, #0x11]
	adds r0, r6, #0x0
	bl sub_807BC90
	adds r0, r6, #0x0
	adds r0, #0x20
	mov r1, sp
	ldrb r1, [r1, #0x08]
	strb r1, [r0, #0x00]
	ldr r3, [sp, #0x00C]
	lsls r2, r3, #0x04
	ldrb r1, [r6, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6, #0x12]
	ldr r0, _0808305C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r1, [r2, #0x70]
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r7, r0
	beq _08083060
	ldr r6, [r1, #0x10]
	b _08083064
	.byte 0x00, 0x00
_08083058: .4byte 0x0000206B
_0808305C: .4byte 0x03000FD8
_08083060:
	ldr r0, [r2, #0x74]
	ldr r6, [r0, #0x10]
_08083064:
	ldrh r0, [r6, #0x16]
	mov r8, r0
	ldrb r0, [r6, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	mov r2, r8
	orrs r2, r0
	mov r8, r2
	ldr r3, _08083090 @ =0xFFFFDFFA
	adds r0, r5, r3
	cmp r0, #0x65
	bls _08083084
	b _080835D0
_08083084:
	lsls r0, r0, #0x02
	ldr r1, _08083094 @ =0x08083098
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08083090: .4byte 0xFFFFDFFA
_08083094: .4byte 0x08083098
	.byte 0xC0, 0x32, 0x08, 0x08, 0xC8, 0x32, 0x08, 0x08, 0x9E, 0x32, 0x08, 0x08, 0xA8, 0x32, 0x08, 0x08
	.byte 0xD0, 0x32, 0x08, 0x08, 0xD8, 0x32, 0x08, 0x08, 0xB0, 0x32, 0x08, 0x08, 0xB8, 0x32, 0x08, 0x08
	.byte 0xE0, 0x32, 0x08, 0x08, 0xE8, 0x32, 0x08, 0x08, 0x90, 0x32, 0x08, 0x08, 0x98, 0x32, 0x08, 0x08
	.byte 0x18, 0x33, 0x08, 0x08, 0x48, 0x33, 0x08, 0x08, 0x00, 0x33, 0x08, 0x08, 0x30, 0x33, 0x08, 0x08
	.byte 0xF0, 0x32, 0x08, 0x08, 0x20, 0x33, 0x08, 0x08, 0x08, 0x33, 0x08, 0x08, 0x38, 0x33, 0x08, 0x08
	.byte 0xF8, 0x32, 0x08, 0x08, 0x28, 0x33, 0x08, 0x08, 0x10, 0x33, 0x08, 0x08, 0x40, 0x33, 0x08, 0x08
	.byte 0x18, 0x33, 0x08, 0x08, 0x48, 0x33, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08
	.byte 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08
	.byte 0xD0, 0x35, 0x08, 0x08, 0x80, 0x32, 0x08, 0x08, 0x70, 0x32, 0x08, 0x08, 0x60, 0x32, 0x08, 0x08
	.byte 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08
	.byte 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08
	.byte 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08
	.byte 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08
	.byte 0x30, 0x32, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0x40, 0x32, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08
	.byte 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08
	.byte 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08
	.byte 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08
	.byte 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08
	.byte 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08
	.byte 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08
	.byte 0x88, 0x32, 0x08, 0x08, 0x78, 0x32, 0x08, 0x08, 0x68, 0x32, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08
	.byte 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08
	.byte 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08
	.byte 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08
	.byte 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0xD0, 0x35, 0x08, 0x08, 0x38, 0x32, 0x08, 0x08
	.byte 0xD0, 0x35, 0x08, 0x08, 0x50, 0x32, 0x08, 0x08, 0x00, 0x4D, 0x8A, 0xE0, 0x6A, 0x20, 0x00, 0x00
	.byte 0x00, 0x4D, 0x86, 0xE0, 0x3B, 0x20, 0x00, 0x00, 0x50, 0x46, 0x06, 0x28, 0x00, 0xD1, 0xC3, 0xE1
	.byte 0x00, 0x4D, 0x7E, 0xE0, 0x6C, 0x20, 0x00, 0x00, 0x51, 0x46, 0x06, 0x29, 0x00, 0xD1, 0xBB, 0xE1
	.byte 0x00, 0x4D, 0x76, 0xE0, 0x3D, 0x20, 0x00, 0x00, 0x00, 0x4D, 0x72, 0xE0, 0x6E, 0x20, 0x00, 0x00
	.byte 0x00, 0x4D, 0x6E, 0xE0, 0x3F, 0x20, 0x00, 0x00, 0x00, 0x4D, 0x6A, 0xE0, 0x6D, 0x20, 0x00, 0x00
	.byte 0x00, 0x4D, 0x66, 0xE0, 0x3E, 0x20, 0x00, 0x00, 0x00, 0x4D, 0x62, 0xE0, 0x75, 0x20, 0x00, 0x00
	.byte 0x00, 0x4D, 0x5E, 0xE0, 0x46, 0x20, 0x00, 0x00, 0x00, 0x4D, 0x5A, 0xE0, 0x6F, 0x20, 0x00, 0x00
	.byte 0x81, 0x25, 0xAD, 0x01, 0x55, 0xE0, 0x01, 0x4D, 0x53, 0xE0, 0x00, 0x00, 0x70, 0x20, 0x00, 0x00
	.byte 0x00, 0x4D, 0x4E, 0xE0, 0x41, 0x20, 0x00, 0x00, 0x00, 0x4D, 0x4A, 0xE0, 0x71, 0x20, 0x00, 0x00
	.byte 0x00, 0x4D, 0x46, 0xE0, 0x42, 0x20, 0x00, 0x00, 0x00, 0x4D, 0x42, 0xE0, 0x72, 0x20, 0x00, 0x00
	.byte 0x00, 0x4D, 0x3E, 0xE0, 0x43, 0x20, 0x00, 0x00, 0x00, 0x4D, 0x3A, 0xE0, 0x73, 0x20, 0x00, 0x00
	.byte 0x00, 0x4D, 0x36, 0xE0, 0x44, 0x20, 0x00, 0x00, 0x00, 0x4D, 0x32, 0xE0, 0x74, 0x20, 0x00, 0x00
	.byte 0x00, 0x4D, 0x2E, 0xE0, 0x45, 0x20, 0x00, 0x00, 0x00, 0x4D, 0x2A, 0xE0, 0x77, 0x20, 0x00, 0x00
	.byte 0x00, 0x4D, 0x26, 0xE0, 0x78, 0x20, 0x00, 0x00, 0x00, 0x4D, 0x22, 0xE0, 0x79, 0x20, 0x00, 0x00
	.byte 0x00, 0x4D, 0x1E, 0xE0, 0x7A, 0x20, 0x00, 0x00, 0x00, 0x4D, 0x1A, 0xE0, 0x7B, 0x20, 0x00, 0x00
	.byte 0x00, 0x4D, 0x16, 0xE0, 0x76, 0x20, 0x00, 0x00, 0x00, 0x4D, 0x12, 0xE0, 0x48, 0x20, 0x00, 0x00
	.byte 0x00, 0x4D, 0x0E, 0xE0, 0x49, 0x20, 0x00, 0x00, 0x00, 0x4D, 0x0A, 0xE0, 0x4A, 0x20, 0x00, 0x00
	.byte 0x00, 0x4D, 0x06, 0xE0, 0x4B, 0x20, 0x00, 0x00, 0x00, 0x4D, 0x02, 0xE0, 0x4C, 0x20, 0x00, 0x00
	.byte 0x04, 0x4D, 0x45, 0x45, 0x00, 0xD1, 0x18, 0xE1, 0x30, 0x1C, 0x29, 0x1C, 0xFC, 0xF7, 0x10, 0xFC
	.byte 0x13, 0xE1, 0x00, 0x00, 0x47, 0x20, 0x00, 0x00
_08083360:
	cmp r1, #0x04
	bne _080833AC
	cmp r5, r4
	bne _080833AC
	mov r0, r10
	cmp r0, #0x00
	bne _080833AC
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0808339E
	adds r0, r3, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x08]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r10, r0
	movs r0, #0x01
	negs r0, r0
	cmp r10, r0
	bne _0808339A
	movs r2, #0x01
	mov r10, r2
_0808339A:
	movs r3, #0x01
	str r3, [sp, #0x00C]
_0808339E:
	adds r2, r7, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080833AC:
	cmp r5, r8
	beq _080833B8
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_807FB78
_080833B8:
	ldr r0, [r7, #0x28]
	str r0, [sp, #0x018]
	cmp r0, #0x00
	bne _080833C2
	b _08083582
_080833C2:
	adds r0, #0x08
	cmp r0, r7
	beq _080833D8
	adds r0, r7, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080833D8
	b _08083582
_080833D8:
	ldr r1, [sp, #0x018]
	ldr r4, [r1, #0x10]
	ldrh r5, [r4, #0x0E]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r10
	ldr r2, [sp, #0x004]
	movs r3, #0x00
	bl sub_801E150
	strh r5, [r4, #0x0E]
	ldrb r1, [r4, #0x12]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x12]
	ldr r2, [sp, #0x010]
	lsls r5, r2, #0x06
	ldrb r1, [r4, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r5
	strb r0, [r4, #0x11]
	adds r0, r4, #0x0
	bl sub_807BC90
	adds r0, r4, #0x0
	adds r0, #0x20
	mov r3, sp
	ldrb r3, [r3, #0x08]
	strb r3, [r0, #0x00]
	ldr r0, [sp, #0x00C]
	lsls r2, r0, #0x04
	ldrb r1, [r4, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x12]
	ldr r1, [sp, #0x018]
	ldr r6, [r1, #0x38]
	cmp r6, #0x00
	beq _0808349A
	mov r8, r5
	adds r7, r2, #0x0
_08083436:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08083494
	ldr r4, [r6, #0x08]
	ldrh r5, [r4, #0x0E]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r10
	ldr r2, [sp, #0x004]
	movs r3, #0x00
	bl sub_801E150
	strh r5, [r4, #0x0E]
	ldrb r0, [r4, #0x12]
	movs r2, #0x09
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	movs r3, #0x41
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r4, #0x11]
	adds r0, r4, #0x0
	bl sub_807BC90
	adds r0, r4, #0x0
	adds r0, #0x20
	mov r2, sp
	ldrb r2, [r2, #0x08]
	strb r2, [r0, #0x00]
	ldrb r0, [r4, #0x12]
	movs r3, #0x11
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	orrs r0, r7
	strb r0, [r4, #0x12]
_08083494:
	ldr r6, [r6, #0x30]
	cmp r6, #0x00
	bne _08083436
_0808349A:
	ldr r0, [sp, #0x018]
	ldr r7, [r0, #0x00]
	cmp r7, #0x00
	bne _080834A4
	b _080835D0
_080834A4:
	cmp r7, r0
	bne _080834AA
	b _080835D0
_080834AA:
	ldr r1, [sp, #0x010]
	lsls r1, r1, #0x06
	str r1, [sp, #0x01C]
	ldr r2, [sp, #0x00C]
	lsls r2, r2, #0x04
	str r2, [sp, #0x020]
_080834B6:
	ldr r4, [r7, #0x10]
	ldrh r5, [r4, #0x0E]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r10
	ldr r2, [sp, #0x004]
	movs r3, #0x00
	bl sub_801E150
	strh r5, [r4, #0x0E]
	ldrb r0, [r4, #0x12]
	movs r3, #0x09
	negs r3, r3
	ands r0, r3
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	ldr r2, [sp, #0x01C]
	orrs r0, r2
	strb r0, [r4, #0x11]
	adds r0, r4, #0x0
	bl sub_807BC90
	adds r0, r4, #0x0
	adds r0, #0x20
	mov r3, sp
	ldrb r3, [r3, #0x08]
	strb r3, [r0, #0x00]
	ldrb r0, [r4, #0x12]
	movs r2, #0x11
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	ldr r3, [sp, #0x020]
	orrs r0, r3
	strb r0, [r4, #0x12]
	ldr r6, [r7, #0x38]
	cmp r6, #0x00
	beq _08083578
	ldr r0, [sp, #0x010]
	lsls r0, r0, #0x06
	mov r9, r0
	ldr r1, [sp, #0x00C]
	lsls r1, r1, #0x04
	mov r8, r1
_08083516:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08083572
	ldr r4, [r6, #0x08]
	ldrh r5, [r4, #0x0E]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r10
	ldr r2, [sp, #0x004]
	movs r3, #0x00
	bl sub_801E150
	strh r5, [r4, #0x0E]
	ldrb r0, [r4, #0x12]
	movs r2, #0x09
	negs r2, r2
	ands r0, r2
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	movs r3, #0x41
	negs r3, r3
	ands r0, r3
	mov r1, r9
	orrs r0, r1
	strb r0, [r4, #0x11]
	adds r0, r4, #0x0
	bl sub_807BC90
	adds r0, r4, #0x0
	adds r0, #0x20
	mov r2, sp
	ldrb r2, [r2, #0x08]
	strb r2, [r0, #0x00]
	ldrb r0, [r4, #0x12]
	movs r3, #0x11
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r4, #0x12]
_08083572:
	ldr r6, [r6, #0x30]
	cmp r6, #0x00
	bne _08083516
_08083578:
	ldr r7, [r7, #0x00]
	ldr r2, [sp, #0x018]
	cmp r7, r2
	bne _080834B6
	b _080835D0
_08083582:
	ldrh r4, [r6, #0x0E]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	mov r1, r10
	ldr r2, [sp, #0x004]
	movs r3, #0x00
	bl sub_801E150
	strh r4, [r6, #0x0E]
	ldrb r1, [r6, #0x12]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x12]
	ldr r3, [sp, #0x010]
	lsls r2, r3, #0x06
	ldrb r1, [r6, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6, #0x11]
	adds r0, r6, #0x0
	bl sub_807BC90
	adds r0, r6, #0x0
	adds r0, #0x20
	mov r1, sp
	ldrb r1, [r1, #0x08]
	strb r1, [r0, #0x00]
	ldr r3, [sp, #0x00C]
	lsls r2, r3, #0x04
	ldrb r1, [r6, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6, #0x12]
_080835D0:
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80835E0
sub_80835E0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r3, r0, #0x0
	ldr r1, [r3, #0x08]
	movs r2, #0x04
	ldsh r0, [r1, r2]
	str r0, [sp, #0x000]
	movs r2, #0x06
	ldsh r0, [r1, r2]
	str r0, [sp, #0x004]
	movs r2, #0x08
	ldsh r0, [r1, r2]
	str r0, [sp, #0x008]
	movs r2, #0x0A
	ldsh r0, [r1, r2]
	str r0, [sp, #0x00C]
	movs r2, #0x0C
	ldsh r0, [r1, r2]
	mov r10, r0
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x010]
	ldrb r0, [r1, #0x12]
	lsls r2, r0, #0x1D
	lsrs r2, r2, #0x1E
	mov r12, r2
	lsls r0, r0, #0x1B
	lsrs r7, r0, #0x1F
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r9, r1
	ldr r0, [r3, #0x28]
	mov r8, r0
	cmp r0, #0x00
	bne _08083636
	b _080837E6
_08083636:
	adds r0, #0x08
	cmp r0, r3
	beq _0808369C
	adds r0, r3, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0808364C
	b _080837E6
_0808364C:
	mov r1, r8
	ldr r2, [r1, #0x10]
	mov r3, sp
	ldrh r3, [r3, #0x00]
	strh r3, [r2, #0x04]
	mov r0, sp
	ldrh r0, [r0, #0x04]
	strh r0, [r2, #0x06]
	mov r1, sp
	ldrh r1, [r1, #0x08]
	strh r1, [r2, #0x08]
	mov r3, sp
	ldrh r3, [r3, #0x0C]
	strh r3, [r2, #0x0A]
	mov r0, r10
	strh r0, [r2, #0x0C]
	ldr r1, [sp, #0x010]
	lsls r3, r1, #0x06
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x11]
	mov r0, r12
	lsls r3, r0, #0x01
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	lsls r3, r7, #0x04
	movs r1, #0x11
	negs r1, r1
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x12]
	adds r2, #0x20
	mov r1, r9
	strb r1, [r2, #0x00]
_0808369C:
	mov r2, r8
	ldr r3, [r2, #0x38]
	cmp r3, #0x00
	beq _08083706
	ldr r0, [sp, #0x010]
	lsls r6, r0, #0x06
	mov r1, r12
	lsls r5, r1, #0x01
	lsls r4, r7, #0x04
_080836AE:
	adds r0, r3, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08083700
	ldr r1, [r3, #0x08]
	mov r2, sp
	ldrh r2, [r2, #0x00]
	strh r2, [r1, #0x04]
	mov r0, sp
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x06]
	mov r2, sp
	ldrh r2, [r2, #0x08]
	strh r2, [r1, #0x08]
	mov r0, sp
	ldrh r0, [r0, #0x0C]
	strh r0, [r1, #0x0A]
	mov r2, r10
	strh r2, [r1, #0x0C]
	ldrb r2, [r1, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r6
	strb r0, [r1, #0x11]
	ldrb r2, [r1, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	orrs r0, r5
	movs r2, #0x11
	negs r2, r2
	ands r0, r2
	orrs r0, r4
	strb r0, [r1, #0x12]
	adds r1, #0x20
	mov r0, r9
	strb r0, [r1, #0x00]
_08083700:
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	bne _080836AE
_08083706:
	mov r1, r8
	ldr r4, [r1, #0x00]
	cmp r4, #0x00
	beq _080837E6
	cmp r4, r8
	beq _080837E6
	ldr r2, [sp, #0x010]
	lsls r2, r2, #0x06
	str r2, [sp, #0x014]
	adds r0, r7, #0x0
	lsls r3, r0, #0x04
	str r3, [sp, #0x020]
	mov r1, r12
	str r1, [sp, #0x018]
	lsls r2, r1, #0x01
	str r2, [sp, #0x01C]
	str r0, [sp, #0x024]
_08083728:
	ldr r1, [r4, #0x10]
	mov r3, sp
	ldrh r3, [r3, #0x00]
	strh r3, [r1, #0x04]
	mov r0, sp
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x06]
	mov r2, sp
	ldrh r2, [r2, #0x08]
	strh r2, [r1, #0x08]
	mov r3, sp
	ldrh r3, [r3, #0x0C]
	strh r3, [r1, #0x0A]
	mov r0, r10
	strh r0, [r1, #0x0C]
	ldrb r2, [r1, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	ldr r2, [sp, #0x014]
	orrs r0, r2
	strb r0, [r1, #0x11]
	ldrb r2, [r1, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	ldr r3, [sp, #0x01C]
	orrs r0, r3
	movs r2, #0x11
	negs r2, r2
	ands r0, r2
	ldr r3, [sp, #0x020]
	orrs r0, r3
	strb r0, [r1, #0x12]
	adds r1, #0x20
	mov r0, r9
	strb r0, [r1, #0x00]
	ldr r3, [r4, #0x38]
	cmp r3, #0x00
	beq _080837E0
	ldr r0, [sp, #0x010]
	movs r1, #0x01
	ands r0, r1
	lsls r7, r0, #0x06
	ldr r0, [sp, #0x018]
	lsls r6, r0, #0x01
	ldr r1, [sp, #0x024]
	lsls r5, r1, #0x04
	mov r12, r2
_0808378A:
	adds r0, r3, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080837DA
	ldr r1, [r3, #0x08]
	mov r2, sp
	ldrh r2, [r2, #0x00]
	strh r2, [r1, #0x04]
	mov r0, sp
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x06]
	mov r2, sp
	ldrh r2, [r2, #0x08]
	strh r2, [r1, #0x08]
	mov r0, sp
	ldrh r0, [r0, #0x0C]
	strh r0, [r1, #0x0A]
	mov r2, r10
	strh r2, [r1, #0x0C]
	ldrb r2, [r1, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r7
	strb r0, [r1, #0x11]
	ldrb r2, [r1, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	orrs r0, r6
	mov r2, r12
	ands r0, r2
	orrs r0, r5
	strb r0, [r1, #0x12]
	adds r1, #0x20
	mov r0, r9
	strb r0, [r1, #0x00]
_080837DA:
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	bne _0808378A
_080837E0:
	ldr r4, [r4, #0x00]
	cmp r4, r8
	bne _08083728
_080837E6:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80837F8
sub_80837F8:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r2, _08083830 @ =0x083B8F0C
	ldrh r6, [r3, #0x02]
	lsrs r1, r6, #0x0E
	ldrh r7, [r3, #0x00]
	lsrs r0, r7, #0x0E
	lsls r0, r0, #0x02
	adds r1, r1, r0
	adds r2, r1, r2
	ldrb r2, [r2, #0x00]
	ldr r0, _08083834 @ =0x083B8F18
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	cmn r4, r2
	blt _08083828
	cmp r4, #0xEF
	bgt _08083828
	cmn r5, r0
	blt _08083828
	cmp r5, #0x9F
	ble _08083838
_08083828:
	movs r0, #0x01
	strh r0, [r3, #0x06]
	b _08083854
	.byte 0x00, 0x00
_08083830: .4byte 0x083B8F0C
_08083834: .4byte 0x083B8F18
_08083838:
	ldr r1, _0808385C @ =0x000001FF
	ands r1, r4
	movs r0, #0xFE
	lsls r0, r0, #0x08
	ands r0, r6
	orrs r0, r1
	strh r0, [r3, #0x02]
	movs r1, #0xFF
	ands r1, r5
	movs r0, #0xFF
	lsls r0, r0, #0x08
	ands r0, r7
	orrs r0, r1
	strh r0, [r3, #0x00]
_08083854:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808385C: .4byte 0x000001FF
	thumb_func_start sub_8083860
sub_8083860:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	str r0, [sp, #0x010]
	ldr r5, [sp, #0x038]
	ldr r0, [sp, #0x03C]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x014]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r10, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	movs r0, #0x03
	bl sub_81980C8
	mov r8, r0
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	add r0, r10
	lsls r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	mov r10, r0
	mov r0, r9
	ands r0, r1
	mov r9, r0
	b _0808391E
_080838B0:
	adds r1, r7, #0x0
	adds r1, #0x08
	ldr r2, [sp, #0x014]
	lsls r0, r2, #0x03
	cmp r1, r0
	bgt _08083924
_080838BC:
	ldrb r4, [r5, #0x00]
	adds r5, #0x01
	cmp r4, #0xFF
	beq _080838BC
	movs r0, #0xFF
	subs r1, r0, r4
	cmp r1, #0x01
	ble _080838D0
	movs r1, #0x00
	b _080838DE
_080838D0:
	lsls r0, r1, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0808391E
	ldrb r4, [r5, #0x00]
	adds r5, #0x01
_080838DE:
	lsls r0, r1, #0x02
	mov r1, r8
	adds r6, r0, r1
	ldr r0, [r6, #0x00]
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	mov r2, r9
	str r2, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldr r0, [sp, #0x010]
	ldr r1, [sp, #0x014]
	adds r2, r7, #0x0
	mov r3, r10
	bl sub_8199E48
	adds r3, r7, #0x1
	adds r1, r4, #0x0
	asrs r1, r1, #0x03
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	movs r0, #0x07
	ands r4, r0
	lsls r2, r4, #0x02
	ldr r0, [r1, #0x04]
	lsrs r0, r2
	movs r1, #0x0F
	ands r0, r1
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0808391E:
	ldrb r0, [r5, #0x00]
	cmp r0, #0x00
	bne _080838B0
_08083924:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8083934
sub_8083934:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	str r0, [sp, #0x010]
	ldr r5, [sp, #0x044]
	ldr r0, [sp, #0x048]
	ldr r4, [sp, #0x04C]
	ldr r6, [sp, #0x050]
	mov r10, r6
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x014]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x018]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x01C]
	cmp r6, #0x00
	bne _08083970
	movs r0, #0x03
	bl sub_81980C8
	ldr r0, [r0, #0x00]
	mov r10, r0
_08083970:
	mov r1, r10
	ldr r0, [r1, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	ldr r2, [sp, #0x018]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #0x09
	adds r0, r0, r6
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	ldr r0, [sp, #0x01C]
	ands r0, r1
	str r0, [sp, #0x01C]
	movs r6, #0x01
	movs r1, #0x0A
	mov r9, r1
	cmp r5, #0x09
	ble _080839AC
_0808399A:
	adds r6, #0x01
	mov r2, r9
	lsls r0, r2, #0x02
	add r0, r9
	lsls r0, r0, #0x01
	mov r9, r0
	subs r0, #0x01
	cmp r0, r5
	blt _0808399A
_080839AC:
	cmp r4, #0x00
	beq _080839DC
	cmp r4, #0x01
	bne _080839C8
	lsls r0, r6, #0x03
	subs r0, r0, r6
	subs r0, r7, r0
	lsls r0, r0, #0x10
	ldr r1, _080839C4 @ =0xFFFF0000
	adds r0, r0, r1
	b _080839DA
	.byte 0x00, 0x00
_080839C4: .4byte 0xFFFF0000
_080839C8:
	cmp r4, #0x02
	bne _080839DC
	lsls r0, r6, #0x03
	subs r0, r0, r6
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r0, r7, r0
	lsls r0, r0, #0x10
_080839DA:
	lsrs r7, r0, #0x10
_080839DC:
	subs r6, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	beq _08083A6E
	ldr r1, _08083A80 @ =0x0819832C
	ldr r0, _08083A84 @ =0x08198220
	subs r1, r1, r0
	str r1, [sp, #0x020]
_080839EE:
	adds r2, r7, #0x7
	mov r8, r2
	ldr r1, [sp, #0x014]
	lsls r0, r1, #0x03
	cmp r8, r0
	bgt _08083A6E
	lsls r0, r5, #0x02
	adds r0, r0, r5
	lsls r5, r0, #0x01
	ldr r0, _08083A88 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r0, [sp, #0x020]
	adds r2, r2, r0
	adds r0, r5, #0x0
	mov r1, r9
	bl _call_via_r2
	adds r4, r0, #0x0
	adds r3, r4, #0x0
	adds r3, #0x30
	adds r1, r3, #0x0
	cmp r3, #0x00
	bge _08083A20
	adds r1, r4, #0x0
	adds r1, #0x37
_08083A20:
	asrs r1, r1, #0x03
	lsls r1, r1, #0x02
	add r1, r10
	movs r0, #0x07
	ands r0, r3
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x04]
	lsrs r1, r0
	movs r0, #0x0F
	ands r1, r0
	movs r2, #0x06
	subs r2, r2, r1
	lsrs r2, r2, #0x01
	adds r2, r7, r2
	mov r1, r10
	str r1, [sp, #0x000]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x01C]
	str r0, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldr r0, [sp, #0x010]
	ldr r1, [sp, #0x014]
	ldr r3, [sp, #0x018]
	bl sub_8199E48
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	mov r0, r9
	muls r0, r4
	subs r5, r5, r0
	subs r6, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	bne _080839EE
_08083A6E:
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08083A80: .4byte 0x0819832C
_08083A84: .4byte 0x08198220
_08083A88: .4byte 0x03001038
	thumb_func_start sub_8083A8C
sub_8083A8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r2, r0, #0x0
	adds r4, r1, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08083AAA
	b _08083C60
_08083AAA:
	ldr r3, [r2, #0x28]
	cmp r3, #0x00
	bne _08083AB2
	b _08083C60
_08083AB2:
	ldr r6, [r2, #0x08]
	cmp r6, #0x00
	bne _08083ABA
	b _08083C60
_08083ABA:
	ldrb r0, [r6, #0x1E]
	movs r1, #0x0F
	ands r1, r0
	cmp r1, #0x01
	bne _08083B5C
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	mov r12, r0
	cmp r1, r12
	bne _08083AD8
	movs r5, #0x00
_08083AD8:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08083AE2
	movs r5, #0x4D
_08083AE2:
	ldr r1, _08083B54 @ =0x0838F776
	lsls r0, r5, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r5, [r0, r1]
	cmp r5, #0x00
	bge _08083AF2
	b _08083C60
_08083AF2:
	lsls r0, r4, #0x03
	adds r0, r0, r4
	ldr r3, _08083B58 @ =0x0838F426
	adds r0, r0, r3
	adds r3, r5, r0
	movs r0, #0x44
	adds r0, r0, r2
	mov r8, r0
	movs r1, #0x45
	adds r1, r1, r2
	mov r9, r1
	movs r0, #0x46
	adds r0, r0, r2
	mov r10, r0
	adds r1, r2, #0x0
	adds r1, #0x47
	str r1, [sp, #0x000]
	adds r0, r2, #0x0
	adds r0, #0x48
	str r0, [sp, #0x004]
	adds r2, #0x49
	str r2, [sp, #0x008]
	cmp r4, #0x00
	bne _08083BD8
	movs r0, #0x00
	ldsb r0, [r3, r0]
	adds r1, r6, #0x0
	adds r1, #0x23
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	beq _08083BD8
	cmp r0, r12
	beq _08083BD8
	adds r7, r1, #0x0
	ldr r2, _08083B58 @ =0x0838F426
	adds r1, r5, r2
	adds r2, r1, #0x0
_08083B3C:
	adds r1, #0x09
	adds r2, #0x09
	adds r4, #0x01
	adds r3, r2, #0x0
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, r7
	beq _08083BD8
	cmp r0, r12
	bne _08083B3C
	b _08083BD8
	.byte 0x00, 0x00
_08083B54: .4byte 0x0838F776
_08083B58: .4byte 0x0838F426
_08083B5C:
	cmp r1, #0x03
	beq _08083B62
	b _08083C60
_08083B62:
	ldr r1, _08083C58 @ =0x0838F44C
	ldrh r0, [r6, #0x16]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r5, [r0, r3]
	cmp r5, #0x00
	bge _08083B74
	b _08083C60
_08083B74:
	lsls r0, r4, #0x03
	adds r0, r0, r4
	ldr r1, _08083C5C @ =0x0838EC7C
	adds r0, r0, r1
	adds r3, r5, r0
	movs r0, #0x44
	adds r0, r0, r2
	mov r8, r0
	movs r1, #0x45
	adds r1, r1, r2
	mov r9, r1
	movs r0, #0x46
	adds r0, r0, r2
	mov r10, r0
	adds r1, r2, #0x0
	adds r1, #0x47
	str r1, [sp, #0x000]
	adds r0, r2, #0x0
	adds r0, #0x48
	str r0, [sp, #0x004]
	adds r2, #0x49
	str r2, [sp, #0x008]
	cmp r4, #0x00
	bne _08083BD8
	movs r0, #0x00
	ldsb r0, [r3, r0]
	adds r1, r6, #0x0
	adds r1, #0x23
	ldrb r2, [r1, #0x00]
	cmp r0, r2
	beq _08083BD8
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _08083BD8
	adds r7, r2, #0x0
	mov r12, r1
	ldr r2, _08083C5C @ =0x0838EC7C
	adds r1, r5, r2
	adds r2, r1, #0x0
_08083BC4:
	adds r1, #0x09
	adds r2, #0x09
	adds r4, #0x01
	adds r3, r2, #0x0
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, r7
	beq _08083BD8
	cmp r0, r12
	bne _08083BC4
_08083BD8:
	movs r5, #0x04
	ldsh r1, [r6, r5]
	movs r0, #0x06
	ldsh r2, [r6, r0]
	movs r0, #0x01
	ldsb r0, [r3, r0]
	muls r0, r1
	cmp r0, #0x00
	bge _08083BEC
	adds r0, #0xFF
_08083BEC:
	asrs r0, r0, #0x08
	mov r5, r8
	strb r0, [r5, #0x00]
	movs r0, #0x02
	ldsb r0, [r3, r0]
	muls r0, r1
	cmp r0, #0x00
	bge _08083BFE
	adds r0, #0xFF
_08083BFE:
	asrs r0, r0, #0x08
	mov r5, r9
	strb r0, [r5, #0x00]
	movs r0, #0x03
	ldsb r0, [r3, r0]
	muls r0, r2
	cmp r0, #0x00
	bge _08083C10
	adds r0, #0xFF
_08083C10:
	asrs r0, r0, #0x08
	mov r5, r10
	strb r0, [r5, #0x00]
	movs r0, #0x04
	ldsb r0, [r3, r0]
	muls r0, r2
	cmp r0, #0x00
	bge _08083C22
	adds r0, #0xFF
_08083C22:
	asrs r0, r0, #0x08
	ldr r2, [sp, #0x000]
	strb r0, [r2, #0x00]
	movs r0, #0x05
	ldsb r0, [r3, r0]
	muls r0, r1
	cmp r0, #0x00
	bge _08083C34
	adds r0, #0xFF
_08083C34:
	asrs r0, r0, #0x08
	ldr r5, [sp, #0x004]
	strb r0, [r5, #0x00]
	movs r0, #0x06
	ldsb r0, [r3, r0]
	muls r0, r1
	cmp r0, #0x00
	bge _08083C46
	adds r0, #0xFF
_08083C46:
	asrs r0, r0, #0x08
	ldr r1, [sp, #0x008]
	strb r0, [r1, #0x00]
	movs r0, #0x08
	ldsb r0, [r3, r0]
	cmp r0, #0x00
	bne _08083C60
	adds r0, r4, #0x1
	b _08083C64
_08083C58: .4byte 0x0838F44C
_08083C5C: .4byte 0x0838EC7C
_08083C60:
	movs r0, #0x01
	negs r0, r0
_08083C64:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_8083C74
sub_8083C74:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08083D58 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08083C8A
	b _08083DF0
_08083C8A:
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	movs r4, #0x0D
	ldr r0, _08083D5C @ =0x03000D74
	ldr r5, [r0, #0x00]
	ldrh r1, [r5, #0x26]
	ldr r6, _08083D60 @ =0x0000FFFF
	mov r8, r0
	ldr r0, _08083D64 @ =0x03001034
	mov r12, r0
	ldr r3, _08083D68 @ =0x08198154
	ldr r7, _08083D6C @ =0x081980D8
	cmp r1, r6
	beq _08083CBE
	adds r2, r6, #0x0
	adds r1, r5, #0x0
	adds r1, #0x26
_08083CB0:
	subs r1, #0x02
	subs r4, #0x01
	ldrh r0, [r1, #0x00]
	cmp r0, r2
	beq _08083CBE
	cmp r4, #0x00
	bne _08083CB0
_08083CBE:
	subs r0, r4, #0x1
	cmp r0, #0x0B
	bhi _08083DBE
	mov r1, r8
	ldr r2, [r1, #0x00]
	lsls r1, r4, #0x01
	adds r0, r2, #0x0
	adds r0, #0x0C
	adds r0, r0, r1
	ldrh r1, [r2, #0x26]
	strh r1, [r0, #0x00]
	subs r0, r3, r7
	mov r2, r12
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _08083D70 @ =0x02000420
	lsls r1, r4, #0x05
	ldr r2, _08083D74 @ =0x02000280
	adds r1, r1, r2
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, _08083D78 @ =0x0300034C
	movs r3, #0x01
	lsls r3, r4
	ldrh r1, [r2, #0x00]
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldr r2, [r0, #0x30]
	cmp r2, #0x00
	beq _08083D2C
	movs r6, #0x20
	movs r5, #0x80
	lsls r5, r5, #0x06
	ldr r4, _08083D7C @ =0x0000DFFF
_08083D0A:
	ldrb r1, [r2, #0x12]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08083D26
	ldrh r1, [r2, #0x14]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08083D26
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r3
	strh r0, [r2, #0x14]
_08083D26:
	ldr r2, [r2, #0x68]
	cmp r2, #0x00
	bne _08083D0A
_08083D2C:
	ldr r7, _08083D58 @ =0x03000FD8
	movs r6, #0x00
	movs r5, #0x00
_08083D32:
	ldr r0, [r7, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r2, r6, r0
	ldrb r1, [r2, #0x01]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0D
	bne _08083D80
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _08083D80
	lsls r1, r5, #0x18
	b _08083DAA
_08083D58: .4byte 0x03000FD8
_08083D5C: .4byte 0x03000D74
_08083D60: .4byte 0x0000FFFF
_08083D64: .4byte 0x03001034
_08083D68: .4byte 0x08198154
_08083D6C: .4byte 0x081980D8
_08083D70: .4byte 0x02000420
_08083D74: .4byte 0x02000280
_08083D78: .4byte 0x0300034C
_08083D7C: .4byte 0x0000DFFF
_08083D80:
	adds r1, r6, #0x0
	adds r1, #0x1C
	adds r4, r5, #0x1
	ldr r0, [r7, #0x00]
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r2, r1, r0
	ldrb r1, [r2, #0x01]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0D
	bne _08083DB6
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _08083DB6
	lsls r1, r4, #0x18
_08083DAA:
	lsrs r1, r1, #0x18
	adds r0, r3, #0x0
	movs r2, #0x00
	bl sub_8115048
	b _08083DBE
_08083DB6:
	adds r6, #0x38
	adds r5, #0x02
	cmp r5, #0x07
	ble _08083D32
_08083DBE:
	ldr r0, _08083DFC @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x24]
	strh r0, [r1, #0x26]
	ldr r2, _08083E00 @ =0x03001034
	ldr r0, _08083E04 @ =0x08198154
	ldr r1, _08083E08 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _08083E0C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08083E10 @ =0x00003C90
	adds r0, r0, r1
	ldr r1, _08083E14 @ =0x02000420
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, _08083E18 @ =0x0300034C
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
_08083DF0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08083DFC: .4byte 0x03000D74
_08083E00: .4byte 0x03001034
_08083E04: .4byte 0x08198154
_08083E08: .4byte 0x081980D8
_08083E0C: .4byte 0x03000FDC
_08083E10: .4byte 0x00003C90
_08083E14: .4byte 0x02000420
_08083E18: .4byte 0x0300034C
	thumb_func_start sub_8083E1C
sub_8083E1C:
	push {lr}
	ldr r2, _08083E54 @ =0x03001034
	ldr r0, _08083E58 @ =0x08198154
	ldr r1, _08083E5C @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _08083E60 @ =0x02000420
	ldr r1, _08083E64 @ =0x03000FDC
	ldr r1, [r1, #0x00]
	ldr r2, _08083E68 @ =0x00003C90
	adds r1, r1, r2
	movs r2, #0x20
	bl _call_via_r3
	ldr r0, _08083E6C @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, _08083E70 @ =0x0000FFFF
	strh r0, [r1, #0x26]
	ldr r0, _08083E74 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x0C]
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08083E54: .4byte 0x03001034
_08083E58: .4byte 0x08198154
_08083E5C: .4byte 0x081980D8
_08083E60: .4byte 0x02000420
_08083E64: .4byte 0x03000FDC
_08083E68: .4byte 0x00003C90
_08083E6C: .4byte 0x03000D74
_08083E70: .4byte 0x0000FFFF
_08083E74: .4byte 0x03000FD8
