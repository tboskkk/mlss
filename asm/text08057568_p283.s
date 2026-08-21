	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_814BD08
sub_814BD08:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	add r4, sp, #0x010
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814BD72
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x28]
	mov r0, sp
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814BD7C @ =0x03001038
	ldr r0, _0814BD80 @ =0x0819832C
	ldr r1, _0814BD84 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r2
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x0E
	adds r2, r3, r0
	asrs r2, r2, #0x10
	ldr r0, _0814BD88 @ =0xFFE00000
	adds r3, r3, r0
	asrs r3, r3, #0x10
	mov r0, sp
	adds r1, r4, #0x0
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814BD72
	ldr r0, _0814BD8C @ =0x08149B81
	str r0, [r7, #0x00]
_0814BD72:
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814BD7C: .4byte 0x03001038
_0814BD80: .4byte 0x0819832C
_0814BD84: .4byte 0x08198220
_0814BD88: .4byte 0xFFE00000
_0814BD8C: .4byte sub_8149B80
	thumb_func_start sub_814BD90
sub_814BD90:
	push {r4, r5, lr}
	mov r12, r1
	movs r4, #0xB1
	lsls r4, r4, #0x02
	add r4, r12
	ldr r1, [r1, #0x14]
	mov r5, r12
	ldr r3, [r5, #0x18]
	adds r1, r1, r3
	str r1, [r4, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	add r3, r12
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	add r1, r12
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r3, #0xEB
	lsls r3, r3, #0x01
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0814BDF8 @ =0x0814BEA9
	str r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0814BDF8: .4byte sub_814BEA8
	.byte 0xEB, 0x20, 0x40, 0x00, 0x0B, 0x18, 0x19, 0x78, 0x02, 0x20, 0x40, 0x42, 0x08, 0x40, 0x02, 0x21
	.byte 0x08, 0x43, 0x18, 0x70, 0x01, 0x48, 0x10, 0x60, 0x70, 0x47, 0x00, 0x00, 0x29, 0xBF, 0x14, 0x08
	thumb_func_start sub_814BE1C
sub_814BE1C:
	push {r4, r5, lr}
	mov r12, r1
	movs r4, #0xB1
	lsls r4, r4, #0x02
	add r4, r12
	ldr r1, [r1, #0x14]
	mov r5, r12
	ldr r3, [r5, #0x18]
	adds r1, r1, r3
	str r1, [r4, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	add r3, r12
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	add r1, r12
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r3, #0xEB
	lsls r3, r3, #0x01
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0814BE84 @ =0x0814BFCD
	str r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0814BE84: .4byte sub_814BFCC
	.byte 0xEB, 0x20, 0x40, 0x00, 0x0B, 0x18, 0x19, 0x78, 0x02, 0x20, 0x40, 0x42, 0x08, 0x40, 0x02, 0x21
	.byte 0x08, 0x43, 0x18, 0x70, 0x01, 0x48, 0x10, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA5, 0x95, 0x14, 0x08
