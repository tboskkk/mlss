	.include "asm/macros.inc"

	.syntax unified
	.text

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
