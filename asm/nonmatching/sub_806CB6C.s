	.syntax unified
	.text

	thumb_func_start sub_806CB6C
sub_806CB6C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806CB86
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806CB92
_0806CB86:
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806CB92:
	ldr r0, _0806CB9C @ =0x0806C9A5
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806CB9C: .4byte sub_806C9A4
