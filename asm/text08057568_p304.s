	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F7BB4
sub_80F7BB4:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x00
	ldr r0, [r0, #0x28]
	ldr r1, [r0, #0x00]
_080F7BC0:
	ldrb r0, [r1, #0x0F]
	cmp r0, #0x00
	beq _080F7BDA
	ldrb r0, [r1, #0x0C]
	ldr r3, [r5, #0x00]
	cmp r0, r3
	beq _080F7BD2
	cmp r3, #0x3F
	bne _080F7BDA
_080F7BD2:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080F7BEE
_080F7BDA:
	lsls r0, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r0, r2
	adds r1, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080F7BC0
	movs r0, #0x01
_080F7BEE:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80F7BF4
sub_80F7BF4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r4, #0x00
	ldr r0, [r5, #0x28]
	ldr r3, [r0, #0x00]
_080F7BFE:
	ldrb r0, [r3, #0x0F]
	cmp r0, #0x00
	beq _080F7C22
	ldrb r1, [r3, #0x0C]
	ldr r0, [r2, #0x00]
	cmp r1, r0
	bne _080F7C22
	lsls r0, r4, #0x18
	ldr r1, [r5, #0x28]
	lsrs r0, r0, #0x14
	ldr r4, [r1, #0x00]
	adds r4, r4, r0
	ldr r0, [r4, #0x00]
	bl sub_807FB64
	movs r0, #0x00
	strb r0, [r4, #0x0F]
	b _080F7C34
_080F7C22:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	adds r3, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080F7BFE
_080F7C34:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80F7C3C
sub_80F7C3C:
	push {lr}
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080F7C60
	cmp r2, #0x01
	bgt _080F7C4E
	cmp r2, #0x00
	beq _080F7C54
	b _080F7C70
_080F7C4E:
	cmp r2, #0x02
	beq _080F7C6C
	b _080F7C70
_080F7C54:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x00
	bl sub_807F6EC
	b _080F7C70
_080F7C60:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x01
	bl sub_807F6EC
	b _080F7C70
_080F7C6C:
	bl sub_807F6D0
_080F7C70:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F7C78
sub_80F7C78:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	ldr r5, _080F7CC0 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F7CB8
	bl sub_80E3CF4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F7CB8
	ldr r2, [r5, #0x00]
	ldr r1, _080F7CC4 @ =0x000002BF
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080F7CB8
	movs r1, #0xBC
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080F7CC8
_080F7CB8:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080F7CCA
_080F7CC0: .4byte 0x03000FD8
_080F7CC4: .4byte 0x000002BF
_080F7CC8:
	movs r0, #0x01
_080F7CCA:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80F7CD0
sub_80F7CD0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r2, #0x0
	ldr r2, [r4, #0x00]
	movs r1, #0x01
	ands r1, r2
	negs r0, r1
	orrs r0, r1
	asrs r1, r0, #0x1F
	movs r0, #0x04
	ands r1, r0
	movs r5, #0x00
	cmp r2, #0x01
	ble _080F7CEE
	ldr r5, _080F7D08 @ =0x00007FFF
_080F7CEE:
	ldr r2, [r4, #0x04]
	ldrh r3, [r4, #0x08]
	ldrh r0, [r4, #0x0C]
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	bl sub_807F708
	movs r0, #0x01
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
_080F7D08: .4byte 0x00007FFF
	thumb_func_start sub_80F7D0C
sub_80F7D0C:
	push {r4, lr}
	adds r4, r2, #0x0
	ldr r2, [r4, #0x00]
	movs r1, #0x01
	ands r1, r2
	negs r0, r1
	orrs r0, r1
	asrs r3, r0, #0x1F
	movs r0, #0x04
	ands r3, r0
	movs r1, #0x00
	cmp r2, #0x01
	ble _080F7D28
	ldr r1, _080F7D38 @ =0x00007FFF
_080F7D28:
	ldr r2, [r4, #0x04]
	adds r0, r3, #0x0
	bl sub_807F754
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
_080F7D38: .4byte 0x00007FFF
