	.syntax unified
	.text

	thumb_func_start sub_815ECA8
sub_815ECA8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0815ECB8
	bl sub_8021308
_0815ECB8:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0815ECC2
	bl sub_8021308
_0815ECC2:
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	beq _0815ECCC
	bl sub_8021308
_0815ECCC:
	ldr r0, [r4, #0x0C]
	bl sub_8021308
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _0815ECE0
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_0815ECE0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
