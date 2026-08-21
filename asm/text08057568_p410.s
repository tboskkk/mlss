	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_807FB64
sub_807FB64:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_807BDDC
	adds r0, r4, #0x0
	bl sub_80842D8
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_807FB78
sub_807FB78:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	bl sub_807BDDC
	ldrb r1, [r4, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x13]
	movs r5, #0x01
	negs r5, r5
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	adds r0, r4, #0x0
	movs r1, #0x00
	adds r2, r6, #0x0
	movs r3, #0x01
	bl sub_80210A8
	ldrb r0, [r4, #0x13]
	movs r1, #0x04
	orrs r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r4, #0x13]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sub_80842D8
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807FBD8
sub_807FBD8:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r0, _0807FC04 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r3, [sp, #0x000]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl sub_8082C20
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807FC04: .4byte 0x03000FD8
	thumb_func_start sub_807FC08
sub_807FC08:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r0, _0807FC34 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r3, [sp, #0x000]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl sub_8082C58
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807FC34: .4byte 0x03000FD8
	.byte 0x00, 0xB5, 0x01, 0x1C, 0x04, 0x48, 0x00, 0x68, 0x93, 0x22, 0x92, 0x00, 0x80, 0x18, 0x00, 0x68
	.byte 0x02, 0xF0, 0x90, 0xFF, 0x01, 0xBC, 0x00, 0x47, 0xD8, 0x0F, 0x00, 0x03
