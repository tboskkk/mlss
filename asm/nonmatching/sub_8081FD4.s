	.syntax unified
	.text

	thumb_func_start sub_8081FD4
sub_8081FD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r3, _08082010 @ =0x03000FD8
	ldr r0, [r3, #0x00]
	ldr r1, _08082014 @ =0x000002BF
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0808200A
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r3, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl process_disable
	ldr r1, _08082018 @ =0x08081FB1
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
_0808200A:
	pop {r4}
	pop {r0}
	bx r0
_08082010: .4byte 0x03000FD8
_08082014: .4byte 0x000002BF
_08082018: .4byte sub_8081FB0
