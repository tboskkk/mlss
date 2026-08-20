	.syntax unified
	.text

	thumb_func_start sub_8082158
sub_8082158:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldr r1, [r4, #0x4C]
	cmp r1, #0x00
	beq _08082170
	adds r0, r4, #0x0
	bl _call_via_r1
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	bne _08082174
_08082170:
	ldr r0, _0808217C @ =0x08080A41
	str r0, [r5, #0x04]
_08082174:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808217C: .4byte sub_8080A40
