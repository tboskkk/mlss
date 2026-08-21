	.include "asm/macros.inc"

	.syntax unified
	.text

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
