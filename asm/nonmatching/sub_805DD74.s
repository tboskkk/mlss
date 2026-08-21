	.syntax unified
	.text

	thumb_func_start sub_805DD74
sub_805DD74:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x14
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0805DD94
	adds r0, #0xFF
_0805DD94:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0805DDA0
	adds r0, #0xFF
_0805DDA0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0805DDAC
	adds r0, #0xFF
_0805DDAC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r1, [sp, #0x000]
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	bge _0805DDCC
	adds r0, r4, #0x0
	bl sub_807C298
_0805DDCC:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
