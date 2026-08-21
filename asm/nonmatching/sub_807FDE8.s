	.syntax unified
	.text

	thumb_func_start sub_807FDE8
sub_807FDE8:
	push {lr}
	adds r3, r0, #0x0
	ldr r2, [r3, #0x00]
	ldr r0, [r1, #0x00]
	cmp r2, #0x00
	beq _0807FDFA
	cmp r0, #0x00
	bne _0807FE06
	b _0807FDFC
_0807FDFA:
	adds r2, r3, #0x0
_0807FDFC:
	cmp r0, #0x00
	bne _0807FE02
	adds r0, r1, #0x0
_0807FE02:
	str r2, [r1, #0x00]
	str r0, [r3, #0x00]
_0807FE06:
	adds r2, r3, #0x0
	b _0807FE10
_0807FE0A:
	ldr r2, [r2, #0x00]
	cmp r2, r3
	beq _0807FE3C
_0807FE10:
	adds r0, r2, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807FE0A
	adds r0, r3, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807FE2C
	ldr r0, [r2, #0x04]
	str r0, [r3, #0x10]
_0807FE2C:
	adds r0, r1, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807FE3C
	ldr r0, [r2, #0x04]
	str r0, [r1, #0x10]
_0807FE3C:
	pop {r0}
	bx r0
