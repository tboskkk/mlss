	.syntax unified
	.text

	thumb_func_start sub_80F8008
sub_80F8008:
	push {lr}
	adds r3, r2, #0x0
	ldr r0, _080F8028 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x04]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	mov r12, r1
	ldm r3!, {r0}
	cmp r0, #0x00
	beq _080F802C
	cmp r0, #0x01
	beq _080F8048
	b _080F806E
_080F8028: .4byte 0x03000FD8
_080F802C:
	mov r1, r12
	adds r1, #0xD8
	ldr r0, [r3, #0x04]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r3, #0x08]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r3, #0x0C]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	b _080F806E
_080F8048:
	mov r2, r12
	adds r2, #0xD8
	ldr r1, [r3, #0x04]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	ldr r1, [r3, #0x0C]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	ldr r1, [r3, #0x08]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
_080F806E:
	movs r0, #0x01
	pop {r1}
	bx r1
