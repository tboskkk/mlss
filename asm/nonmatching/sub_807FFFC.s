	.syntax unified
	.text

	thumb_func_start sub_807FFFC
sub_807FFFC:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	movs r6, #0x00
	ldr r4, [r7, #0x00]
	cmp r4, #0x00
	beq _0808005A
_08080008:
	ldr r5, [r4, #0x00]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	beq _08080020
	adds r0, r4, #0x0
	bl _call_via_r1
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _08080020
	adds r6, r4, #0x0
	b _08080054
_08080020:
	cmp r6, #0x00
	beq _08080030
	str r5, [r6, #0x00]
	ldr r1, _0808002C @ =0x03000FD8
	b _0808004C
	.byte 0x00, 0x00
_0808002C: .4byte 0x03000FD8
_08080030:
	ldr r0, [r7, #0x00]
	cmp r0, r4
	bne _08080040
	str r5, [r7, #0x00]
	ldr r1, _0808003C @ =0x03000FD8
	b _0808004C
_0808003C: .4byte 0x03000FD8
_08080040:
	ldr r1, _08080060 @ =0x03000FD8
_08080042:
	adds r6, r0, #0x0
	ldr r0, [r6, #0x00]
	cmp r0, r4
	bne _08080042
	str r5, [r6, #0x00]
_0808004C:
	ldr r1, [r1, #0x00]
	ldr r0, [r1, #0x3C]
	str r0, [r4, #0x00]
	str r4, [r1, #0x3C]
_08080054:
	adds r4, r5, #0x0
	cmp r4, #0x00
	bne _08080008
_0808005A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08080060: .4byte 0x03000FD8
