	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80DE980
sub_80DE980:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x8D
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_810DD7C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_80DE9A0
sub_80DE9A0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DE9E4
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x0F
	cmp r1, r0
	beq _080DE9CA
	movs r2, #0x11
_080DE9CA:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	ldr r0, _080DE9EC @ =0x080DE781
	str r0, [r4, #0x4C]
_080DE9E4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DE9EC: .4byte sub_80DE780
	thumb_func_start sub_80DE9F0
sub_80DE9F0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _080DEA24 @ =0x080DEC61
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x28]
	ldr r1, _080DEA28 @ =0x00000113
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080DEA1C
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x01
	bl sub_80F7068
	ldr r0, [r4, #0x28]
	ldr r2, _080DEA28 @ =0x00000113
	adds r1, r0, r2
	movs r0, #0x00
	strb r0, [r1, #0x00]
_080DEA1C:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
_080DEA24: .4byte sub_80DEC60
_080DEA28: .4byte 0x00000113
	thumb_func_start sub_80DEA2C
sub_80DEA2C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0x98
	ldr r0, [r7, #0x2C]
	ldr r5, [r0, #0x28]
	adds r0, r5, #0x0
	adds r0, #0xE0
	ldr r6, [r0, #0x00]
	str r6, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAE
	adds r1, #0x18
	adds r2, r7, #0x0
	adds r2, #0xB2
	adds r3, r5, #0x0
	adds r3, #0xD8
	ldr r3, [r3, #0x00]
	ldr r4, [r7, #0x38]
	subs r3, r3, r4
	adds r4, r5, #0x0
	adds r4, #0xDC
	ldr r4, [r4, #0x00]
	ldr r5, [r7, #0x3C]
	subs r4, r4, r5
	str r4, [sp, #0x000]
	ldr r4, [r7, #0x40]
	subs r6, r6, r4
	str r6, [sp, #0x004]
	movs r4, #0xA0
	lsls r4, r4, #0x06
	str r4, [sp, #0x008]
	ldr r4, _080DEA90 @ =0x000007CC
	str r4, [sp, #0x00C]
	movs r4, #0xFD
	str r4, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	ldr r0, _080DEA94 @ =0x080DE5E5
	str r0, [r7, #0x4C]
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080DEA90: .4byte 0x000007CC
_080DEA94: .4byte sub_80DE5E4
	thumb_func_start sub_80DEA98
sub_80DEA98:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DEABA
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_8087540
_080DEABA:
	pop {r4}
	pop {r0}
	bx r0
