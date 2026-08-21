	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F67EC
sub_80F67EC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r6, r0, #0x0
	adds r5, r2, #0x0
	movs r2, #0x00
	str r2, [sp, #0x010]
	str r2, [sp, #0x00C]
	ldr r0, [r5, #0x08]
	cmp r0, #0x00
	beq _080F6848
	movs r0, #0x00
	ldsh r1, [r5, r0]
	add r3, sp, #0x010
	str r2, [sp, #0x000]
	adds r0, r6, #0x0
	add r2, sp, #0x00C
	bl sub_80F7B1C
	ldr r2, [r5, #0x00]
	cmp r2, #0x07
	bgt _080F682C
	ldr r0, _080F6828 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F683C
	.byte 0x00, 0x00
_080F6828: .4byte 0x03000FD8
_080F682C:
	ldr r1, _080F68B8 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F683C:
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	ldr r0, [sp, #0x010]
	subs r0, r0, r1
	str r0, [sp, #0x010]
_080F6848:
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x04]
	cmp r0, #0xFF
	bne _080F6858
	ldr r0, _080F68BC @ =0x083B950C
	adds r0, r2, r0
	ldrb r0, [r0, #0x00]
	str r0, [r5, #0x14]
_080F6858:
	ldr r0, [r6, #0x28]
	ldrb r1, [r5, #0x00]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrb r3, [r5, #0x08]
	movs r7, #0x0C
	ldsh r4, [r5, r7]
	str r4, [sp, #0x000]
	movs r7, #0x10
	ldsh r4, [r5, r7]
	str r4, [sp, #0x004]
	ldrb r4, [r5, #0x14]
	str r4, [sp, #0x008]
	bl sub_80F1F7C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x3F
	beq _080F68AE
	ldr r0, [r6, #0x28]
	lsls r2, r2, #0x04
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	ldr r1, [sp, #0x00C]
	strh r1, [r0, #0x08]
	ldr r1, [sp, #0x010]
	strh r1, [r0, #0x0A]
	ldr r0, [r6, #0x28]
	ldr r1, [r0, #0x00]
	adds r1, r1, r2
	ldr r3, [r1, #0x00]
	ldrh r0, [r1, #0x08]
	ldrh r2, [r1, #0x04]
	adds r0, r0, r2
	strh r0, [r3, #0x00]
	ldrh r2, [r1, #0x0A]
	ldrh r1, [r1, #0x06]
	adds r2, r2, r1
	strh r2, [r3, #0x02]
	ldr r7, _080F68C0 @ =0x00007FFF
	adds r0, r7, #0x0
	subs r0, r0, r2
	strh r0, [r3, #0x0E]
_080F68AE:
	movs r0, #0x01
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F68B8: .4byte 0x03000FDC
_080F68BC: .4byte 0x083B950C
_080F68C0: .4byte 0x00007FFF
	thumb_func_start sub_80F68C4
sub_80F68C4:
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0x07
	bgt _080F68E8
	ldr r0, _080F68E4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	b _080F68F8
	.byte 0x00, 0x00
_080F68E4: .4byte 0x03000FD8
_080F68E8:
	ldr r1, _080F6954 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r2, r0, r1
_080F68F8:
	ldr r1, [r2, #0x08]
	cmp r1, #0x00
	beq _080F694E
	ldrb r0, [r1, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r0, r0, r4
	ldrh r1, [r1, #0x16]
	orrs r0, r1
	adds r1, r2, #0x0
	adds r1, #0x70
	strh r0, [r1, #0x00]
	ldr r0, [r2, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	adds r1, #0x02
	strh r0, [r1, #0x00]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x07
	bgt _080F694E
	ldr r0, _080F6958 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	adds r3, r2, #0x0
	adds r3, #0x76
	lsrs r1, r1, #0x1F
	ldrb r2, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080F694E:
	pop {r4}
	pop {r0}
	bx r0
_080F6954: .4byte 0x03000FDC
_080F6958: .4byte 0x03000FD8
