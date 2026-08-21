	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_808DD9C
sub_808DD9C:
	ldr r1, _0808DDD4 @ =0x084FE9A4
	str r1, [r0, #0x6C]
	ldr r1, _0808DDD8 @ =0x03000FF4
	ldr r3, [r1, #0x00]
	adds r3, #0x3C
	movs r1, #0x77
	adds r1, r1, r0
	mov r12, r1
	ldrb r2, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r1, r2
	mov r2, r12
	strb r1, [r2, #0x00]
	ldr r1, [r0, #0x28]
	movs r2, #0x8A
	lsls r2, r2, #0x01
	adds r1, r1, r2
	ldrh r2, [r3, #0x2A]
	str r2, [r1, #0x00]
	ldr r1, _0808DDDC @ =0x0808DE45
	str r1, [r0, #0x4C]
	movs r0, #0x01
	bx lr
	.byte 0x00, 0x00
_0808DDD4: .4byte 0x084FE9A4
_0808DDD8: .4byte 0x03000FF4
_0808DDDC: .4byte sub_808DE44
	thumb_func_start sub_808DDE0
sub_808DDE0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0808DE30 @ =0x084FE8A8
	str r0, [r4, #0x6C]
	ldr r0, _0808DE34 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, [r4, #0x28]
	movs r1, #0x8A
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r2, #0x2A]
	str r1, [r0, #0x00]
	ldr r0, _0808DE38 @ =0x0808DEA9
	str r0, [r4, #0x4C]
	ldr r0, _0808DE3C @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _0808DE40 @ =0x006E1E40
	bl _call_via_r1
	subs r0, #0x58
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r4, #0xB2
	strh r0, [r4, #0x00]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0808DE30: .4byte 0x084FE8A8
_0808DE34: .4byte 0x03000FF4
_0808DE38: .4byte sub_808DEA8
_0808DE3C: .4byte 0x03001038
_0808DE40: .4byte 0x006E1E40
