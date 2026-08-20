	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F08C0
sub_80F08C0:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	movs r0, #0x00
	movs r1, #0x03
	movs r2, #0x00
	bl sub_8116B48
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x00
	bne _080F08F8
	movs r0, #0x00
	movs r1, #0x00
	movs r2, #0x01
	bl sub_811795C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x00
	bne _080F08F8
	movs r0, #0x01
	movs r1, #0x00
	movs r2, #0x01
	bl sub_811795C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080F08F8:
	movs r1, #0x00
	cmp r0, #0x00
	bne _080F0900
	movs r1, #0x01
_080F0900:
	ldm r4!, {r0}
	cmp r1, r0
	bne _080F090A
	ldr r0, [r4, #0x00]
	str r0, [r5, #0x00]
_080F090A:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F0914
sub_80F0914:
	push {lr}
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	beq _080F0922
	cmp r2, #0x01
	beq _080F092A
	b _080F0930
_080F0922:
	ldr r0, [r0, #0x14]
	bl sub_8028F40
	b _080F0930
_080F092A:
	ldr r0, [r0, #0x14]
	bl sub_8028F2C
_080F0930:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F0938
sub_80F0938:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r2, #0x00]
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	beq _080F094E
	ldr r0, [r3, #0x14]
	bl sub_80290CC
	b _080F0954
_080F094E:
	ldr r0, [r3, #0x14]
	bl sub_8029070
_080F0954:
	movs r0, #0x00
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F095C
sub_80F095C:
	push {lr}
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	blt _080F097C
	cmp r1, #0x01
	ble _080F096E
	cmp r1, #0x02
	beq _080F0976
	b _080F097C
_080F096E:
	ldr r0, [r0, #0x14]
	bl sub_8029170
	b _080F097C
_080F0976:
	ldr r0, [r0, #0x14]
	bl sub_80291C8
_080F097C:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F0984
sub_80F0984:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, [r0, #0x14]
	bl sub_8027378
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	beq _080F099A
	movs r0, #0x01
	b _080F09A0
_080F099A:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
_080F09A0:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F09A8
sub_80F09A8:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r1, r2, #0x0
	ldr r4, [r0, #0x14]
	ldr r0, [r1, #0x00]
	movs r5, #0x01
	cmp r0, #0x00
	beq _080F09BA
	movs r5, #0x02
_080F09BA:
	ldr r2, [r1, #0x04]
	ldr r3, [r1, #0x08]
	ldr r0, [r1, #0x0C]
	lsls r0, r0, #0x05
	orrs r3, r0
	ldr r0, [r1, #0x10]
	lsls r0, r0, #0x0A
	orrs r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldrh r0, [r1, #0x14]
	str r0, [sp, #0x000]
	ldrh r0, [r1, #0x18]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_8027030
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80F09E8
sub_80F09E8:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r3, r0, #0x0
	adds r1, r2, #0x0
	ldr r2, [r1, #0x00]
	movs r0, #0x02
	ands r0, r2
	movs r5, #0x00
	cmp r0, #0x00
	beq _080F09FE
	ldr r5, _080F0A2C @ =0x00007FFF
_080F09FE:
	ldr r3, [r3, #0x14]
	movs r0, #0x01
	ands r2, r0
	movs r4, #0x01
	cmp r2, #0x00
	beq _080F0A0C
	movs r4, #0x02
_080F0A0C:
	ldr r2, [r1, #0x04]
	ldrh r0, [r1, #0x08]
	str r0, [sp, #0x000]
	ldrh r0, [r1, #0x0C]
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	adds r3, r5, #0x0
	bl sub_8027030
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F0A2C: .4byte 0x00007FFF
	thumb_func_start sub_80F0A30
sub_80F0A30:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r4, r2, #0x0
	movs r5, #0x00
	ldm r4!, {r0}
	cmp r0, #0x05
	bhi _080F0AC0
	lsls r0, r0, #0x02
	ldr r1, _080F0A4C @ =0x080F0A50
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F0A4C: .4byte 0x080F0A50
	.byte 0x68, 0x0A, 0x0F, 0x08, 0x6E, 0x0A, 0x0F, 0x08, 0x74, 0x0A, 0x0F, 0x08, 0x80, 0x0A, 0x0F, 0x08
	.byte 0x8E, 0x0A, 0x0F, 0x08, 0x8C, 0x0A, 0x0F, 0x08, 0x01, 0x25, 0x00, 0x23, 0x29, 0xE0, 0x02, 0x25
	.byte 0x00, 0x23, 0x26, 0xE0, 0x01, 0x25, 0x01, 0x4B, 0x23, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x02, 0x25, 0x01, 0x4B, 0x1D, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x25, 0x70, 0x69
	.byte 0x80, 0x22, 0x92, 0x00, 0x81, 0x18, 0x09, 0x68, 0x54, 0x31, 0x09, 0x78, 0x03, 0xAB, 0x02, 0xAA
	.byte 0x38, 0xF7, 0xF2, 0xF9, 0x70, 0x69, 0xA9, 0x1D, 0x22, 0x68, 0x02, 0x9B, 0x1B, 0x04, 0x1B, 0x14
	.byte 0x03, 0x9C, 0x10, 0x3C, 0x24, 0x04, 0x24, 0x14, 0x00, 0x94, 0x36, 0xF7, 0x55, 0xFB, 0x08, 0xE0
_080F0AC0:
	ldrh r5, [r4, #0x00]
	ldr r2, [r4, #0x00]
	ldr r0, [r6, #0x14]
	ldr r1, _080F0ADC @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	adds r1, r5, #0x0
	bl sub_8027030
	movs r0, #0x01
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080F0ADC: .4byte 0x0000FFFF
	thumb_func_start sub_80F0AE0
sub_80F0AE0:
	push {lr}
	adds r1, r0, #0x0
	ldr r2, [r2, #0x00]
	asrs r0, r2, #0x01
	movs r3, #0x01
	ands r0, r3
	cmp r0, #0x00
	bne _080F0B04
	ldr r1, [r1, #0x14]
	adds r1, #0xF9
	ands r2, r3
	lsls r3, r2, #0x02
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0x00]
_080F0B04:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F0B0C
sub_80F0B0C:
	push {lr}
	adds r3, r2, #0x0
	ldr r1, _080F0B44 @ =0x083B7108
	ldr r0, _080F0B48 @ =0x03000DD0
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	ldr r2, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrh r2, [r0, #0x10]
	lsls r2, r2, #0x11
	lsrs r2, r2, #0x01
	movs r0, #0xE4
	lsls r0, r0, #0x13
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	ldrb r3, [r3, #0x04]
	movs r0, #0x00
	movs r1, #0x00
	bl sub_80E9958
	movs r0, #0x01
	pop {r1}
	bx r1
_080F0B44: .4byte 0x083B7108
_080F0B48: .4byte 0x03000DD0
	thumb_func_start sub_80F0B4C
sub_80F0B4C:
	push {lr}
	adds r2, r1, #0x0
	ldr r0, _080F0B68 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	ldr r1, _080F0B6C @ =0x0000055E
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	ldr r0, _080F0B70 @ =0x0000603F
	ands r0, r1
	cmp r0, #0x00
	bne _080F0B74
	movs r0, #0x01
	b _080F0B7A
	.byte 0x00, 0x00
_080F0B68: .4byte 0x03000FD0
_080F0B6C: .4byte 0x0000055E
_080F0B70: .4byte 0x0000603F
_080F0B74:
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x00]
	movs r0, #0x00
_080F0B7A:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
