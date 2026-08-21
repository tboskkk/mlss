	.syntax unified
	.text

	thumb_func_start sub_8080168
sub_8080168:
	push {r4, lr}
	adds r3, r0, #0x0
	ldr r0, [r3, #0x40]
	cmp r0, #0x00
	bgt _08080176
	movs r0, #0x00
	b _0808019A
_08080176:
	adds r2, r3, #0x0
	adds r2, #0xB2
	ldrh r0, [r2, #0x00]
	subs r0, #0x5E
	movs r4, #0x00
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	cmp r0, #0x00
	bgt _08080198
	strh r4, [r2, #0x00]
	str r4, [r3, #0x18]
	movs r0, #0x00
	b _0808019A
_08080198:
	movs r0, #0x01
_0808019A:
	pop {r4}
	pop {r1}
	bx r1
