	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start script_cmd_btl_return
script_cmd_btl_return: @ 080F8864
	push {r4, lr}
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _080F8880
	ldr r0, _080F8894 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, _080F8898 @ =0x000002BF
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r1, #0x00]
_080F8880:
	adds r0, r3, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	bl script_cmd_return
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1
_080F8894: .4byte 0x03000FD8
_080F8898: .4byte 0x000002BF
	thumb_func_start sub_80F889C
sub_80F889C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	adds r5, r2, #0x0
	mov r12, r3
	ldr r0, [r5, #0x04]
	cmp r0, #0x00
	beq _080F88B6
	cmp r0, #0x01
	beq _080F88BC
	ldr r0, [r4, #0x2C]
	b _080F88CC
_080F88B6:
	ldr r6, [r4, #0x2C]
	adds r0, r6, #0x0
	b _080F88CC
_080F88BC:
	ldr r0, [r5, #0x08]
	lsls r0, r0, #0x08
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r1, [r4, #0x2C]
	adds r6, r1, r0
	adds r0, r1, #0x0
_080F88CC:
	adds r1, r7, #0x0
	adds r1, #0x18
	ldr r3, _080F88FC @ =0x00001794
	adds r2, r0, r3
	adds r3, r7, #0x0
	adds r3, #0xA8
	movs r4, #0x00
	ldsh r0, [r5, r4]
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldrh r4, [r0, #0x00]
	movs r0, #0x01
	ands r0, r4
	str r0, [sp, #0x004]
	mov r0, r12
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F88FC: .4byte 0x00001794
	thumb_func_start sub_80F8900
sub_80F8900:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldm r2!, {r0}
	cmp r0, #0x00
	beq _080F8912
	cmp r0, #0x01
	beq _080F8916
	b _080F8924
_080F8912:
	ldr r3, [r4, #0x2C]
	b _080F8924
_080F8916:
	ldr r0, [r2, #0x04]
	lsls r0, r0, #0x08
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r1, [r4, #0x2C]
	adds r3, r1, r0
_080F8924:
	adds r0, r3, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F8936
	ldr r0, [r2, #0x00]
	str r0, [r5, #0x00]
_080F8936:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F8940
sub_80F8940:
	push {r4, lr}
	adds r4, r0, #0x0
	ldm r2!, {r3}
	cmp r3, #0x00
	beq _080F8950
	cmp r3, #0x01
	beq _080F8954
	b _080F8960
_080F8950:
	ldr r1, [r4, #0x2C]
	b _080F8960
_080F8954:
	ldr r0, [r2, #0x00]
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, [r4, #0x2C]
	adds r1, r1, r0
_080F8960:
	ldr r0, [r1, #0x00]
	str r0, [r1, #0x04]
	adds r1, #0xA0
	movs r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0x17
_080F896C:
	lsls r0, r1, #0x10
	ldr r1, _080F8980 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	cmp r0, #0x00
	bgt _080F896C
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
_080F8980: .4byte 0xFFFF0000
	thumb_func_start sub_80F8984
sub_80F8984:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldm r2!, {r3}
	cmp r3, #0x00
	beq _080F899A
	cmp r3, #0x01
	beq _080F89B4
	b _080F89FC
_080F899A:
	ldr r4, [r5, #0x2C]
	adds r0, r5, #0x0
	adds r0, #0x1C
	ldr r2, [r2, #0x00]
	movs r1, #0x01
	str r1, [sp, #0x000]
	movs r1, #0xFF
	str r1, [sp, #0x004]
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
	b _080F89FC
_080F89B4:
	cmp r6, #0x05
	bhi _080F89FC
	lsls r0, r6, #0x08
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r1, [r5, #0x2C]
	adds r4, r1, r0
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080F89FC
	adds r0, r5, #0x0
	adds r0, #0x1C
	ldr r2, [r2, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0xFF
	str r1, [sp, #0x004]
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
	adds r3, r4, #0x0
	adds r3, #0xFD
	movs r1, #0x0F
	ands r1, r6
	ldrb r2, [r3, #0x00]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080F89FC:
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
