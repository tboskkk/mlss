	.syntax unified
	.text

	thumb_func_start sub_801AFA0
sub_801AFA0:
	push {r4, lr}
	add sp, #-0x004
	ldr r4, _0801AFDC @ =0x03000D40
	ldrb r1, [r4, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0801AFD4
	bl sub_80E9AF8
	bl sub_80E9D04
	bl sub_801BD30
	movs r0, #0x00
	str r0, [sp, #0x000]
	ldr r2, _0801AFE0 @ =0x05000001
	mov r0, sp
	adds r1, r4, #0x0
	bl CpuSet
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_0801AFD4:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0801AFDC: .4byte 0x03000D40
_0801AFE0: .4byte 0x05000001
