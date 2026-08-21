	.syntax unified
	.text

	thumb_func_start sub_80F7B1C
sub_80F7B1C:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r4, r2, #0x0
	adds r5, r3, #0x0
	ldr r6, [sp, #0x020]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	cmp r3, #0x07
	bgt _080F7B44
	ldr r2, _080F7B40 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x08
	b _080F7B56
_080F7B40: .4byte 0x03000FD8
_080F7B44:
	ldr r1, _080F7BAC @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, _080F7BB0 @ =0x03000FD8
_080F7B56:
	cmp r4, #0x00
	bne _080F7B5C
	add r4, sp, #0x004
_080F7B5C:
	cmp r5, #0x00
	bne _080F7B62
	add r5, sp, #0x008
_080F7B62:
	cmp r6, #0x00
	bne _080F7B68
	add r6, sp, #0x00C
_080F7B68:
	ldr r0, [r1, #0x38]
	cmp r0, #0x00
	bge _080F7B70
	adds r0, #0xFF
_080F7B70:
	asrs r0, r0, #0x08
	str r0, [r4, #0x00]
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _080F7B7C
	adds r0, #0xFF
_080F7B7C:
	asrs r0, r0, #0x08
	str r0, [r5, #0x00]
	ldr r0, [r1, #0x40]
	cmp r0, #0x00
	bge _080F7B88
	adds r0, #0xFF
_080F7B88:
	asrs r0, r0, #0x08
	str r0, [r6, #0x00]
	ldr r0, [r2, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl sub_8082C58
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080F7BAC: .4byte 0x03000FDC
_080F7BB0: .4byte 0x03000FD8
