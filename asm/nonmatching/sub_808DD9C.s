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
