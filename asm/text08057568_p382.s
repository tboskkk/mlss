	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_805C908
sub_805C908:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _0805C964 @ =0x03000DD0
	ldrb r0, [r0, #0x0A]
	cmp r0, #0x00
	beq _0805C95A
	ldr r1, _0805C968 @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	movs r6, #0x00
_0805C926:
	adds r4, r6, #0x0
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x10]
	lsls r0, r0, #0x09
	lsrs r0, r0, #0x18
	cmp r0, r7
	bne _0805C942
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_805B618
_0805C942:
	adds r0, r6, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrb r1, [r0, #0x13]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805C926
_0805C95A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805C964: .4byte 0x03000DD0
_0805C968: .4byte 0x083B7108
	.byte 0x70, 0xB5, 0x1E, 0x1C, 0x12, 0x04, 0x89, 0x04, 0x0D, 0x0C, 0x00, 0x23, 0x92, 0x0B, 0x93, 0x42
	.byte 0x0E, 0xDA, 0x04, 0x1C, 0xA8, 0x34, 0xE9, 0x18, 0x20, 0x68, 0x49, 0x00, 0x09, 0x18, 0x58, 0x00
	.byte 0x80, 0x19, 0x00, 0x88, 0x08, 0x80, 0x58, 0x1C, 0x00, 0x04, 0x03, 0x0C, 0x93, 0x42, 0xF2, 0xDB
	.byte 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_805C9A4
sub_805C9A4:
	push {r4, lr}
	add sp, #-0x004
	lsls r1, r1, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x10
	ldr r4, _0805C9D4 @ =0x08940C9C
	lsrs r3, r3, #0x0E
	adds r3, r3, r4
	ldr r0, [r3, #0x00]
	adds r0, r0, r4
	lsrs r1, r1, #0x0B
	ldr r3, _0805C9D8 @ =0x06004000
	adds r1, r1, r3
	lsrs r2, r2, #0x13
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C9D4: .4byte 0x08940C9C
_0805C9D8: .4byte 0x06004000
	thumb_func_start sub_805C9DC
sub_805C9DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x008]
	ldrb r7, [r0, #0x0A]
	cmp r7, #0x00
	beq _0805C9FA
	movs r0, #0x00
	b _0805CB10
_0805C9FA:
	movs r6, #0x80
	lsls r6, r6, #0x02
	ldr r2, _0805CB20 @ =0x081E2830
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	mov r0, r8
	str r1, [r0, #0x04]
	ldr r4, _0805CB24 @ =0x083A7894
	ldr r2, [sp, #0x008]
	lsls r5, r2, #0x04
	adds r0, r5, r4
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x004]
	ldr r2, _0805CB28 @ =0x01000080
	add r0, sp, #0x004
	bl CpuFastSet
	mov r1, r8
	ldr r0, [r1, #0x04]
	ldr r1, _0805CB2C @ =0x06003E00
	movs r2, #0x02
	str r2, [sp, #0x000]
	adds r2, r6, #0x0
	movs r3, #0x20
	bl sub_8018218
	movs r0, #0xA0
	lsls r0, r0, #0x03
	ldr r2, _0805CB30 @ =0x081E2838
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	mov r2, r8
	str r1, [r2, #0x00]
	str r7, [sp, #0x004]
	ldr r2, _0805CB34 @ =0x01000140
	add r0, sp, #0x004
	bl CpuFastSet
	adds r4, #0x04
	adds r5, r5, r4
	ldr r5, [r5, #0x00]
	mov r10, r5
	movs r1, #0x00
	mov r7, r8
	ldr r6, [r7, #0x00]
_0805CA62:
	movs r4, #0x00
	lsls r0, r1, #0x04
	adds r2, r1, #0x1
	mov r9, r2
	lsls r7, r1, #0x05
	str r7, [sp, #0x00C]
	subs r0, r0, r1
	mov r12, r0
	movs r2, #0x13
	subs r0, r2, r1
	lsls r5, r0, #0x05
_0805CA78:
	ldr r7, [sp, #0x00C]
	adds r1, r7, r4
	lsls r1, r1, #0x01
	adds r1, r1, r6
	mov r0, r12
	adds r3, r0, r4
	add r3, r10
	ldr r2, _0805CB38 @ =0x0000F1F0
	adds r0, r2, #0x0
	ldrb r7, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	subs r2, #0x1D
	ldr r0, [sp, #0x00C]
	subs r1, r0, r2
	lsls r1, r1, #0x01
	adds r1, r1, r6
	ldr r7, _0805CB3C @ =0x0000F5F0
	adds r0, r7, #0x0
	ldrb r7, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	adds r1, r5, r4
	lsls r1, r1, #0x01
	adds r1, r1, r6
	ldr r7, _0805CB40 @ =0x0000F9F0
	adds r0, r7, #0x0
	ldrb r7, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	subs r2, r5, r2
	lsls r2, r2, #0x01
	adds r2, r2, r6
	ldr r1, _0805CB44 @ =0x0000FDF0
	adds r0, r1, #0x0
	ldrb r3, [r3, #0x00]
	adds r0, r0, r3
	strh r0, [r2, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x0E
	bls _0805CA78
	mov r2, r9
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x09
	bls _0805CA62
	ldr r1, _0805CB48 @ =0x06003000
	movs r2, #0xA0
	lsls r2, r2, #0x03
	movs r0, #0x02
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x20
	bl sub_8018218
	ldr r1, _0805CB4C @ =0x02000008
	movs r7, #0xC0
	lsls r7, r7, #0x03
	adds r0, r7, #0x0
	strh r0, [r1, #0x00]
	ldr r0, _0805CB50 @ =0x02000010
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	movs r0, #0x00
	mov r1, sp
	ldrb r2, [r1, #0x08]
	mov r1, r8
	strb r2, [r1, #0x0B]
	strh r0, [r1, #0x08]
	movs r0, #0x01
	strb r0, [r1, #0x0A]
_0805CB10:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0805CB20: .4byte 0x081E2830
_0805CB24: .4byte 0x083A7894
_0805CB28: .4byte 0x01000080
_0805CB2C: .4byte 0x06003E00
_0805CB30: .4byte 0x081E2838
_0805CB34: .4byte 0x01000140
_0805CB38: .4byte 0x0000F1F0
_0805CB3C: .4byte 0x0000F5F0
_0805CB40: .4byte 0x0000F9F0
_0805CB44: .4byte 0x0000FDF0
_0805CB48: .4byte 0x06003000
_0805CB4C: .4byte 0x02000008
_0805CB50: .4byte 0x02000010
	thumb_func_start sub_805CB54
sub_805CB54:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldrb r0, [r4, #0x0A]
	cmp r0, #0x00
	bne _0805CB6A
_0805CB66:
	movs r0, #0x00
	b _0805CC6E
_0805CB6A:
	ldr r1, _0805CBC0 @ =0x083A7894
	ldrb r0, [r4, #0x0B]
	lsls r0, r0, #0x04
	adds r1, #0x08
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	movs r1, #0x00
	ldr r6, [r4, #0x04]
_0805CB7C:
	ldrh r0, [r4, #0x08]
	adds r2, r1, #0x1
	mov r8, r2
	cmp r1, r0
	bhi _0805CC02
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x0F
	bls _0805CB92
	movs r7, #0x0F
_0805CB92:
	movs r3, #0x00
	movs r0, #0x03
	mov r12, r0
	lsls r5, r1, #0x05
_0805CB9A:
	lsrs r0, r3, #0x02
	lsls r0, r0, #0x04
	adds r0, r0, r7
	add r0, r9
	ldrb r2, [r0, #0x00]
	mov r0, r12
	bics r0, r3
	lsls r0, r0, #0x01
	asrs r2, r0
	mov r1, r12
	ands r2, r1
	cmp r2, #0x01
	beq _0805CBD8
	cmp r2, #0x01
	bgt _0805CBC4
	cmp r2, #0x00
	beq _0805CBCE
	b _0805CBF6
	.byte 0x00, 0x00
_0805CBC0: .4byte 0x083A7894
_0805CBC4:
	cmp r2, #0x02
	beq _0805CBE2
	cmp r2, #0x03
	beq _0805CBEC
	b _0805CBF6
_0805CBCE:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	strb r2, [r0, #0x00]
	b _0805CBF6
_0805CBD8:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	movs r1, #0x90
	b _0805CBF4
_0805CBE2:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	movs r1, #0x09
	b _0805CBF4
_0805CBEC:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	movs r1, #0x99
_0805CBF4:
	strb r1, [r0, #0x00]
_0805CBF6:
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r6, [r4, #0x04]
	cmp r3, #0x1F
	bls _0805CB9A
_0805CC02:
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x0F
	bls _0805CB7C
	ldr r1, _0805CC5C @ =0x06003E00
	movs r2, #0x80
	lsls r2, r2, #0x02
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x20
	bl sub_8018218
	ldrh r0, [r4, #0x08]
	adds r0, #0x01
	strh r0, [r4, #0x08]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0805CC6C
	movs r0, #0x00
	strb r0, [r4, #0x0A]
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0805CC3A
	bl free_heap_8018D9C
_0805CC3A:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0805CC44
	bl free_heap_8018D9C
_0805CC44:
	ldr r0, _0805CC60 @ =0x083A7894
	ldrb r1, [r4, #0x0B]
	lsls r1, r1, #0x04
	adds r1, r1, r0
	ldrb r0, [r1, #0x0C]
	cmp r0, #0x00
	beq _0805CB66
	ldr r1, _0805CC64 @ =0x02000008
	ldr r2, _0805CC68 @ =0x00001508
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	b _0805CB66
_0805CC5C: .4byte 0x06003E00
_0805CC60: .4byte 0x083A7894
_0805CC64: .4byte 0x02000008
_0805CC68: .4byte 0x00001508
_0805CC6C:
	movs r0, #0x01
_0805CC6E:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x10, 0xB5, 0x04, 0x1C, 0x00, 0x20, 0xA0, 0x72, 0x60, 0x68, 0x00, 0x28, 0x01, 0xD0, 0xBC, 0xF7
	.byte 0x87, 0xF8, 0x20, 0x68, 0x00, 0x28, 0x01, 0xD0, 0xBC, 0xF7, 0x82, 0xF8, 0x06, 0x48, 0xE1, 0x7A
	.byte 0x09, 0x01, 0x09, 0x18, 0x08, 0x7B, 0x00, 0x28, 0x03, 0xD0, 0x04, 0x49, 0x04, 0x4A, 0x10, 0x1C
	.byte 0x08, 0x80, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x94, 0x78, 0x3A, 0x08, 0x08, 0x00, 0x00, 0x02
	.byte 0x08, 0x15, 0x00, 0x00
