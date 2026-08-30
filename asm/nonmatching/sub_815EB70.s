	.syntax unified
	.text

	thumb_func_start sub_815EB70
sub_815EB70:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r5, r4, #0x4
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0815EB82
	bl sub_8021308
_0815EB82:
	ldr r0, [r5, #0x04]
	cmp r0, #0x00
	beq _0815EB8C
	bl sub_8021308
_0815EB8C:
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	beq _0815EB96
	bl sub_8021308
_0815EB96:
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	beq _0815EBA0
	bl sub_8021308
_0815EBA0:
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	beq _0815EBAA
	bl sub_8021308
_0815EBAA:
	movs r0, #0x01
	ands r0, r6
	cmp r0, #0x00
	beq _0815EBB8
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_0815EBB8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
