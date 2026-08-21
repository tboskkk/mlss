	.syntax unified
	.text

	thumb_func_start sub_80801BC
sub_80801BC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	movs r0, #0x12
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r1
	str r0, [r4, #0x08]
	ldr r3, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _080801D8
	adds r1, #0xFF
_080801D8:
	asrs r1, r1, #0x08
	cmp r0, #0x00
	bge _080801E0
	adds r0, #0xFF
_080801E0:
	asrs r2, r0, #0x08
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x0E
	bl sub_807F7BC
	ldr r0, _08080218 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0808020E
	movs r0, #0x1E
	strh r0, [r4, #0x16]
	ldr r0, _0808021C @ =0x0808027D
	str r0, [r5, #0x04]
_0808020E:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080218: .4byte 0x03000FD8
_0808021C: .4byte sub_808027C
