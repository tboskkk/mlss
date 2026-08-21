	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80ED7D4
sub_80ED7D4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r5, r3, #0x0
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8047364
	ldr r1, [r5, #0x0C]
	adds r0, r4, #0x0
	bl sub_8047258
	ldr r0, [r5, #0x0C]
	cmp r0, #0x00
	beq _080ED812
	movs r1, #0x86
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	movs r2, #0x87
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	ldr r3, _080ED868 @ =0x00000215
	adds r2, r4, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_080ED812:
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	adds r2, #0x90
	movs r3, #0x00
	ldsh r0, [r2, r3]
	adds r0, r4, r0
	ldrb r1, [r5, #0x00]
	ldr r2, [r2, #0x04]
	bl _call_via_r2
	ldr r1, [r5, #0x04]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x1C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r2, [r1, #0x00]
	ldrb r3, [r5, #0x0C]
	ldrb r1, [r5, #0x08]
	str r1, [sp, #0x000]
	adds r1, r6, #0x0
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080ED868: .4byte 0x00000215
	thumb_func_start sub_80ED86C
sub_80ED86C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r5, r2, #0x0
	ldr r0, [r5, #0x00]
	ldr r1, [r6, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x28]
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8047364
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8047258
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	beq _080ED8B0
	movs r1, #0x86
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	movs r2, #0x87
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	ldr r3, _080ED908 @ =0x00000215
	adds r2, r4, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_080ED8B0:
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	adds r2, #0x90
	movs r3, #0x00
	ldsh r0, [r2, r3]
	adds r0, r4, r0
	ldrb r1, [r5, #0x04]
	ldr r2, [r2, #0x04]
	bl _call_via_r2
	ldr r1, [r5, #0x08]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	adds r2, r4, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	adds r1, #0x58
	adds r3, #0x94
	adds r2, r4, r3
	ldr r2, [r2, #0x00]
	ldrb r3, [r5, #0x10]
	ldrb r4, [r5, #0x0C]
	str r4, [sp, #0x000]
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080ED908: .4byte 0x00000215
	thumb_func_start sub_80ED90C
sub_80ED90C:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r5, r2, #0x0
	ldr r2, _080ED998 @ =0x03000FF8
	ldm r5!, {r1}
	lsls r1, r1, #0x03
	ldr r4, [r2, #0x00]
	adds r4, r4, r1
	ldr r0, [r0, #0x14]
	movs r1, #0x93
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _080ED99C @ =0x083D6C58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x03]
	lsls r0, r0, #0x08
	ldrb r1, [r2, #0x02]
	orrs r0, r1
	subs r2, r2, r0
	ldm r5!, {r0}
	lsls r0, r0, #0x01
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldm r5!, {r1}
	add r0, sp, #0x004
	strb r1, [r0, #0x00]
	ldrh r2, [r4, #0x00]
	lsrs r0, r2, #0x0C
	subs r0, #0x01
	ldr r1, _080ED9A0 @ =0x00000FFF
	ands r1, r2
	add r2, sp, #0x004
	ldrb r2, [r2, #0x00]
	mov r6, sp
	adds r6, #0x05
	str r6, [sp, #0x000]
	add r3, sp, #0x004
	bl sub_803FDBC
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	strb r0, [r4, #0x02]
	ldm r5!, {r0}
	strb r0, [r4, #0x03]
	ldm r5!, {r0}
	strb r0, [r4, #0x04]
	ldr r1, [r5, #0x00]
	ldrb r0, [r6, #0x00]
	eors r1, r0
	movs r0, #0x01
	ands r1, r0
	ldrb r2, [r4, #0x05]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x05]
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080ED998: .4byte 0x03000FF8
_080ED99C: .4byte 0x083D6C58
_080ED9A0: .4byte 0x00000FFF
	thumb_func_start sub_80ED9A4
sub_80ED9A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	mov r8, r1
	ldr r5, [r3, #0x04]
	ldr r6, _080ED9FC @ =0x03000FD0
	ldr r1, [r6, #0x00]
	lsls r0, r5, #0x01
	ldr r7, _080EDA00 @ =0x00000554
	adds r2, r1, r7
	adds r0, r2, r0
	ldr r1, [r3, #0x00]
	strh r1, [r0, #0x00]
	ldr r1, [r3, #0x00]
	cmp r1, #0x00
	beq _080EDA58
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_8028D6C
	cmp r5, #0x01
	bne _080EDA24
	mov r0, r8
	cmp r0, #0x00
	beq _080EDA04
	ldr r3, [r6, #0x00]
	adds r0, #0x54
	ldrb r1, [r0, #0x00]
	adds r1, #0x04
	adds r7, #0x06
	adds r3, r3, r7
	movs r0, #0x07
	ands r1, r0
	lsls r1, r1, #0x03
	ldrb r2, [r3, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _080EDA24
	.byte 0x00, 0x00
_080ED9FC: .4byte 0x03000FD0
_080EDA00: .4byte 0x00000554
_080EDA04:
	ldr r2, [r6, #0x00]
	movs r0, #0xA9
	lsls r0, r0, #0x03
	adds r1, r2, r0
	ldr r7, _080EDA50 @ =0x0000055A
	adds r2, r2, r7
	movs r0, #0x07
	ldrb r1, [r1, #0x00]
	ands r1, r0
	lsls r1, r1, #0x03
	ldrb r3, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
_080EDA24:
	ldr r6, _080EDA54 @ =0x03000FD0
	ldr r2, [r6, #0x00]
	movs r3, #0x00
	cmp r5, #0x00
	bne _080EDA30
	movs r3, #0x01
_080EDA30:
	ldr r4, _080EDA50 @ =0x0000055A
	adds r2, r2, r4
	lsls r3, r3, #0x02
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r1, [r6, #0x00]
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r1, #0x00]
	b _080EDA9A
_080EDA50: .4byte 0x0000055A
_080EDA54: .4byte 0x03000FD0
_080EDA58:
	ldr r0, [r4, #0x14]
	ldrh r1, [r2, #0x00]
	bl sub_8028D6C
	ldr r2, [r6, #0x00]
	ldr r1, _080EDAA8 @ =0x00000554
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	negs r1, r1
	ldr r4, _080EDAAC @ =0x0000055A
	adds r2, r2, r4
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x01
	ldrb r3, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r6, #0x00]
	ldr r7, _080EDAA8 @ =0x00000554
	adds r0, r2, r7
	ldrh r1, [r0, #0x00]
	negs r1, r1
	adds r2, r2, r4
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x03
	ldrb r3, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
_080EDA9A:
	movs r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EDAA8: .4byte 0x00000554
_080EDAAC: .4byte 0x0000055A
