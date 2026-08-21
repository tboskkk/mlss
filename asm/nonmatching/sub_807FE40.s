	.syntax unified
	.text

	thumb_func_start sub_807FE40
sub_807FE40:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	cmp r3, #0x00
	beq _0807FE76
	ldr r4, [r3, #0x00]
	adds r5, r3, #0x0
	adds r5, #0x08
	cmp r4, #0x00
	beq _0807FE70
	adds r2, r4, #0x0
	b _0807FE58
_0807FE56:
	adds r2, r0, #0x0
_0807FE58:
	ldr r1, [r2, #0x10]
	ldr r0, [r3, #0x04]
	cmp r1, r0
	bne _0807FE64
	ldr r0, [r2, #0x04]
	str r0, [r2, #0x10]
_0807FE64:
	ldr r0, [r2, #0x00]
	cmp r0, r3
	bne _0807FE56
	str r4, [r2, #0x00]
	movs r0, #0x00
	str r0, [r3, #0x00]
_0807FE70:
	adds r0, r5, #0x0
	bl sub_807C298
_0807FE76:
	pop {r4, r5}
	pop {r0}
	bx r0
